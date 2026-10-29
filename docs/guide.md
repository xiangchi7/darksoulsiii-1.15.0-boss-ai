# How a Souls III boss decides its next move

Scope: retail PC release 1.15.x. Everything below comes from the game's own files; the code excerpts are from the decompiled scripts and are only there to illustrate the mechanism.

- [1. The four layers](#1-the-four-layers)
- [2. The decision function](#2-the-decision-function)
- [3. What those numbers are](#3-what-those-numbers-are)
- [4. Reading one boss in four steps](#4-reading-one-boss-in-four-steps)
- [5. Reproducing the dump (and the landmines)](#5-reproducing-the-dump-and-the-landmines)
- [6. The index file](#6-the-index-file)
- [7. Known limitations](#7-known-limitations)

---

## 1. The four layers

An enemy in Souls III is made of four parts: a body, a behaviour graph, a set of animations, and a "brain". Only the last one is AI, and it does not live in the same file as the other three.

| # | Layer | Location | Responsible for |
|---|---|---|---|
| 1 | Params | `Data0.bdt` → `NpcParam`, `NpcThinkParam`, `BehaviorParam`, `AtkParam_Npc`, `Bullet` | values and **pointers**. `NpcThinkParam.battleGoalId` points at the battle script, `logicId` at the non-combat script; also sight/hearing distance, `nearDist`/`midDist`/`farDist`, `BattleStartDist`, retreat distance and more |
| 2 | **AI script** | `script/aicommon.luabnd.dcx`, `script/mXX_XX_XX_XX.luabnd.dcx` | **the decision itself**. Compiled Lua 5.0 bytecode: weight tables, random rolls, combo sequencing, reaction triggers |
| 3 | Behaviour / animation | `chr/cXXXX.behbnd.dcx` (Havok behaviour graph), `chr/cXXXX.anibnd.dcx` → `*.tae` | plays the moves the script names; animation events (`InvokeAttackBehavior`, i-frames, cancel windows) are attached here |
| 4 | Hit detection / damage | `BehaviorParam` → `AtkParam_Npc`, `Bullet` | what happens once something connects |

Two practical corollaries:

* **The behaviour graph is not the brain, it is the animation state machine.** Changing it changes "how this move plays and blends", not "when it gets chosen".
* **The chr bundle id comes from the npc id**: `chr/cXXXX`, where `XXXX = NpcParam id / 100`. Midir `621100` → `chr/c6211.*`, and his `.tae` (i.e. the move ids) are in there.

All AI bundles share one naming scheme, so the filename tells you the type:

| File | What it is |
|---|---|
| `<id>_battle.lua` | battle AI (this is what `battleGoalId` points at) |
| `<id>_logic.lua` | non-combat AI: patrol, idle, dialogue |
| `<id>_platoon.lua` | squad / formation coordination |
| `common_*.lua`, `goal_list.lua` | shared function library and goal constant table |

`*_logic.lua` is mostly a shell: it reads `battleGoalID` out of the params and mounts it as a top-level goal. All the interesting behaviour is in `*_battle.lua`.

## 2. The decision function

### 2.1 Every time it needs to act, it fills in a weight table

The battle goal's `Goal.Activate` is called whenever the AI has to pick its next move. It builds a table of `w[move] = weight`, and its branch conditions are the entire "thought process" of that AI — HP ratio, which think-param variant is running, SpEffect state on the player, the player's angle, and distance tiers:

```lua
if ai:GetHpRate(TARGET_SELF) <= 0.55 and ... then      w[50] = 100   -- crossed a phase line
elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
                                                       w[6] = 70; w[20] = 30
elseif InsideRange(ai, goal, 105, 60, -1, 3) then      w[4] = 55; w[5] = 45
elseif dist >= 10 then                                 w[1] = 75; w[2] = 25
else                                                   w[3] = 20; w[7] = 25; w[9] = 25
end
if ai:HasSpecialEffectAttribute(TARGET_ENE_0, SP_EFFECT_TYPE_TARGET_DOWN) then
    w[21] = w[21] + 300                                -- you are on the floor: chase
end
```

(Iudex Gundyr, `aicommon/Gunda_battle.lua`, excerpt.)

Weights are integers and are never normalised; only the ratio matters. The branches are mutually exclusive — the first condition that hits wins — so **the order of the `if` chain is itself the priority**.

### 2.2 Cooldowns are implemented by shrinking the weight

```lua
function SetCoolTime(ai, goal, attack_id, cooldown_seconds, weight, floor_value)
    if weight <= 0 then return 0
    elseif ai:GetAttackPassedTime(attack_id) <= cooldown_seconds then return floor_value
    end
    return weight
end
```

Called as `w[1] = SetCoolTime(ai, goal, 3000, 10, w[1], 1)`: within 10 seconds of using move 3000 it is suppressed. Note the last argument — a "cooldown" usually **drops the weight to 1, not to 0**, i.e. "unlikely" rather than "impossible". Some bosses do pass `0`, and only that really blocks it.

### 2.3 The roll

```lua
local total = 0
for i = 1, 99 do total = total + weights[i] end
local roll = ai:GetRandam_Int(1, total)      -- 1..total, inclusive
local acc = 0
for i = 1, 99 do
    acc = acc + weights[i]
    if roll <= acc then act = acts[i](); break end
end
```

(`aicommon/common_battle_func.lua`, `Common_Battle_Activate`, condensed.)

So the flow for every move is: branch on state → scale by cooldown → roll once on accumulated weights → run the `ActNN` that won. With the debug menu up, `DbgGetForceActIdx()` bypasses the roll entirely and forces move N — very useful when testing a single move.

### 2.4 An Act is a combo string, not a single swing

Inside an `ActNN` function there is a second, independent roll that picks the combo variant, and then sub-goals with distance limits lay the segments out:

```lua
local r = ai:GetRandam_Int(1, 100)
if r <= 30 then
    goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 8.5)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 4.5)
    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3026, TARGET_ENE_0, 5.2)
elseif r <= 60 then ...
```

`ComboAttackTunableSpin` / `ComboTunable_SuccessAngle180` is always the first segment (turn to face you, then swing), the middle is `ComboRepeat`, the last is `ComboFinal`. Each segment carries a max distance: back off far enough and the remaining segments are skipped — that is why "combos end early".

### 2.5 The interrupt layer

`Goal.Interrupt` can abandon the current plan mid-action and cut in something else. The triggers are a fixed set belonging to the engine:

| Trigger | When |
|---|---|
| `INTERUPT_Damaged` | it takes damage |
| `INTERUPT_UseItem` | **you use an item** (the Estus flask — "you always get hit while drinking" is this code) |
| `INTERUPT_Shoot` | you fire / cast |
| `INTERUPT_ActivateSpecialEffect` | one of its own SpEffects that it is observing activates (used for combo cancels) |
| `INTERUPT_TargetOutOfAngle` / `INTERUPT_TargetOutOfRange` / `INTERUPT_FindAttack` | the target leaves the observed cone / range, or an observed attack begins |
| `INTERUPT_Inside_ObserveArea` | the target enters an observed map region |

The handler is usually `goal:ClearSubGoal()` followed by a counter-move, sometimes wrapped in another random. That is the real version of "the AI reads your inputs": it does not read your controller, it reacts to **state changes** the engine publishes.

### 2.6 Phases and form changes

A boss's "phase two" is not a flag in the script that flips over time; it is an `SpEffect` check that dispatches to **a different script entirely**. Soul of Cinder's whole weapon-form switching is about a dozen lines:

```lua
Goal.Activate = function (ai, goal)
    if ai:HasSpecialEffectId(TARGET_SELF, 5408) then      goal:AddSubGoal(GOAL_LastBoss_Gwyn_Battle, -1)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 5407) then  goal:AddSubGoal(GOAL_LastBoss_Magician_Battle, -1)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 5405) then  goal:AddSubGoal(GOAL_LastBoss_CurvedBlade_Battle, -1)
    elseif ai:HasSpecialEffectId(TARGET_SELF, 5404) then  goal:AddSubGoal(GOAL_LastBoss_PiercingSword_Battle, -1)
    else                                                  goal:AddSubGoal(GOAL_LastBoss_LargeSword_Battle, -1)
    end
end
```

Each of those goals is a separate weight table inside `aicommon/LastBoss_*_battle.lua`. The SpEffects are applied by the fight's event script (`event/*.emevd`), not by the AI. So if you want to change "when does the phase start", the file to edit is the event script, not the AI script.

A second pattern: a script can step outside the weight table altogether. Midir does this at half HP (queue one move, then `return true`), guaranteeing that a piece of choreography happens exactly once regardless of RNG.

## 3. What those numbers are

`3000`, `3029`, `3014`… in the AI scripts are **animation ids**, not param row numbers. The evidence:

* In `BehaviorParam` (the NPC table) `behaviorJudgeId` only goes up to 999, while the ids used by the scripts are far beyond that and map one-to-one onto the `a00X_00NNNN.hkx` animation filenames inside the character's `anibnd`.
* The Souls Modding Wiki's API documentation names the argument `AnimationID` outright.

The damage chain is separate and further downstream:

```
AI script picks animation 3029
   └─ animation 3029 inside chr/cXXXX.anibnd.dcx (*.tae)
        └─ TAE event "InvokeAttackBehavior", BehaviourJudgeID = N
             └─ BehaviorParam row (variationId from NpcParam.behaviorVariationId, judgeId = N)
                  └─ AtkParam_Npc / Bullet → hitboxes, damage, poise damage, knockback
```

Three corollaries: changing damage never touches the AI; changing a move's **timing** means editing the TAE, not the script; and the only way to learn which move an id is, is to look at it.

## 4. Reading one boss in four steps

1. **Find the file.** Search the name in `index.tsv` and take the `scripts` column. (`think_ids` are `NpcThinkParam` row ids; variants such as `(Heatup)`, `(Orb)` or `(Spirit Clone)` may share one script or point at sibling scripts.)
2. **Read `Goal.Activate`.** That is the whole priority chain: which state opens which branch, and how much weight each move gets inside that branch. The `SetCoolTime` lines right after it give each move's cooldown.
3. **Read `ActNN`.** Each function is one move (or one choreographed combo). The first `AddSubGoal` gives the animation id; the following lines give the follow-up segments and their distance limits.
4. **Turn ids into names.** Open the character in **DS Anim Studio** (load `chr/cXXXX.anibnd.dcx`, `XXXX = npc id / 100`), look at the TAE animation list, and play 3000–3039 one by one; or match against footage by segment count, attack distance and cooldown.

One extra that helps a lot: the wiki's Lua AI function manual records semantics the decompiled code cannot show — for example `GetDist` is measured from the character's **origin** and offset by its hitRadius, so the value is negative while you are inside its body; and `IsInsideTarget`'s angle is the half-width either side of the given direction.

## 5. Reproducing the dump (and the landmines)

The repository ships the 67 scripts the 26 bosses use. To decompile other enemies, or all 29 bundles, use the bundled `tools/decompile_all.py` (about 1100 files, 20 minutes):

```
python tools/decompile_all.py --game "<your game>/Game" --witchy <WitchyBND.exe> \
    --decompiler tools/DSLuaDecompiler/DSLuaDecompiler.dll --out dump
```

For a single file use `tools/decompile.cmd <bytecode.lua> -o <output.lua>`.
Prerequisites: your own install is already unpacked with UXM, and you have downloaded WitchyBND.

## 6. The index file

`index.tsv` is the repository's index: one row per boss fight, with name, think ids, script paths inside the bundles, phase dispatch, Act count, longest cooldowns and HP gates. To find "which file does this fight read", look there or in [boss-list.md](boss-list.md).

## 7. Known limitations

* **Coverage 87%.** Of 749 lines, 653 can be traced to a dedicated battle script; the rest cannot.
* **Decompilation is not a byte-perfect rebuild.** It is good enough for control flow and constants, but a function occasionally comes back as an empty branch (the post-attack spacing goal in Midir's script is one example). Verify anything surprising against the bytecode or in game before arguing from it.
* **Scripts do not control timing.** Frame data lives in the TAE (`*.anibnd.dcx`) and `AtkParam_Npc`; the AI only decides **which move**.
* **Event scripts are a separate system.** Arena scripts, phase triggers, health-bar names and spawn points all live in `event/*.emevd`; the AI reacts to the results they produce (SpEffects, flags) but does not contain them.
