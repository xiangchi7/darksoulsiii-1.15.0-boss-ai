#!/usr/bin/env python3
"""Unpack Dark Souls III AI script bundles and decompile them to readable Lua.

Dark Souls III stores its enemy/boss AI as Lua 5.0 bytecode inside
``<Game>/script/*.luabnd.dcx``. This script

  1. copies each ``*.luabnd.dcx`` into a work directory,
  2. unpacks it with WitchyBND (``<bundle>-luabnd-dcx/out/bin/*.lua``),
  3. decompiles every bytecode file with DSLuaDecompiler,

and writes the result to ``<out>/<bundle>/<file>.lua``.

External tools (not bundled here, get them yourself):
  * WitchyBND           https://github.com/ividyon/WitchyBND        (unpacks .luabnd.dcx)
  * DSLuaDecompiler     https://github.com/katalash/DSLuaDecompiler (Lua 5.0 -> source)

Example
-------
    python scripts/decompile_all.py \
        --game "D:/steam/steamapps/common/DARK SOULS III/Game" \
        --witchy "D:/tools/WitchyBND-3.0.1.0-win-x64/WitchyBND.exe" \
        --decompiler "tools/DSLuaDecompiler/DSLuaDecompiler.dll" \
        --out dump

Notes
  * WitchyBND does nothing when handed a directory; it must be called per file.
  * The prebuilt DSLuaDecompiler targets .NET 9. If only a newer runtime is
    installed, DOTNET_ROLL_FORWARD=LatestMajor (set below) makes it run anyway.
  * A full run is ~1100 files and takes roughly 20 minutes.
"""

from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
import time

BIN_SUBDIR = os.path.join("out", "bin")


def run(cmd: list[str], env: dict[str, str] | None = None) -> tuple[int, str]:
    proc = subprocess.run(cmd, capture_output=True, text=True, errors="replace", env=env)
    return proc.returncode, (proc.stdout or "") + (proc.stderr or "")


def decompiler_command(path: str) -> list[str]:
    """Accept either the .exe apphost or the .dll (run through dotnet)."""
    if path.lower().endswith(".dll"):
        return ["dotnet", path]
    return [path]


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--game", required=True, help="path to the DARK SOULS III/Game folder (unpacked with UXM)")
    ap.add_argument("--witchy", required=True, help="path to WitchyBND.exe")
    ap.add_argument("--decompiler", required=True, help="path to DSLuaDecompiler.exe or DSLuaDecompiler.dll")
    ap.add_argument("--out", default="dump", help="output directory (default: dump)")
    ap.add_argument("--work", default=None, help="scratch directory for unpacked bundles (default: <out>/.work)")
    ap.add_argument("--only", default=None, help="only process bundles whose name contains this substring")
    ap.add_argument("--force", action="store_true", help="re-decompile files that already exist")
    args = ap.parse_args()

    script_dir = os.path.join(args.game, "script")
    if not os.path.isdir(script_dir):
        print(f"error: {script_dir} not found - is the game unpacked with UXM?", file=sys.stderr)
        return 2

    bundles = sorted(f for f in os.listdir(script_dir) if f.endswith(".luabnd.dcx"))
    if args.only:
        bundles = [b for b in bundles if args.only in b]
    if not bundles:
        print("error: no .luabnd.dcx bundles matched", file=sys.stderr)
        return 2

    work = args.work or os.path.join(args.out, ".work")
    os.makedirs(work, exist_ok=True)
    os.makedirs(args.out, exist_ok=True)

    env = dict(os.environ)
    env.setdefault("DOTNET_ROLL_FORWARD", "LatestMajor")

    dec = decompiler_command(os.path.abspath(args.decompiler))
    witchy = os.path.abspath(args.witchy)

    total = done = failed = 0
    started = time.time()

    for index, bundle in enumerate(bundles, 1):
        parts = bundle.split(".")          # aicommon . luabnd . dcx
        bundle_id = parts[0]
        fmt = parts[1] if len(parts) > 2 else "luabnd"
        out_dir = os.path.join(args.out, bundle_id)
        os.makedirs(out_dir, exist_ok=True)

        local = os.path.join(work, bundle)
        if not os.path.exists(local):
            shutil.copy2(os.path.join(script_dir, bundle), local)

        code, log = run([witchy, local], env)
        unpacked = os.path.join(work, f"{bundle_id}-{fmt}-dcx")
        if not os.path.isdir(unpacked):
            # WitchyBND names the output folder after the input file, beside it
            candidates = [d for d in os.listdir(work) if d.startswith(bundle_id) and d.endswith(f"-{fmt}-dcx")]
            unpacked = os.path.join(work, candidates[0]) if candidates else unpacked
        bin_dir = os.path.join(unpacked, BIN_SUBDIR)
        if not os.path.isdir(bin_dir):
            print(f"[{index}/{len(bundles)}] {bundle_id}: unpack failed\n{log.strip()[:400]}", file=sys.stderr)
            failed += 1
            continue

        files = sorted(f for f in os.listdir(bin_dir) if f.endswith(".lua"))
        for name in files:
            total += 1
            target = os.path.join(out_dir, name)
            if os.path.exists(target) and not args.force:
                done += 1
                continue
            code, out = run(dec + [os.path.join(bin_dir, name), "-o", target], env)
            if code != 0 or not os.path.exists(target) or os.path.getsize(target) == 0:
                print(f"  failed: {bundle_id}/{name}\n{out.strip()[:400]}", file=sys.stderr)
                failed += 1
            else:
                done += 1
        print(f"[{index}/{len(bundles)}] {bundle_id}: {len(files)} files  ({done} ok, {failed} failed)")

    elapsed = time.time() - started
    print(f"\n{len(bundles)} bundles, {total} scripts, {done} decompiled, {failed} failed, {elapsed / 60:.1f} min")
    print(f"output: {os.path.abspath(args.out)}")
    return 0 if failed == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
