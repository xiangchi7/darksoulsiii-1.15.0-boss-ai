# Dark Souls III 1.15.0 — boss AI scripts

The decompiled Lua AI of every boss fight in Dark Souls III (base game + *Ashes of Ariandel* + *The Ringed City*), extracted from the retail 1.15.0 release. This is the code that decides what a boss does next: range checks, weight tables, cooldowns, combo strings, interrupts and phase switches — not the behaviour graph, not the params.

It is not a mod and contains no models, textures, sounds, params or executables. Only the AI scripts, in the game's own `Game/script/` layout, so an edited file can be dropped straight back in.

## `scripts/`

67 files. The filenames tell you what each one is:

| Name | What it is |
|---|---|
| `<id>_battle.lua` | battle AI — **the attack decision lives here** |
| `<id>_logic.lua` | non-combat AI (patrol, idle) |
| `common_*.lua`, `goal_list.lua` | shared function library and goal constant table |

Boss → script (paths relative to `scripts/`; the ones marked "+ N more" reference additional scripts from the same entry point):

| Boss | Script |
|---|---|
| Iudex Gundyr | `m40_00_00_00/511000_battle.lua` + 2 more |
| Vordt of the Boreal Valley | `m30_00_00_00/224000_battle.lua` |
| Curse-rotted Greatwood | `m31_00_00_00/518010_battle.lua` + 2 more |
| Crystal Sage | `m33_00_00_00/132000_battle.lua` + 1 more |
| Deacons of the Deep | `m35_00_00_00/522000_battle.lua` |
| Abyss Watchers | `m33_00_00_00/304000_battle.lua` + 2 more |
| High Lord Wolnir | `m38_00_00_00/516000_battle.lua` + 2 more |
| Old Demon King | `m38_00_00_00/305000_battle.lua` |
| Yhorm the Giant | `m33_00_00_00/526000_battle.lua` |
| Pontiff Sulyvahn | `m37_00_00_00/514000_battle.lua` + 1 more |
| Aldrich, Devourer of Gods | `m37_00_00_00/515000_battle.lua` |
| Dancer of the Boreal Valley | `m30_00_00_00/527000_battle.lua` + 2 more |
| Dragonslayer Armour | `m30_01_00_00/316000_battle.lua` |
| Oceiros, the Consumed King | `m30_00_00_00/209000_battle.lua` + 2 more |
| Champion Gundyr | `m40_00_00_00/511000_battle.lua` + 2 more |
| Ancient Wyvern | `m32_00_00_00/314000_battle.lua` + 2 more |
| Nameless King | `m32_00_00_00/501000_battle.lua` + 1 more |
| Lorian & Lothric | `m34_00_00_00/525000_battle.lua` + 1 more |
| Soul of Cinder | `m40_00_00_00/528000_battle.lua` + 5 more |
| Sister Friede | `aicommon/602000_battle.lua` + 1 more |
| Father Ariandel | `m45_00_00_00/601000_battle.lua` |
| Gravetender's Greatwolf | `m45_00_00_00/603000_battle.lua` |
| Demon Prince | `m38_00_00_00/502000_battle.lua` + 2 more |
| Halflight, Spear of the Church | `aicommon/021800_battle.lua` |
| Darkeater Midir | `m51_00_00_00/621100_battle.lua` + 1 more |
| Slave Knight Gael | `m51_00_00_00/620000_battle.lua` + 1 more |

Two things worth knowing before you open a file: the numbers passed to combo goals (`3000`, `3029`, ...) are **animation ids, not move names** — match them in DS Anim Studio (`chr/cXXXX.anibnd.dcx`, `XXXX = think id / 100`). And phase two is usually not a flag inside the same file: after an SpEffect check the AI swaps in a different script, which is how Soul of Cinder's five weapon forms switch.

## 中文

本仓库是《黑暗之魂3》1.15.0（本体 + 阿里安德尔的灰烬 + 环印城）全部 26 场 BOSS 战的 AI 反编译脚本，共 67 个 Lua 文件，按游戏自身的 `Game/script/` 目录结构存放：`<id>_battle.lua` 是战斗 AI，攻击选择逻辑就在这里；`<id>_logic.lua` 是非战斗 AI；`common_*.lua`、`goal_list.lua` 是公共函数库和目标常量表。仓库里没有模型、贴图、音效、params 或可执行文件。脚本里的数字是动画 ID 而不是招式名，需要到 DS Anim Studio 里对照。

## Provenance

Every file under `scripts/` is decompiled game data and belongs to FromSoftware / Bandai Namco; no licence is claimed over it. See [NOTICE.md](NOTICE.md).
