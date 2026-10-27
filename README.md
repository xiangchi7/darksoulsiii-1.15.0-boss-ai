# 黑暗之魂 3 Boss AI 源码

**26 场有血条的战斗，它们"下一步出什么招"的决策源码，反编译成了可读的 Lua，附阅读说明。**

> **English.** Every boss fight in Dark Souls III decides its next attack in a Lua script, not in the
> behaviour graph and not in the params. This repository contains the decompiled AI script for all 26
> boss fights (base game + both DLCs), an index that maps each fight to the file that drives it, and a
> guide to reading them: distance tiers, weight tables, cooldowns, combo sequencing, interrupt
> handlers, and how phase transitions are implemented. Extraction was done with WitchyBND +
> DSLuaDecompiler from a retail copy of the game. Text is mainly Chinese; `index.tsv` and the source
> are language-independent. Files mirror the game's own `Game/script/` layout, so they can be dropped
> back in after editing.

这不是 mod，也不含可执行程序或模型贴图：仓库里只有从游戏 `script/*.luabnd.dcx` 反编译出来的 AI 脚本、
一份清单、阅读方法，以及一个反编译工具。想看懂 AI 或想改 AI 都用它。

---

## 仓库里有什么

```
index.tsv              26 场战斗的清单：中文名 / think 号 / 脚本路径 / 阶段 / Act 数 / 冷却 / HP 门
README.md              本文件
docs/阅读方法.md        机制全解：四层结构、权重表、冷却、掷点、连段、打断层、阶段分派、四步读法
docs/逐场清单.md        26 场逐场说明（每场一段：脚本、距离档、冷却、HP 门、注意点）
docs/米狄尔实例.md      一场完整拆解（米狄尔），当作范例看
scripts/               67 个脚本，目录结构照抄游戏内的 Game/script/（可以原样放回游戏）
tools/DSLuaDecompiler/ 反编译器（katalash，MIT），用来核对或解别的文件
tools/decompile.cmd    单文件反编译的包装（自动处理 .NET 运行时版本）
tools/decompile_all.py 批量解包+反编译（要解全部 29 个包时用）
tools/extract_boss_moves.py  扫一个脚本、列出每个 Act 的动画号/冷却/条件
```

脚本只有三类文件名，看名字就知道是什么：

| 文件名 | 作用 |
|---|---|
| `<编号>_battle.lua` | 战斗 AI，**出招决策就在这里** |
| `<编号>_logic.lua` | 非战斗 AI（巡逻、待机），基本只是把战斗 goal 挂上去 |
| `common_*.lua`、`goal_list.lua` | 公共函数库和 goal 常量表，被上面两类引用 |

---

## 三分钟上手：以灰烬审判者古达为例

**1. 找文件。** `index.tsv` 里搜「古达」，或者直接看下面的表：`scripts/m40_00_00_00/511000_battle.lua`。

**2. 先看入口。** 那是个 14 行的 `Switch`：

```lua
Goal.Activate = function (ai, goal)
    if ai:HasSpecialEffectId(TARGET_SELF, 5404) and ai:GetNpcThinkParamID() == 511100 == false then
        goal:AddSubGoal(GOAL_Gunda_511000_HU_Battle, -1)   -- 人瘤（二阶段）
    else
        goal:AddSubGoal(GOAL_Gunda_511000_Battle, -1)
    end
end
```

**3. 进真正的战斗脚本。** `scripts/aicommon/Gunda_battle.lua`，重点看三处：

```lua
Goal.Activate = function (ai, goal)          -- ① 每次要出招时现填的权重表
    if ai:GetHpRate(TARGET_SELF) <= 0.55 ... then      w[50] = 100
    elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then w[6]=70; w[20]=30
    elseif InsideRange(ai, goal, 105, 60, -1, 3) then  w[4]=55; w[5]=45
    elseif dist >= 10 then                            w[1]=75; w[2]=25
    ...
    w[1] = SetCoolTime(ai, goal, 3000, 10, w[1], 1)    -- ② 冷却：权重降到 1，不是 0
    Common_Battle_Activate(ai, goal, w, actFuncs, ...)  -- ③ 加权掷点，选中哪个 Act 就跑哪个
```

```lua
function GundaBattle_Act01(ai, goal)         -- ④ 每个 Act 是一手（往往是一串连段）
    goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3000, TARGET_ENE_0, 8.5)
    goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3001, TARGET_ENE_0, 4.5)
    goal:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3029, TARGET_ENE_0, 5.2)
end
```

**4. 把号变成招式名。** `3000`、`3029` 这些是**动画号**，不是招式名。用 DS Anim Studio 载入对应角色
（`chr/cXXXX.anibnd.dcx`，`XXXX = think 号 / 100`，古达是 `c5110`），在 TAE 的动画列表里找 3000–3039
逐个播一遍就对上号了。动画文件名本身是 `a00X_003014.hkx` 这种，尾六位就是脚本里的号。

---

## 六个概念（读懂所有 boss 只用这些）

| 概念 | 长什么样 | 意思 |
|---|---|---|
| 权重表 | `w[12] = 10` | 每次要行动时按「距离 / 角度 / 血量 / SpEffect」现填；`if` 链顺序就是优先级 |
| 冷却 | `SetCoolTime(ai, goal, 动画号, 秒, 权重, 下限)` | 冷却中权重降到「下限」，多数 boss 是 **1**（很少但不是零），少数给 0（真封） |
| 掷点 | `GetRandam_Int(1, 总权重)` 累加命中 | 权重是比例，不是百分比；同权重下谁先谁后无所谓，比值才有意义 |
| 连段 | `ComboAttackTunableSpin → ComboRepeat → ComboFinal` | 一个 Act 就是一串；每段自带最大距离，你退远了后面几段自动跳过 |
| 打断 | `Goal.Interrupt` + `INTERUPT_UseItem` / `_Shoot` / `_Damaged` | 「boss 读指令」的真相：它对**你喝药、射击、被打**这类状态变化插招 |
| 阶段 | `HasSpecialEffectId(TARGET_SELF, 5404)` | 二阶段不是标志位，是 SpEffect 判断后**整段换另一份脚本**（薪王化身的五种武器形态就是这么切的） |

---

## 26 场一览

| Boss | 脚本（相对 `scripts/`） | 阶段 / 分派 |
|---|---|---|
| 灰烬审判者 古达 / Iudex Gundyr | `m40_00_00_00/511000_battle.lua` → `Gunda_battle.lua`、`Gunda_HU_battle.lua` | switch: SpEffect 5404 -> Gunda_HU_Battle (人瘤阶段) |
| 冷冽谷的玻尔多 / Vordt of the Boreal Valley | `m30_00_00_00/224000_battle.lua` | direct: HP<=0.6 -> act 25/26 |
| 咒蚀大树 / Curse-rotted Greatwood | `m31_00_00_00/518010_battle.lua` → `GiantTree_battle.lua`、`GiantTree_HU_battle.lua` | switch: SpEffect 5404 -> GiantTree_HU_Battle |
| 结晶老者 / Crystal Sage | `m33_00_00_00/132000_battle.lua` → `132050_battle.lua` | direct: HP<=0.6 gate; 分身用 132050 |
| 深邃主教群 / Deacons of the Deep | `m35_00_00_00/522000_battle.lua` | direct: 只有 6 个 Act |
| 法兰不死队 / Abyss Watchers | `m33_00_00_00/304000_battle.lua` → `304010_battle.lua`、`304020_battle.lua` | direct: 每个个体一份脚本 |
| 霸王 沃尼尔 / High Lord Wolnir | `m38_00_00_00/516000_battle.lua` → `SkeletonKingDefault_Battle.lua`、`SkeletonKingHeatUp_Battle.lua` | switch: SpEffect 5404 -> SkeletonKing_HeatUp_Battle |
| 老恶魔王 / Old Demon King | `m38_00_00_00/305000_battle.lua` | direct |
| 巨人 尤姆 / Yhorm the Giant | `m33_00_00_00/526000_battle.lua` | direct: HP<=0.4 / HP>=0.3 |
| 教皇 沙力万 / Pontiff Sulyvahn | `m37_00_00_00/514000_battle.lua` → `514010_battle.lua` | direct: 分身有独立脚本 |
| 吞噬神明的艾尔德利奇 / Aldrich, Devourer of Gods | `m37_00_00_00/515000_battle.lua` | direct: HP<=0.65 / 0.6 |
| 冷冽谷的舞娘 / Dancer of the Boreal Valley | `m30_00_00_00/527000_battle.lua` → `PursuitHeroine_battle.lua`、`PursuitHeroine_HU_battle.lua` | switch: SpEffect 5404 -> PursuitHeroine_HU_Battle |
| 龙狩铠甲 / Dragonslayer Armour | `m30_01_00_00/316000_battle.lua` | direct |
| 被吞噬的欧赛罗特 / Oceiros, the Consumed King | `m30_00_00_00/209000_battle.lua` → `DragonAngel_battle.lua`、`DragonAngel_HU_battle.lua` | switch: SpEffect 5404 -> DragonAngel_HU_Battle |
| 英雄 古达 / Champion Gundyr | `m40_00_00_00/511000_battle.lua` → `Gunda_battle.lua`、`Gunda_HU_battle.lua` | switch: 英雄古达跳过 HU 分支 |
| 古代飞龙 / Ancient Wyvern | `m32_00_00_00/314000_battle.lua` → `314010_battle.lua`、`314020_battle.lua` | direct: 大量地图区域判定 |
| 无名王者 / Nameless King | `m32_00_00_00/501000_battle.lua` → `503000_battle.lua` | direct: 无名王者 + 风暴之王两个体 |
| 双王子 洛里安 / 洛斯里克 / Lorian & Lothric | `m34_00_00_00/525000_battle.lua` → `525100_battle.lua` | direct: 哥哥一份、弟弟一份 |
| 薪王们的化身 / Soul of Cinder | `m40_00_00_00/528000_battle.lua` → `LastBoss_CurvedBlade_battle.lua`、`LastBoss_Gwyn_battle.lua`、`LastBoss_LargeSword_battle.lua`、`LastBoss_Magician_battle.lua`、`LastBoss_PiercingSword_battle.lua` | switch: SpEffect 5404-5408 -> 五种武器形态 |
| 芙莉德修女 / Sister Friede | `aicommon/602000_battle.lua` → `602010_battle.lua` | 两阶段各一份(602010 = 黑焰) |
| 神父 阿里安德尔 / Father Ariandel | `m45_00_00_00/601000_battle.lua` | direct: HP<=0.6 / >=0.6 |
| 守墓狼 / Gravetender's Greatwolf | `m45_00_00_00/603000_battle.lua` | direct: HP<=0.6 / 0.3 |
| 恶魔王子 / Demon Prince | `m38_00_00_00/502000_battle.lua` → `502100_battle.lua`、`502200_battle.lua` | direct: 本体 / 火球形态各一份 |
| 教堂之枪 / Halflight, Spear of the Church | `aicommon/021800_battle.lua` | direct: 玩家模板，招式用 NPC_ATK_* 符号 |
| 吞噬黑暗的米狄尔 / Darkeater Midir | `m51_00_00_00/621100_battle.lua` → `621000_battle.lua` | direct: 半血强制 3014；桥上另有一份 |
| 奴隶骑士 盖尔 / Slave Knight Gael | `m51_00_00_00/620000_battle.lua` → `620100_battle.lua` | 两阶段各一份 |

完整字段（think 号、Act 数、最长冷却、HP 门）见 `index.tsv`；每场一句话说明见 `docs/逐场清单.md`。

---

## 想解仓库里没带的脚本

本仓库只放了 26 场 boss 用到的 67 个脚本。要解别的敌人或全部 29 个包：

```bash
python tools/decompile_all.py --game "<你的游戏>/Game" --witchy <WitchyBND.exe> \
    --decompiler tools/DSLuaDecompiler/DSLuaDecompiler.dll --out dump
```

前提：游戏已用 UXM 解包（`Game/script/` 下是松散的 `*.luabnd.dcx`），并从官网下载 WitchyBND。
单文件：`tools/decompile.cmd <字节码.lua> -o <输出.lua>`。

---

## 想改 AI（进阶，会踩坑）

1. 直接改这些 `.lua`。
2. **改完必须编译回 Lua 5.0 字节码**——游戏读的是字节码，不读源码。本仓库只带反编译器；编译器是
   上游 [DSLuaDecompiler](https://github.com/katalash/DSLuaDecompiler) 仓库里的 `LuaCompiler` 项目，需要自己构建。
3. 用 [WitchyBND](https://github.com/ividyon/WitchyBND) 把改好的 lua 回封成 `*.luabnd.dcx`，放回
   `Game/script/`（原文件先备份）。

更省事的替代路线：改伤害/削韧完全不用碰脚本，改 `AtkParam_Npc`；改「阶段什么时候开始」去改
`event/*.emevd`，AI 只是读它贴的 SpEffect。**改完只单机玩，别上线。**

---

## 边界与须知

* **只覆盖 boss**：26 场有血条的战斗。杂兵、白灵、入侵 NPC 的 AI 不在仓库里。
* **动画号≠招式名**：本仓库不替你命名招式，号要靠 DS Anim Studio 或录像对。
* **反编译不是逐字节完美**：控制流和常量都准，但偶尔有函数被还原成空分支（米狄尔攻击后的间距 goal 就是一例）。
  任何拿去论证的结论，请回脚本原文件再确认一遍。
* **脚本不含节奏信息**：帧数据、无敌帧、取消窗口在 TAE 里；AI 只决定「哪一手」。
* **来源与版权**：这些 `.lua` 是从零售版《黑暗之魂 3》里反编译出来的游戏数据，版权属于
  FromSoftware / Bandai Namco，本仓库不对其主张任何许可。它们以「便于学习与研究」的形式公开；
  如果你是权利人并希望移除，开 issue 或邮件联系，会立即删除。仓库自身的说明文字与工具脚本以 MIT 发布。
* **请自行判断再用于发布**：把这份脚本直接打包进公开 mod 下载、或原样再分发，是你自己的选择与风险。

---

## 出处

* [katalash/DSLuaDecompiler](https://github.com/katalash/DSLuaDecompiler) —— 反编译器（MIT，
  `tools/DSLuaDecompiler/LICENSE-DSLuaDecompiler.txt` 是它的许可证全文）。
* [ividyon/WitchyBND](https://github.com/ividyon/WitchyBND) —— 解包/回封 `luabnd`，需自备。
* [JKAnderson/UXM](https://github.com/JKAnderson/UXM) —— 解包游戏档案，需自备。
* [soulsmods/Paramdex](https://github.com/soulsmods/Paramdex) —— 参数定义与 `NpcThinkParam` 名称表。
* [Souls Modding Wiki 的 Lua AI 函数手册](https://soulsmodding.wikidot.com/reference:lua-ai-function-respository)
  —— 这些 API 最接近官方文档的东西，建议一起看。
