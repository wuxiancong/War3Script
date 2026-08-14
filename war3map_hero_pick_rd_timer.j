# 魔兽争霸3：RD模式选人核心倒计时逻辑分析报告

本报告针对 Jass 脚本中的函数 `K72` 进行深度解析。该函数是 RD（Random Draft，随机征召）模式的“发令枪”，负责初始化选人环境、确定首选阵营并建立 20 秒一轮的循环机制。

---

## 1. 源代码分析 (`function K72`)

```jass
function K72 takes nothing returns boolean
    local trigger t = GetTriggeringTrigger()
    local integer S5I
    local integer i = 1
    
    call S0I(t)                       // 销毁触发此逻辑的上级触发器（清理内存）
    call SuspendTimeOfDay(true)       // 暂停游戏昼夜交替
    
    // --- [1] 阵营首选随机逻辑 ---
    set QS0 = GetRandomInt(1, 2)      // 随机数：1 = 近卫先选，2 = 天灾先选
    call QRI(bj_FORCE_ALL_PLAYERS, 15.00, " ")
    
    if QS0 == 1 then
        // 打印系统消息：近卫军团开始选人
        call QRI(bj_FORCE_ALL_PLAYERS, 15.00, GetObjectName(1848653131) + " " + C0[GetPlayerId(BO[0])] + GetObjectName(1848653365) + "|r" + " " + GetObjectName(1848653366))
    else
        // 打印系统消息：天灾军团开始选人
        call QRI(bj_FORCE_ALL_PLAYERS, 15.00, GetObjectName(1848653131) + " " + C0[GetPlayerId(CO[0])] + GetObjectName(1848653379) + "|r" + " " + GetObjectName(1848653366))
    endif
    call QRI(bj_FORCE_ALL_PLAYERS, 15.00, " ")
    
    // --- [2] 建立 20 秒轮次时钟 ---
    set t = CreateTrigger()
    set S5I = GetHandleId(t)
    
    // 注册核心事件：每隔 20 秒，周期性执行一次 (true 表示循环)
    call TriggerRegisterTimerEvent(t, 20, true) 
    
    // 绑定逻辑处理函数：K12 (负责每一轮的超时检测、自动随机、切换玩家)
    call TriggerAddCondition(t, Condition(function K12))
    
    // 初始化数据存储：在哈希表 LY 中记录当前轮次索引（Key=25, Value=0）
    call SaveInteger(LY, (S5I), (25), (0))
    
    // 立即执行第一次：不等待第一个 20 秒，直接开始第一轮
    call TriggerEvaluate(t) 
    
    set t = null
    return false
endfunction
```

---

## 2. 核心功能解析

### 2.1 强制性的 20 秒节奏
函数中通过 `TriggerRegisterTimerEvent(t, 20, true)` 确立了 RD 模式的**物理节奏**。与普通的 `TimerStart` 不同，这里使用了周期性触发器。这意味着每 20 秒，系统就会强制检查玩家的选人状态。

### 2.2 逻辑分工
*   **K72 (初始化器)**：负责搭建舞台，设定每 20 秒跳动一次的“大时钟”。
*   **K12 (执行器)**：是每轮的核心逻辑。当 20 秒时间到，`K12` 会执行以下操作：
    *   判断当前玩家是否已经选好。
    *   若未选，通过 `GetRandomInt` 强制分配英雄。
    *   将控制权移交给下一个玩家。
    *   重置屏幕上显示的倒计时 UI。

### 2.3 与 Native Hook 的关联
在性能报表中，`TimerGetRemaining` 被频繁调用，其返回值在 `20.0` 到 `0.0` 之间递减。
*   **原因**：为了让玩家在屏幕上看到具体的秒数变化（如 18.6s, 18.7s），`K12` 在每轮开始时会重置一个全局计时器变量（通常是变量 `M`）。
*   **现象**：Hook 截获的 `0x41A00000` (20.0) 及其递减值，正是由此触发器驱动的视觉表现。

---

## 3. 统计学意义

| 项目 | 数据/标识符 | 描述 |
| :--- | :--- | :--- |
| **单轮时长** | 20.0 秒 | 由 `TriggerRegisterTimerEvent` 物理锁定 |
| **首选标记** | `QS0` | 1 为近卫，2 为天灾 |
| **处理函数** | `K12` | 负责处理具体的选人动作 |
| **数据索引** | `LY (Hashtable)` | 存储了计时器句柄与轮次状态的映射 |

---

## 4. 结论与文件名建议

该函数是 RD 模式运行的基础，通过强制性的 20 秒周期性触发器，保证了选人阶段能够有条不紊地循环进行。

**建议存储文件名：** `war3map_hero_pick_rd_timer.j`
**文件功能描述：** 负责 RD 模式阵营初始化及 20 秒轮次主循环的建立。