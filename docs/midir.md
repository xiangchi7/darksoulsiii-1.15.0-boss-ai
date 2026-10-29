# Worked example: Darkeater Midir

Reading one fight from start to finish, as a demonstration of the method in [guide.md](guide.md). Every number below comes from `scripts/m51_00_00_00/621100_battle.lua` in this repository (the pit fight; the bridge is `scripts/m51_00_00_00/621000_battle.lua`). Animation ids are raw ids, and this document deliberately does not name moves.

## Where it lives

```
NpcThinkParam 621100  "Darkeater Midir"
  battleGoalId 621100  ->  m51_00_00_00/621100_battle.lua   (registered as GOAL_DarknessDragon621100_Battle)
  logicId      10000   ->  aicommon/010000_logic.lua        (patrol; just mounts the battle goal)
```

No `Switch`, no second-phase script: one file, 25 `Act`s, 30 distinct animation ids.
Animations and the behaviour graph are in `chr/c6211.*` (chr id = 621100 / 100).

## The weight table

`Goal.Activate` reads distance, vertical distance, HP ratio, the event request value, and
`IsInsideTargetRegion(TARGET_SELF, 5102880)`, then fills `w[act]`:

| Distance | Phase one | Phase two (with `16581`) |
|---|---|---|
| > 17 m | `w[2]=4  w[3]=7  w[7]=3  w[24]=4` | `w[1]=6  w[7]=1  w[22]=10  w[24]=4` |
| 8.5–17 m | `w[3]=5  w[6]=4  w[7]=6  w[24]=2` | `w[6]=5  w[24]=3  w[7]=1` |
| < 8.5 m | `w[4]=8  w[8]=8  w[9]=6  w[12]=10  w[13]=10  w[24]=5` | `w[5]=5  w[24]=10` |
| inside the model (`dist < −3`) | `w[24]=3  w[16]=3` | `w[5]=4  w[24]=3  w[16]=3` |
| outside the frontal 90° cone | `w[20]=10` (turn only, no attack) | same |

`GetDist` is measured from the character's origin minus its own hitRadius, so it goes negative while you are inside the model — that is what the last row tests.

Two structural details are worth noticing:

* **Half HP is a hardcoded branch that never enters the weight table.** `GetHpRate() < 0.5` with no `16581` → queue animation 3014 and `return true`, leaving `Activate` early. The roll never happens, so that transition is guaranteed to occur exactly once.
* **Map region 5102880** (when "self is inside this region") adds two moves (`w[11]`, `w[19]`) with weights of just 1–2. This is where arena geometry leaks into the AI: at one spot in the pit he has two extra options.

## Acts, animation ids, cooldowns

| Act | Animation ids | Cooldown | When it is selected |
|---|---|---|---|
| 1 | 3011 | 15 s | > 17 m, phase two |
| 2 | 3010 | 15 s | > 17 m, phase one |
| 3 | 3012 | 20 s | > 17 m, both phases |
| 6 | 3008 → 3009 | 10 s | mid range; the follow-up only chains in phase two without `16585` |
| 7 | 3015 | 20 s | mid range |
| 4 | 3000 | 30 s | close range |
| 8 | 3029 → 3009 / 3026 | 30 s | close range |
| 9 | 3023 → 3006 | 40 s | close range |
| 10 | 3023 | — | close range, single-hit version |
| 12 | 3027 → 3009 / 3032 / 3026 | 30 s | close range, random follow-up |
| 13 | 3024 → 3025 → 3031 | 40 s | close range, fixed three-hit string |
| 14 | 3021 → 3019 | — | you are inside the frontal +45° cone |
| 15 | 3022 → 3020 | — | you are inside the frontal −45° cone |
| 16 | 3017 | 40 s | you are behind him or inside the model |
| 11 | 3033 / 3034 | — | only inside region 5102880, chosen by relative angle |
| 17 / 18 | 3036 / 3037 | — | you carry SpEffect 16573 / 16574 |
| 19 | 3039 | 40 s | inside region 5102880 |
| 20 | — (turn) | — | you left his frontal 90° cone |
| 21 | — (keep distance) | — | small weight, used to open the gap |
| 22 | 3034 → 3038 | 60 s (3038) | phase two, > 17 m |
| 23 | 3016 | — | you carry 16573 / 16574 / 16576 |
| 24 | 3002 | 60 s | all distances, weight 2–10 by tier |
| 25 | 3002 | — | only offered while SpEffect 16582 is on him |

Cooldowns are written as weight suppression, not locks: `SetCoolTime(ai, goal, anim_id, seconds, weight, 0)` — the floor here is `0`, so a move on cooldown genuinely cannot be rolled.

## The interrupt layer

`Goal.Interrupt` only reacts to activation of his **own** SpEffects (5025–5029), i.e. marker points inside animations. Each one can clear the current plan and cut in a different finisher:

| Own SpEffect | Condition | Inserts |
|---|---|---|
| 5025 | 5 ≤ distance ≤ 24 m | 3030 or 3031 (50% each) |
| 5026 | distance ≤ 22 m | 3013 |
| 5027 | distance ≤ −5 (you are inside him) | 3001 |
| 5028 | distance ≤ −5 | 3018 |
| 5029 | distance ≥ 15 m | 3015 |

There is **no** `INTERUPT_UseItem`. Midir does not interrupt because you drank Estus — Iudex Gundyr, by contrast, does.

## What these numbers say

* Every close-range option except pure repositioning is on a 30–40 second cooldown, and 3002/3038 are on 60. A dozen options are available up close; the pressure comes from **the width of the table**, not from attacking quickly.
* The `> 17 m` tier is where phase two really adds material (3011, plus 3038 via Act 22) — the long-range behaviour changes more than the melee does.
* The moment you leave his frontal cone the weight becomes "turn only" (`w[20]=10`). That is why he does not flail at your back: past 90° he re-aims first.
* `16571`–`16576` are checked on **you** (`TARGET_ENE_0`). Paramdex names all six "Darkeater Midir - Bridge", which says they are fight-specific state markers applied by the arena script, not player statuses like poison or bleed.

## One reservation

`GOAL_DarknessDragon621100_Battle_AfterAttackAct` decompiles into five distance branches that are all empty shells. Two possibilities: the retail game really has no post-attack spacing adjustment (plausible — he does not back off), or the decompiler dropped the calls. Treat "Midir has no post-attack spacing" as an observation from this dump, not a verified fact, and check the bytecode before arguing from it.
