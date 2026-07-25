# Warcraft III 地图脚本项目 (War3Script)

这是一个用于管理和开发魔兽争霸3（Warcraft III）地图脚本的项目仓库。本项目核心逻辑通过 Jass / vJass 语言编写，最终编译并嵌入到地图文件（.w3x）中的 `war3map.j` 脚本中。

## 核心脚本 (`war3map.j`)

`war3map.j` 是魔兽争霸3地图的核心。当玩家加载地图时，游戏引擎会执行该文件中的 `main` 函数来初始化地图（创建单位、设置天气、启动计时器等），并执行 `config` 函数来配置玩家颜色、结盟关系和地图基础信息。

```
https://github.com/wuxiancong/War3Script/blob/main/war3map_1.j
https://github.com/wuxiancong/War3Script/blob/main/war3map_2.j
https://github.com/wuxiancong/War3Script/blob/main/war3map_3.j
https://github.com/wuxiancong/War3Script/blob/main/war3map_4.j
https://github.com/wuxiancong/War3Script/blob/main/war3map_5.j
https://github.com/wuxiancong/War3Script/blob/main/war3map_6.j
https://github.com/wuxiancong/War3Script/blob/main/war3map_7.j
https://github.com/wuxiancong/War3Script/blob/main/war3map_8.j
https://github.com/wuxiancong/War3Script/blob/main/war3map_9.j
```
### 基础脚本示例

以下是本项目中 `war3map.j` 的核心基础代码结构，包含初始化玩家和简单的“Hello World”欢迎信息：

```jass
//===========================================================================
// 地图全局配置函数
//===========================================================================
function config takes nothing returns nothing
    call SetMapName("我的自定义 War3 地图")
    call SetMapDescription("这是一个使用 War3Script 开发的自定义地图。")
    call SetPlayers(1)
    call SetTeams(1)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    // 配置玩家 1 (红色)
    call DefineStartLocation(0, 0.0, 0.0)
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call SetPlayerColor(Player(0), PLAYER_COLOR_RED)
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
endfunction

//===========================================================================
// 触发器逻辑：欢迎信息
//===========================================================================
function WelcomeAction takes nothing returns nothing
    // 向所有玩家发送欢迎文本信息
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 10.0, "|cff00ff00欢迎来到我的魔兽争霸3自定义地图！|r")
endfunction

function InitWelcomeTrigger takes nothing returns nothing
    local trigger trig = CreateTrigger()
    // 注册事件：游戏开始 0.00 秒后触发
    call TriggerRegisterTimerEventSingle(trig, 0.00)
    // 添加动作
    call TriggerAddAction(trig, function WelcomeAction)
endfunction

//===========================================================================
// 地图主初始化函数
//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(-3328.0, -3584.0, 3328.0, 3072.0, -3328.0, 3072.0, 3328.0, -3584.0)
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    
    // 初始化自定义触发器
    call InitWelcomeTrigger()
endfunction
```

## 开发与编译工具

为了高效编写和调试本项目的脚本，推荐使用以下工具链：

1.  **代码编辑器**：[VS Code](https://visualstudio.com)（推荐安装 `Warcraft Jass` 或 `vJass` 语法高亮插件）。
2.  **地图打包/编译工具**：
    *   [W3XModding](https://github.com) 或 [YDWe](http://uuu9.com)（提供丰富的外部编译器支持）。
    *   [JassHelper](https://github.com)：用于将 vJass/Zinc 代码编译整合为标准的 `war3map.j`。
    *   [Ceris / Weis](https://github.com) 等现代 Lua/TypeScript-to-Jass 编译框架。

## 如何运行与测试

1.  克隆本项目到本地。
2.  使用 MPQ 工具（如 MPQEditor）或打包脚本，将更新后的 `war3map.j` 导入到你的 `.w3x` 地图文件中。
3.  将地图文件放入魔兽争霸3的 `Maps/` 目录下。
4.  启动游戏，创建自定义房间并选择该地图进行测试。

## 注意事项

*   不要直接在 WE（魔兽地图编辑器）中频繁覆盖此文件，WE 每次保存地图时都会重新自动生成 `war3map.j`。建议使用外部局部触发器注入，或者使用非 WE 自带的第三方构建工具进行代码合并。
