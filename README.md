# Dark Souls III boss AI source

**26 fights with a health bar: the code that decides "what does it do next", decompiled into readable Lua, with a guide to reading it.**

Every boss fight in Dark Souls III decides its next attack in a Lua script — not in the behaviour graph, and not in the params. This repository contains the decompiled AI script for all 26 boss fights (base game + both DLCs), an index that maps each fight to the file that drives it, and a guide to reading them: distance tiers, weight tables, cooldowns, combo sequencing, interrupt handlers, and how phase transitions are implemented. Extraction was done with WitchyBND + DSLuaDecompiler from a retail copy of the game. Files mirror the game's own `Game/script/` layout, so they can be dropped back in after editing.

This is not a mod and contains no executables, models or textures: the repository holds only the AI scripts decompiled from the game's `script/*.luabnd.dcx`, an index, a guide to reading them, and a decompiler. Use it to understand the AI or to change it.

---

## What is in here

```
index.tsv              index of the 26 fights: name / think id / script paths / phase / acts / cooldowns / HP gates
README.md              this file
docs/guide.md          the full mechanics: the four layers, weight tables, cooldowns, rolls, combos,
                       the interrupt layer, phase dispatch, and the four-step reading method
docs/boss-list.md      per-fight notes for all 26 (script, distance tiers, cooldowns, HP gates, gotchas)
docs/midir.md          one complete teardown (Darkeater Midir), as a worked example
scripts/               67 scripts, directory layout copied from the game's Game/script/ (drop-in ready)
tools/DSLuaDecompiler/ the decompiler (katalash, MIT), for verifying these files or decompiling others
tools/decompile.cmd    single-file decompile wrapper (handles the .NET runtime version for you)
tools/decompile_all.py batch unpack + decompile (use it to decompile all 29 bundles)
tools/extract_boss_moves.py  scan one script and list each Act's animation ids / cooldowns / conditions
```

Scripts use only three kinds of filename, so the name tells you what the file is:

| Filename | What it is |
|---|---|
| `<id>_battle.lua` | battle AI, **the attack decision lives here** |
| `<id>_logic.lua` | non-combat AI (patrol, idle); it mostly just mounts the battle goal |
| `common_*.lua`, `goal_list.lua` | shared function library and goal constant table, referenced by the two above |

---

## Three-minute walkthrough: Iudex Gundyr

**1. Find the file.** Search `index.tsv` for "Gundyr", or read the table further down: `scripts/m40_00_00_00/511000_battle.lua`.

**2. Look at the entry point first.** It is a 14-line `Switch`:

```lua
Goal.Activate = function (ai, goal)
    if ai:HasSpecialEffectId(TARGET_SELF, 5404) and ai:GetNpcThinkParamID() == 511100 == false then
        goal:AddSubGoal(GOAL_Gunda_511000_HU_Battle, -1)   -- pus of man (phase 2)
    else
        goal:AddSubGoal(GOAL_Gunda_511000_Battle, -1)
    end
end
```

**3. Go into the real battle script.** `scripts/aicommon/Gunda_battle.lua`, and look at three places:

```lua
Goal.Activate = function (ai, goal)          -- (1) the weight table, filled in each time it needs to act
    if ai:GetHpRate(TARGET_SELF) <= 0.55 ... then      w[50] = 100
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then w[6]=70; w[20]=30
    elseif InsideRange(ai, goal, 105, 60, -1, 3) then  w[4]=55; w[5]=45
    elseif dist >= 10 then                            w[1]=75; w[2]=25
    ...
    w[1] = SetCoolTime(ai, goal, 3000, 10, w[1], 1)    -- (2) cooldown: the weight drops to 1, not to 0
    Common_Battle_Activate(ai, goal, w, actFuncs, ...)  -- (3) weighted roll; whichever Act wins, runs
```

```lua
function GundaBattle_Act01(ai, goal)         -- (4) each Act is one "move", usually a combo string
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3000, TARGET_ENE_0, 8.5)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3001, TARGET_ENE_0, 4.5)
    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3029, TARGET_ENE_0, 5.2)
end
```

**4. Turn the numbers into move names.** `3000`, `3029` and friends are **animation ids**, not move names. Load the character in DS Anim Studio (`chr/cXXXX.anibnd.dcx`, `XXXX = think id / 100`, so Gundyr is `c5110`), find 3000–3039 in the TAE animation list, and play each one. The animation filenames themselves look like `a00X_003014.hkx`; the last six digits are the number used in the script.

---

## Six concepts (this is all you need to read any boss)

| Concept | What it looks like | What it means |
|---|---|---|
| Weight table | `w[12] = 10` | Filled in each time the AI has to act, from distance / angle / HP / SpEffect; the order of the `if` chain is the priority |
| Cooldown | `SetCoolTime(ai, goal, anim_id, seconds, weight, floor)` | While cooling down the weight drops to the floor, which for most bosses is **1** (rare, not impossible); a few pass 0 to block it outright |
| Roll | `GetRandam_Int(1, total_weight)` accumulated | Weights are ratios, not percentages; who comes first at equal weight does not matter, only the ratio does |
| Combo | `ComboAttackTunableSpin → ComboRepeat → ComboFinal` | One Act is a string; each segment carries its own max distance, so if you back off the later segments are skipped |
| Interrupt | `Goal.Interrupt` + `INTERUPT_UseItem` / `_Shoot` / `_Damaged` | The truth behind "the boss reads your inputs": it interrupts on state changes such as **you drinking, shooting, or being hit** |
| Phase | `HasSpecialEffectId(TARGET_SELF, 5404)` | Phase two is not a flag: after an SpEffect check the AI **swaps in an entirely different script** (that is how Soul of Cinder's five weapon forms switch) |

---

## The 26 fights

| Boss | Script (relative to `scripts/`) | Phase / dispatch |
|---|---|---|
| Iudex Gundyr | `m40_00_00_00/511000_battle.lua` → `Gunda_battle.lua`, `Gunda_HU_battle.lua` | switch: SpEffect 5404 -> Gunda_HU_Battle (pus of man phase) |
| Vordt of the Boreal Valley | `m30_00_00_00/224000_battle.lua` | direct: HP<=0.6 -> act 25/26 |
| Curse-rotted Greatwood | `m31_00_00_00/518010_battle.lua` → `GiantTree_battle.lua`, `GiantTree_HU_battle.lua` | switch: SpEffect 5404 -> GiantTree_HU_Battle |
| Crystal Sage | `m33_00_00_00/132000_battle.lua` → `132050_battle.lua` | direct: HP<=0.6 gate; the clone uses 132050 |
| Deacons of the Deep | `m35_00_00_00/522000_battle.lua` | direct: only 6 Acts |
| Abyss Watchers | `m33_00_00_00/304000_battle.lua` → `304010_battle.lua`, `304020_battle.lua` | direct: one script per individual |
| High Lord Wolnir | `m38_00_00_00/516000_battle.lua` → `SkeletonKingDefault_Battle.lua`, `SkeletonKingHeatUp_Battle.lua` | switch: SpEffect 5404 -> SkeletonKing_HeatUp_Battle |
| Old Demon King | `m38_00_00_00/305000_battle.lua` | direct |
| Yhorm the Giant | `m33_00_00_00/526000_battle.lua` | direct: HP<=0.4 / HP>=0.3 |
| Pontiff Sulyvahn | `m37_00_00_00/514000_battle.lua` → `514010_battle.lua` | direct: the clone has its own script |
| Aldrich, Devourer of Gods | `m37_00_00_00/515000_battle.lua` | direct: HP<=0.65 / 0.6 |
| Dancer of the Boreal Valley | `m30_00_00_00/527000_battle.lua` → `PursuitHeroine_battle.lua`, `PursuitHeroine_HU_battle.lua` | switch: SpEffect 5404 -> PursuitHeroine_HU_Battle |
| Dragonslayer Armour | `m30_01_00_00/316000_battle.lua` | direct |
| Oceiros, the Consumed King | `m30_00_00_00/209000_battle.lua` → `DragonAngel_battle.lua`, `DragonAngel_HU_battle.lua` | switch: SpEffect 5404 -> DragonAngel_HU_Battle |
| Champion Gundyr | `m40_00_00_00/511000_battle.lua` → `Gunda_battle.lua`, `Gunda_HU_battle.lua` | switch: Champion Gundyr skips the HU branch |
| Ancient Wyvern | `m32_00_00_00/314000_battle.lua` → `314010_battle.lua`, `314020_battle.lua` | direct: heavy map-region testing |
| Nameless King | `m32_00_00_00/501000_battle.lua` → `503000_battle.lua` | direct: two bodies, Nameless King + King of the Storm |
| Lorian & Lothric | `m34_00_00_00/525000_battle.lua` → `525100_battle.lua` | direct: one script for the elder, one for the younger |
| Soul of Cinder | `m40_00_00_00/528000_battle.lua` → `LastBoss_CurvedBlade_battle.lua`, `LastBoss_Gwyn_battle.lua`, `LastBoss_LargeSword_battle.lua`, `LastBoss_Magician_battle.lua`, `LastBoss_PiercingSword_battle.lua` | switch: SpEffect 5404-5408 -> five weapon forms |
| Sister Friede | `aicommon/602000_battle.lua` → `602010_battle.lua` | one script per phase (602010 = blackflame) |
| Father Ariandel | `m45_00_00_00/601000_battle.lua` | direct: HP<=0.6 / >=0.6 |
| Gravetender's Greatwolf | `m45_00_00_00/603000_battle.lua` | direct: HP<=0.6 / 0.3 |
| Demon Prince | `m38_00_00_00/502000_battle.lua` → `502100_battle.lua`, `502200_battle.lua` | direct: one for the body, one for the orb form |
| Halflight, Spear of the Church | `aicommon/021800_battle.lua` | direct: player template, moves use `NPC_ATK_*` symbols |
| Darkeater Midir | `m51_00_00_00/621100_battle.lua` → `621000_battle.lua` | direct: half HP forces 3014; the bridge fight has its own script |
| Slave Knight Gael | `m51_00_00_00/620000_battle.lua` → `620100_battle.lua` | one script per phase |

The full field set (think ids, Act count, longest cooldown, HP gates) is in `index.tsv`; one paragraph per fight is in `docs/boss-list.md`.

---

## Decompiling scripts that are not included

The repository ships the 67 scripts the 26 bosses use. To decompile other enemies, or all 29 bundles:

```bash
python tools/decompile_all.py --game "<your game>/Game" --witchy <WitchyBND.exe> \
    --decompiler tools/DSLuaDecompiler/DSLuaDecompiler.dll --out dump
```

Prerequisites: your install is already unpacked with UXM (so `Game/script/` holds loose `*.luabnd.dcx`), and you have downloaded WitchyBND. Single file: `tools/decompile.cmd <bytecode.lua> -o <output.lua>`.

---

## Modifying the AI (advanced, with landmines)

1. Edit the `.lua` files directly.
2. **You must compile back to Lua 5.0 bytecode** — the game reads bytecode, not source. This repository only ships the decompiler; the compiler is the `LuaCompiler` project in the upstream [DSLuaDecompiler](https://github.com/katalash/DSLuaDecompiler) repository and has to be built yourself.
3. Repack the edited lua into `*.luabnd.dcx` with [WitchyBND](https://github.com/ividyon/WitchyBND) and put it back under `Game/script/` (back up the originals first).

An easier route for most things: damage and poise damage never touch the scripts — edit `AtkParam_Npc`; "when does the phase start" lives in `event/*.emevd`, the AI merely reads the SpEffect it applies. **Play offline with any script change; do not go online.**

---

## Scope and caveats

* **Bosses only**: the 26 fights with a health bar. Enemy, white phantom and invader AI is not in here.
* **Animation id ≠ move name**: this repository does not name moves for you; match the ids in DS Anim Studio or against footage.
* **Decompilation is not byte-perfect**: control flow and constants are accurate, but a function occasionally comes back as an empty branch (the post-attack spacing goal in Midir's script is one example). Re-check any conclusion against the original file before you rely on it.
* **Scripts carry no timing**: frame data, i-frames and cancel windows live in the TAE; the AI only decides **which move**.
* **Provenance and copyright**: these `.lua` files are game data decompiled from the retail release of Dark Souls III and belong to FromSoftware / Bandai Namco; this repository claims no license over them. They are published for study and research. If you are a rights holder and want them removed, open an issue or send an email and they will be deleted immediately. The repository's own prose and tooling are MIT.
* **Judge for yourself before republishing**: bundling these scripts into a public mod download, or redistributing them as-is, is your own call and your own risk.

---

## Sources

* [katalash/DSLuaDecompiler](https://github.com/katalash/DSLuaDecompiler) — the decompiler (MIT; `tools/DSLuaDecompiler/LICENSE-DSLuaDecompiler.txt` is its full licence).
* [ividyon/WitchyBND](https://github.com/ividyon/WitchyBND) — unpacks/repacks `luabnd`; bring your own.
* [JKAnderson/UXM](https://github.com/JKAnderson/UXM) — unpacks the game archives; bring your own.
* [soulsmods/Paramdex](https://github.com/soulsmods/Paramdex) — param definitions and the `NpcThinkParam` name table.
* [The Souls Modding Wiki's Lua AI function manual](https://soulsmodding.wikidot.com/reference:lua-ai-function-respository) — the closest thing to official documentation for these APIs; worth reading alongside this repository.
