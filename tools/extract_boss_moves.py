#!/usr/bin/env python3
"""Extract a compact move table from a decompiled FromSoftware AI battle script.

Reads the decompiled ``*_battle.lua`` produced by ``decompile_all.py`` and reports:

  * every animation id each ``Act`` can queue, resolving the local variables the
    decompiler introduces (``local x = 3014`` then ``AddSubGoal(..., x)``),
  * the cooldown attached to each Act (``SetCoolTime(ai, goal, ANIM, SECONDS, ...)``),
  * HP gates and distance comparisons used to build the weight table,
  * dispatch goals: bosses often start at a small "Switch" script that picks a
    different script by SpEffect. With ``--dump`` those children are resolved to
    file paths so you can follow the chain.

This is a reading aid, not a source of truth: decompilation occasionally loses a
branch (see docs/guide.md section 7). Verify anything surprising in the file
itself or in game.

Examples
--------
    python scripts/extract_boss_moves.py dump/m51_00_00_00/621100_battle.lua
    python scripts/extract_boss_moves.py dump/m40_00_00_00/528000_battle.lua --dump dump
"""

from __future__ import annotations

import argparse
import json
import os
import re
import sys

FUNC_START = re.compile(r"^function\s+(\w+)\s*\(")
LOCAL_NUM = re.compile(r"^\s*local\s+(\w+)\s*=\s*(-?\d+(?:\.\d+)?)\s*$")
LOCAL_HP = re.compile(r"^\s*local\s+(\w+)\s*=\s*\w+:GetHpRate\(TARGET_SELF\)")
LOCAL_DIST = re.compile(r"^\s*local\s+(\w+)\s*=\s*\w+:GetDist\(TARGET_ENE_0\)")
LOCAL_RAND = re.compile(r"^\s*local\s+(\w+)\s*=\s*\w+:GetRandam_Int\(")
COOL = re.compile(r"\[(\d+)\]\s*=\s*SetCoolTime\(\s*\w+\s*,\s*\w+\s*,\s*(\d+)\s*,\s*(\d+)")
WEIGHT = re.compile(r"^\s*\w+\[(\d+)\]\s*=\s*(\d+)\s*$")
CONST = re.compile(r"^\s*(GOAL_\w+)\s*=\s*(\d+)\s*$")


def split_args(text: str) -> list[str]:
    out, depth, cur = [], 0, ""
    for ch in text:
        if ch in "([{":
            depth += 1
        elif ch in ")]}":
            depth -= 1
        if ch == "," and depth == 0:
            out.append(cur.strip())
            cur = ""
        else:
            cur += ch
    if cur.strip():
        out.append(cur.strip())
    return out


def parse_file(path: str) -> dict:
    lines = open(path, encoding="utf-8", errors="replace").read().splitlines()

    acts: dict[int, dict] = {}
    hp_gates: set[str] = set()
    dist_buckets: set[str] = set()
    dispatch: list[str] = []
    cooldown: dict[int, tuple[int, int]] = {}
    weights: dict[int, int] = {}

    func_name: str | None = None
    locals_: dict[str, object] = {}

    def act_index(name: str | None) -> int | None:
        if not name:
            return None
        m = re.search(r"Act(\d+)$", name)
        return int(m.group(1)) if m else None

    for raw in lines:
        fm = FUNC_START.match(raw)
        if fm:
            func_name = fm.group(1)
            locals_ = {}
            idx = act_index(func_name)
            if idx is not None:
                acts.setdefault(idx, {"anim": set(), "goals": set()})
            continue
        if raw.startswith("end"):
            func_name = None

        m = LOCAL_NUM.match(raw)
        if m:
            locals_[m.group(1)] = float(m.group(2)) if "." in m.group(2) else int(m.group(2))
            continue
        m = LOCAL_HP.search(raw)
        if m:
            locals_[m.group(1)] = "hp"
            continue
        m = LOCAL_DIST.search(raw)
        if m:
            locals_[m.group(1)] = "dist"
            continue
        m = LOCAL_RAND.search(raw)
        if m:
            locals_[m.group(1)] = "rand"
            continue

        m = COOL.search(raw)
        if m:
            cooldown[int(m.group(1))] = (int(m.group(2)), int(m.group(3)))
        m = WEIGHT.match(raw)
        if m and int(m.group(1)) < 99:
            weights.setdefault(int(m.group(1)), int(m.group(2)))

        if "AddSubGoal(" in raw:
            inner = raw[raw.index("AddSubGoal(") + len("AddSubGoal("):]
            args = split_args(inner.split(")")[0] if ")" in inner else inner)
            goal = args[0] if args else ""
            if goal.startswith("GOAL_") and len(args) >= 2 and args[1].strip() == "-1":
                dispatch.append(goal)
            idx = act_index(func_name)
            if idx is not None and len(args) >= 3:
                token = args[2].strip()
                value = locals_.get(token)
                if value is None:
                    try:
                        value = int(token)
                    except ValueError:
                        value = None
                if isinstance(value, int):
                    acts.setdefault(idx, {"anim": set(), "goals": set()})
                    acts[idx]["anim"].add(value)
                    acts[idx]["goals"].add(goal)

        for name, kind in list(locals_.items()):
            if kind == "hp":
                for mm in re.finditer(rf"\b{name}\s*(<=|>=|<|>)\s*([\d.]+)", raw):
                    hp_gates.add(f"HP {mm.group(1)} {mm.group(2)}")
                for mm in re.finditer(rf"([\d.]+)\s*(<=|>=|<|>)\s*{name}\b", raw):
                    hp_gates.add(f"HP {mm.group(2)} {mm.group(1)}")
            elif kind == "dist":
                for mm in re.finditer(rf"\b{name}\s*(<=|>=|<|>)\s*(-?[\d.]+)", raw):
                    dist_buckets.add(f"{name} {mm.group(1)} {mm.group(2)}")
                for mm in re.finditer(rf"(-?[\d.]+)\s*(<=|>=|<|>)\s*{name}\b", raw):
                    dist_buckets.add(f"{name} {mm.group(2)} {mm.group(1)}")

    return {
        "file": path.replace("\\", "/"),
        "acts": {str(k): {"anim": sorted(v["anim"]), "goals": sorted(v["goals"])} for k, v in sorted(acts.items())},
        "cooldowns": {str(k): {"anim": v[0], "seconds": v[1]} for k, v in sorted(cooldown.items())},
        "weights": {str(k): v for k, v in sorted(weights.items())},
        "hp_gates": sorted(hp_gates),
        "dist_buckets": sorted(dist_buckets),
        "dispatch": sorted(set(dispatch)),
    }


def goal_constants(dump: str) -> dict[str, int]:
    consts: dict[str, int] = {}
    for root, _dirs, files in os.walk(dump):
        for name in files:
            if name.startswith("goal_list") and name.endswith(".lua"):
                for line in open(os.path.join(root, name), encoding="utf-8", errors="replace"):
                    m = CONST.match(line)
                    if m:
                        consts.setdefault(m.group(1), int(m.group(2)))
    return consts


def goal_files(dump: str, consts: dict[str, int]) -> dict[int, str]:
    mapping: dict[int, str] = {}
    reg = re.compile(r"^RegisterTableGoal\(\s*(GOAL_\w+)\s*,")
    for root, _dirs, files in os.walk(dump):
        rel_dir = os.path.relpath(root, dump).replace("\\", "/")
        if rel_dir.startswith("."):
            continue
        for name in sorted(files):
            if not name.endswith(".lua"):
                continue
            rel = name if rel_dir == "." else f"{rel_dir}/{name}"
            for line in open(os.path.join(root, name), encoding="utf-8", errors="replace"):
                m = reg.match(line)
                if m and m.group(1) in consts:
                    mapping.setdefault(consts[m.group(1)], rel)
    return mapping


def resolve_chain(path: str, dump: str | None, consts: dict[str, int] | None = None,
                  g2f: dict[int, str] | None = None, depth: int = 0, seen: set | None = None) -> list[dict]:
    seen = seen if seen is not None else {os.path.abspath(path)}
    info = parse_file(path)
    chain = [info]
    if not dump or depth >= 3:
        return chain
    if consts is None:
        consts = goal_constants(dump)
    if g2f is None:
        g2f = goal_files(dump, consts)
    for goal in info["dispatch"]:
        target = g2f.get(consts.get(goal, -1))
        if not target:
            continue
        full = os.path.abspath(os.path.join(dump, target.replace("/", os.sep)))
        if full in seen or not os.path.exists(full):
            continue
        seen.add(full)
        chain.extend(resolve_chain(full, dump, consts, g2f, depth + 1, seen))
    return chain


def summarize(info: dict, dump: str | None = None) -> str:
    name = info["file"]
    if dump:
        try:
            name = os.path.relpath(info["file"], dump).replace("\\", "/")
        except ValueError:
            pass
    out = [f"### `{name}`", ""]
    meta = []
    if info["hp_gates"]:
        meta.append("HP gates: " + ", ".join(sorted(set(info["hp_gates"]))))
    if info["dist_buckets"]:
        meta.append("distance comparisons: " + ", ".join(sorted(set(info["dist_buckets"]))[:8]))
    if info["dispatch"]:
        meta.append("dispatches to: " + ", ".join(info["dispatch"]))
    if meta:
        out += [f"*{m}*  " for m in meta]
        out.append("")
    out.append("| Act | animation ids | cooldown |")
    out.append("|---|---|---|")
    for idx, act in info["acts"].items():
        anims = ", ".join(map(str, act["anim"])) or "-"
        cool = info["cooldowns"].get(idx)
        out.append(f"| {idx} | {anims} | {cool['seconds']} s |" if cool else f"| {idx} | {anims} | - |")
    return "\n".join(out)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("file", nargs="?", help="decompiled *_battle.lua")
    ap.add_argument("--dump", help="dump root, used to resolve dispatch goals to files")
    ap.add_argument("--json", action="store_true", help="emit JSON instead of markdown")
    args = ap.parse_args()
    if not args.file:
        ap.print_help()
        return 2
    if not os.path.exists(args.file):
        print(f"error: {args.file} not found", file=sys.stderr)
        return 2
    chain = resolve_chain(args.file, args.dump)
    if args.json:
        print(json.dumps(chain, indent=2, ensure_ascii=False))
    else:
        print("\n\n".join(summarize(info, args.dump) for info in chain))
    return 0


if __name__ == "__main__":
    sys.exit(main())
