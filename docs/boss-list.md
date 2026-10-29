# Boss list

26 fights have a health bar — the base game plus *Ashes of Ariandel* and *The Ringed City*. **Only red-name bosses**; regular enemy AI is not in this repository.

The script paths below are relative to the repository's `scripts/` directory; the `think ids` are the same ones in the `index.tsv` columns.

Column meanings:

* **think ids** — the `NpcThinkParam` rows this fight uses (one row per variant / per individual).
* **script** — the scripts those rows end up in (after following the `Switch` dispatch). Bosses with phases have more than one.
* **acts** — total number of `Act` functions across those scripts. Each Act is one "move slot" the weight table can pick.
* **anim ids** — how many distinct animation ids those Acts can queue. To learn which move that is, take the ids to the character's TAE (see [guide.md](guide.md) section 3); this repository does not name moves.
* **longest cooldowns** — the two largest `SetCoolTime` values, formatted `seconds(anim id)`.
* **HP gates** — every `GetHpRate(TARGET_SELF)` comparison in the chain. A gate usually means "the weight table changes from here", which is not necessarily a phase change.

## Base game

| Boss | think ids | script | acts | anim ids | longest cooldowns | HP gates |
|---|---|---|---|---|---|---|
| Iudex Gundyr | 511000 | `m40_00_00_00/511000_battle.lua` → `aicommon/Gunda_battle.lua`, `Gunda_HU_battle.lua` | 33 | 30 | 30s(3010), 16s(3020) | ≤0.4 / ≥0.4 |
| Vordt of the Boreal Valley | 224000 | `m30_00_00_00/224000_battle.lua` | 25 | 21 | 30s(3018), 25s(3007) | ≤0.6 |
| Curse-rotted Greatwood | 518000 | `m31_00_00_00/518010_battle.lua` → `aicommon/GiantTree_battle.lua`, `GiantTree_HU_battle.lua` | 44 | 23 | — | — |
| Crystal Sage | 132000 | `m33_00_00_00/132000_battle.lua`, `m34_01_00_00/132050_battle.lua` | 34 | 22 | 12s(3001), 10s(3021) | ≤0.6 |
| Deacons of the Deep | 522000 | `m35_00_00_00/522000_battle.lua` | 6 | 5 | — | — |
| Abyss Watchers | 304000 | `m33_00_00_00/304000_battle.lua`, `304010`, `304020` | 50 | 20 | 20s(3003), 20s(3002) | — |
| High Lord Wolnir | 516000 | `m38_00_00_00/516000_battle.lua` → `SkeletonKing_*_Battle` | 20 | 11 | 60s(3013), 60s(3012) | — |
| Old Demon King | 305000 | `m38_00_00_00/305000_battle.lua` | 19 | 18 | 20s(3024), 20s(3021) | — |
| Yhorm the Giant | 526000 | `m33_00_00_00/526000_battle.lua` | 24 | 24 | 25s(3016), 20s(3011) | ≤0.4 / ≥0.3 |
| Pontiff Sulyvahn | 514000 | `m37_00_00_00/514000_battle.lua`, `514010_battle.lua` | 74 | 34 | 25s(3021), 25s(3019) | ≤0.6 / ≤0.5 / ≤0.35 / ≤0.3 / ≤0.12 |
| Aldrich, Devourer of Gods | 515000 | `m37_00_00_00/515000_battle.lua` | 21 | 19 | 30s(3014), 30s(3012) | ≤0.65 / ≤0.6 |
| Dancer of the Boreal Valley | 527000 | `m30_00_00_00/527000_battle.lua` → `PursuitHeroine527000[_HU]_Battle` | 42 | 30 | 25s(3023), 25s(3016) | — |
| Dragonslayer Armour | 316000 | `m30_01_00_00/316000_battle.lua` | 17 | 17 | 20s(3023), 20s(3007) | — |
| Oceiros, the Consumed King | 209000 | `m30_00_00_00/209000_battle.lua` → `DragonAngel_209000[_HU]_Battle` | 32 | 15 | 30s(3008), 20s(3009) | — |
| Champion Gundyr | 511100 | `m40_00_00_00/511000_battle.lua` → `aicommon/Gunda_battle.lua` | 33 | 30 | 30s(3010), 16s(3020) | ≤0.4 / ≥0.4 |
| Ancient Wyvern | 314000 | `m32_00_00_00/314000_battle.lua`, `314010`, `314020` | 81 | 17 | 15s(3008), 10s(3001) | — |
| Nameless King | 501000 / 503000 | `m32_00_00_00/501000_battle.lua`, `503000_battle.lua` | 63 | 33 | 60s(3001), 55s(3008) | — |
| Lorian & Lothric | 525000 / 525100 | `m34_00_00_00/525000_battle.lua`, `525100_battle.lua` | 24 | 21 | 30s(3036), 20s(3033) | — |
| Soul of Cinder | 528000 | `m40_00_00_00/528000_battle.lua` → `aicommon/LastBoss_*_battle.lua` (5 files) | 67 | 31 | 30s(3025), 30s(3023) | ≤0.85 … ≥0.2 |

## Ashes of Ariandel

| Boss | think ids | script | acts | anim ids | longest cooldowns | HP gates |
|---|---|---|---|---|---|---|
| Sister Friede | 602000 / 602001 | `aicommon/602000_battle.lua`, `602010_battle.lua` | 67 | 41 | 65s(3021), 65s(3020) | ≤0.7 |
| Father Ariandel | 601000 | `m45_00_00_00/601000_battle.lua` | 18 | 16 | 90s(3019), 80s(3013) | ≤0.6 / ≥0.6 |
| Gravetender's Greatwolf | 603000 | `m45_00_00_00/603000_battle.lua` | 25 | 19 | 60s(3017), 60s(3014) | ≤0.6 / ≤0.3 |

## The Ringed City

| Boss | think ids | script | acts | anim ids | longest cooldowns | HP gates |
|---|---|---|---|---|---|---|
| Demon Prince | 502000 | `m38_00_00_00/502000_battle.lua`, `m50_00_00_00/502100_battle.lua`, `502200` | 68 | 40 | 75s(3014), 55s(3026) | ≤0.65 |
| Halflight, Spear of the Church | 21800 | `aicommon/021800_battle.lua` | 23 | 0 † | — | — |
| Darkeater Midir | 621100 (pit) / 621000 (bridge) | `m51_00_00_00/621100_battle.lua`, `621000_battle.lua` | 46 | 36 | 60s(3038), 60s(3002) | <0.5 (pit) |
| Slave Knight Gael | 620000 / 620100 | `m51_00_00_00/620000_battle.lua`, `m51_01_00_00/620100_battle.lua` | 45 | 28 | 60s(3033), 60s(3030) | ≤0.42 / ≤0.3 |

† Halflight uses the player-character template and queues moves as symbolic constants (`NPC_ATK_R1`, `NPC_ATK_ArrowKeyLeft`), so there are no numeric animation ids.

---

## Per-fight notes

**Iudex Gundyr / Champion Gundyr.** The entry point is a 14-line `Switch`: SpEffect 5404 present → run `Gunda_HU_Battle` (the pus-of-man half), otherwise `Gunda_battle`. Champion Gundyr shares that switch but skips the HU branch because `GetNpcThinkParamID() == 511100` — which is why he has no phase two. The weight table in `Gunda_battle.lua` is the most readable in the whole game: a from-behind check (`AI_DIR_TYPE_B, 150`), left/right cones (`InsideRange(ai, goal, ±105, 60, …)`), distance tiers, and +300 weight against a downed `TARGET_DOWN`.

**Vordt.** One script, 25 Acts, distance tiers at 4 / 5.5 / 10 / 15 metres. Past 0.6 HP the weight shifts to Act 25/26 — that is the entirety of his phase two: no separate script, no SpEffect.

**Curse-rotted Greatwood.** The 5404 switch goes to `GiantTree_HU_battle`. Neither script has **any `SetCoolTime` at all**: 44 Acts separated purely by weight table, which is why this fight feels noticeably more random than bosses with long cooldowns.

**Crystal Sage.** An `HP ≤ 0.6` gate, very short cooldowns (12 s / 10 s), and the clone has its own script (`132050_battle.lua`) — the clone runs its own weight table, it is not a puppet of the main body.

**Deacons of the Deep.** 6 Acts, 5 animation ids, no cooldowns. This fight is a crowd-behaviour problem, not a moveset problem.

**Abyss Watchers.** Three scripts (main body + two extra individuals), 50 Acts total; each individual runs its own weight table.

**High Lord Wolnir.** The 5404 switch goes to `SkeletonKing_HeatUp_Battle`, with two moves on 60-second cooldowns.

**Old Demon King.** One script, 19 Acts, 20-second cooldowns.

**Yhorm the Giant.** Two gates, `HP ≤ 0.4` / `≥ 0.3`, 24 Acts; in practice the fight is mostly about whether you brought Storm Ruler.

**Pontiff Sulyvahn.** One of the largest weight tables in the game (74 Acts and 34 animation ids across body + clone), with five HP gates — 0.6, 0.5, 0.35, 0.3, 0.12 — which are step-up points *inside* the weight table, not five phases; the clone has a separate script.

**Aldrich.** Two HP gates (0.65, 0.6); both ranged ultimates are on 30-second cooldowns.

**Dancer of the Boreal Valley.** `PursuitHeroine527000_Switch` switches to `_HU_Battle` on 5404; 42 Acts, 30 animation ids, 25-second cooldowns.

**Dragonslayer Armour.** No dispatch, no phase script: 17 Acts, 17 animation ids, 20-second cooldowns.

**Oceiros.** `DragonAngel_209000_Switch` switches to `_HU_Battle` on 5404; 32 Acts but only 15 distinct animation ids — a large part of the weight table is repositioning and re-approach rather than new moves.

**Ancient Wyvern.** Three individual scripts totalling 81 Acts but only 17 animation ids, plus a lot of `IsInsideTargetRegion` checks — its behaviour is driven mainly by *where you are on the map* (arena regions `3204xxx`), not just by distance.

**Nameless King.** Two bodies: `501000` (the king himself) and `503000` (King of the Storm). 63 Acts, 33 animation ids, one 60-second cooldown.

**Lorian & Lothric.** `525000` (Lorian, plus a `(Heatup)` variant row) and `525100` (Lothric), one script per body.

**Soul of Cinder.** The clearest phase system in the game: a 15-line switch checks SpEffect 5404–5408 and dispatches to five `LastBoss_*_battle.lua` files. Each weapon form has its own weight table, distance tiers and HP gates (0.85 / 0.75 / 0.7 / 0.5 / 0.35 / 0.3 / 0.2 across the whole set).

**Sister Friede.** Two scripts: `602000_battle.lua` (phase one) and `602010_battle.lua` (blackflame). 67 Acts, 41 animation ids, 65-second cooldowns — the longest cooldowns of any two-phase fight in this list.

**Father Ariandel.** 18 Acts, cooldowns of 90 s / 80 s — the longest in the whole list.

**Gravetender's Greatwolf.** 25 Acts, 60-second cooldowns, HP gates at 0.6 and 0.3. The human half of this fight has no separately named `NpcThinkParam` row in Paramdex, so only the wolf is listed here.

**Demon Prince.** Body + two orb variants, 68 Acts total, 75-second cooldowns, an `HP ≤ 0.65` gate.

**Halflight, Spear of the Church.** The only boss whose weight table reads **player-side** state: `GetSp` (your stamina), `GetTeamOrder(ORDER_TYPE_Role)` (multiplayer role order) and `IsBothHandMode` decide which branches open — so the number of players changes his behaviour.

**Darkeater Midir.** The pit fight: 25 Acts, 30 animation ids, 60-second cooldowns on 3002/3038, plus one hardcoded branch — `HP < 0.5` with no `16581` on him queues animation 3014 and `return true`, bypassing the roll so that piece of choreography happens exactly once. Full teardown in [midir.md](midir.md). The bridge version (`621000_battle.lua`) is a separate script.

**Slave Knight Gael.** `620000` (phase one) + `620100` (phase two, in `m51_01`), 45 Acts, 60-second cooldowns, an `HP ≤ 0.42` gate.

---

## What this table will not tell you

* **Which move an id is.** Those are animation ids; naming them takes DS Anim Studio or footage (guide.md section 4).
* **Timing.** Frame data, i-frames and cancel windows live in the TAE, not in the AI.
* **Who applies the phase SpEffect.** The arena scripts under `event/*.emevd`.
