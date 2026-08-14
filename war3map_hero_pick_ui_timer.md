# 英雄选择 UI 倒计时初始化逻辑分析报告 (Function `JW2`)

本报告针对 Jass 脚本中的函数 `JW2` 进行深度解析。该函数是选人阶段**视觉倒计时（UI 表现层）**的启动器，负责每秒更新一次屏幕上的数字显示。

---

## 1. 源代码分析 (`function JW2`)

```jass
function JW2 takes integer DC1, real x, real y returns nothing
    local trigger t = CreateTrigger()
    local integer S5I = GetHandleId(t)
    
    // --- [1] 注册每秒触发一次的时钟事件 ---
    // 参数 1: 时间间隔为 1.0 秒
    // 参数 true: 循环执行
    call TriggerRegisterTimerEvent(t, 1, true)
    
    // 绑定 UI 刷新函数：JG2 (负责把数字从 20 减到 0，并刷新多面板/文字)
    call TriggerAddCondition(t, Condition(function JG2))
    
    // --- [2] 在哈希表中存储倒计时上下文 ---
    // DC1: 传入的初始秒数（在 RD 模式中通常传入 20）
    call SaveInteger(LY, (S5I), (57), (DC1))  // Key 57: 当前剩余秒数
    call SaveReal(LY, (S5I), (6), ((x)*1.0))   // Key 6: UI 显示的 X 坐标
    call SaveReal(LY, (S5I), (7), ((y)*1.0))   // Key 7: UI 显示的 Y 坐标
    
    // --- [3] 立即执行 ---
    // 不等待第一个 1 秒，立刻调用 JG2 显示初始数字
    call TriggerEvaluate(t) 
    
    set t = null
endfunction
```

---

## 2. 核心功能拆解

### 2.1 视觉心跳 (Per-Second Tick)
该函数通过 `TriggerRegisterTimerEvent(t, 1, true)` 建立了一个**每秒一次**的精确回调。这不同于 `K12` 的 20 秒大循环，它是为了处理玩家肉眼可见的数字跳变（20...19...18...）。

### 2.2 数据的“接力”
*   **输入**：从 `K12` 处接收 `DC1`（数值为 20）。
*   **存储**：将 20 存入哈希表。
*   **执行**：委派给 **`JG2`**。`JG2` 每次执行时会从哈希表读取这个数字，减去 1，再存回去，并同步更新到屏幕上的 Multiboard 或 FloatingText。

### 2.3 坐标关联
传入的 `x` 和 `y` 通常是当前选人玩家的英雄位置或小精灵位置。这说明该倒计时可能是以“浮动文字”的形式显示在英雄头顶，或者是确定了 UI 提示框的弹出位置。

---

## 3. 逻辑关系图

1.  **`K72` (RD开启)**：设定 RD 规则，启动 20 秒大循环。
2.  **`K12` (轮次控制)**：每 20 秒检查一次，并调用 `JW2(20, ...)`。
3.  **`JW2` (UI初始化)**：启动 1 秒小循环，保存初始秒数 20。
4.  **`JG2` (每秒执行)**：读取数字 -> 减1 -> 刷新屏幕。

---

## 4. 与 C++ Hook 现象的对应关系

*   **采样频率**：在 Native 报表中看到 `TimerGetRemaining` 的频率约为 19 次/秒，这可能是由 `JG2` 内部或是其他关联的 `TimerDialog` 导致的。
*   **数值重置**：每当 `K12` 切换玩家时，都会调用一次 `JW2`，于是哈希表里的 Key 57 被重新设为 20。在屏幕上就会看到数字从 1 变回 20。
*   **Hook 建议**：可以通过 Hook `SaveInteger` 并监控 **Key 57**，直接拿到当前逻辑层认为的剩余秒数。

---

## 5. 结论

`JW2` 是连接“游戏逻辑”与“玩家视觉”的桥梁。它不决定谁选英雄，只负责**让玩家看到时间在动**。

**建议存储文件名：** `war3map_hero_pick_ui_timer.j`
**主要功能：** 初始化每秒一次的 UI 倒计时触发器，并存储初始时长及显示坐标。