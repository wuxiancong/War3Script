# 英雄选择确认与实体生成逻辑分析报告 (Function `JR2`)

本报告针对 Jass 脚本中的函数 `JR2` 进行深度解析。该函数是英雄选择过程的**终点**，负责将选人场中的“展示模型”转化为玩家在地图上实际操作的“英雄实体”。

---

## 1. 源代码分析 (`function JR2`)

```jass
function JR2 takes player p, integer MLI, boolean randomed returns nothing
    local integer i = T0I(p)          // 获取玩家在阵营内的索引 (如 0-4)
    local real d                      // 用于缩放比例的变量
    
    if T3I(p) == false then           // 安全检查：玩家是否有效
        return
    endif

    // --- [1] 处理选人场中的展示模型 (Preview Unit) ---
    // QA0[MLI] 是位于 RD 圆圈中的第 MLI 个英雄单位
    if TII(p) then                    // 如果是近卫玩家 (Sentinel)
        call SetUnitPosition(QA0[MLI], QB0[i], QC0[i]) // 移动到近卫展示位
        set d = QDI(SMI(QA0[MLI])-0.3, 0.5)            // 计算缩放修正
        call SetUnitScale(QA0[MLI], d, d, d)           // 缩放模型
        call SetUnitFacing(QA0[MLI], 270)              // 面向下方 (泉水方向)
        call UnitRemoveAbility(QA0[MLI], 1097690998)   // 移除预选状态技能
    else                              // 如果是天灾玩家 (Scourge)
        call SetUnitPosition(QA0[MLI], QD0[i], QE0[i]) // 移动到天灾展示位
        set d = QDI(SMI(QA0[MLI])-0.3, 0.5)
        call SetUnitScale(QA0[MLI], d, d, d)
        call SetUnitFacing(QA0[MLI], 90)               // 面向上方 (泉水方向)
        call UnitRemoveAbility(QA0[MLI], 1097690998)
    endif

    // 设置展示模型的外观状态
    call SetUnitColor(QA0[MLI], GetPlayerColor(p))      // 变更为玩家颜色
    call PauseUnit(QA0[MLI], true)                      // 锁定展示模型
    call SetUnitOwner(QA0[MLI], p, true)                // 变更归属权

    // --- [2] 逻辑标记更新 ---
    set QP0[GetPlayerId(p)] = true    // 核心标记：标记该玩家【已完成选人】
    set Q90[MLI] = true               // 核心标记：标记该英雄槽位【已被占用】

    // --- [3] 在泉水创建真实的英雄实体 (Real Hero) ---
    // Q80[MLI]：从槽位映射表中获取英雄索引
    // DC0[...]：从代码码表中查出对应的单位 ID (如 'KH2 ', 'Q80 ')
    if TII(p) then                    // 近卫泉水出生
        set K1[GetPlayerId(p)] = CreateUnit(p, DC0[Q80[MLI]], GetRectCenterX(O4), GetRectCenterY(O4), 0)
    else                              // 天灾泉水出生
        set K1[GetPlayerId(p)] = CreateUnit(p, DC0[Q80[MLI]], GetRectCenterX(S3), GetRectCenterY(S3), 0)
    endif
endfunction
```

---

## 2. 核心功能拆解

### 2.1 视觉“幻影”转换
在 RD 模式中，圆圈里站着的 24 个英雄其实是“演员”（Handle 保存在 `QA0` 数组中）。
当玩家点击确认或 20 秒超时后，`JR2` 会将这个“演员”从圆圈中瞬移到泉水旁的展示台，并调整其大小和朝向。这给玩家一种“我已经选定了这个英雄”的视觉反馈。

### 2.2 真正的单位创建
这是 Hook 插件能监控到 `KH2` 等 Rawcode 的根本原因。
*   函数通过 `Q80[MLI]` 找到这个槽位对应的英雄 ID（例如 111 号）。
*   通过 `DC0[111]` 查到它的真实 ID（例如 `'KH2 '`）。
*   在泉水区域（`O4` 或 `S3`）调用 **`CreateUnit`**。
*   生成的单位句柄存入 **`K1`** 数组，这是游戏后续逻辑中代表玩家英雄的唯一变量。

### 2.3 状态锁定
通过 `set QP0[...] = true`，该玩家被标记为已选人。上一轮提到的 `K12` 监控函数会每 20 秒检查这个 `QP0`。如果为 `true`，则不会触发强制随机，流程顺利进入下一位玩家。

---

## 3. 关联关系表

| 变量/代码 | 作用 | 备注 |
| :--- | :--- | :--- |
| **`MLI`** | 槽位索引 | 代表圆圈中的 1-24 号英雄位置 |
| **`randomed`** | 随机标志 | 区分是玩家自选还是 `K12` 强加的随机 |
| **`QA0`** | 展示单位数组 | 存储选人场里那些“动不了”的英雄模型 |
| **`Q80`** | 槽位->英雄映射 | 记录第几个槽位具体是哪个英雄 (Index) |
| **`DC0`** | 英雄代码库 | 存储类似 `'KH2 '` 的 32 位 ID 数组 |
| **`K1`** | 玩家英雄变量 | 存储玩家在游戏中真正操作的单位句柄 |

---

## 4. 结论与辅助开发建议

`JR2` 是英雄从“待选状态”切换到“出场状态”的关键关卡。

*   **Hook 建议**：拦截 `CreateUnit` 时，如果位置是在 `O4` 或 `S3` 附近，且 ID 属于 `DC0` 列表，即可断定这是一次成功的英雄选择。
*   **数据采集**：通过记录 `MLI` 和对应的 `DC0[Q80[MLI]]`，可以准确统计本局 RD 模式中，哪些英雄被选走了，哪些英雄被留在了圆圈里。

**建议存储文件名：** `war3map_hero_pick_finalizer.j`
**主要功能：** 执行英雄确认逻辑、展示模型位移、泉水实体单位创建及状态位锁定。