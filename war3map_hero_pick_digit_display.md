这个函数 **`JE2`** 是选人倒计时 UI 的**最终表现层渲染器**。它揭示了游戏屏幕上那个跳动的数字是如何通过图片（Image）拼接出来的。

---

# RD 模式 UI 数字图片渲染逻辑分析报告 (Function `JE2`)

本报告解析 `JE2` 函数如何将倒计时的整数秒数（如 20, 19...）拆分为十位和个位，并映射到对应的 `.blp` 图片资源进行显示。

## 1. 核心源代码分析

```jass
function JE2 takes integer JF2, integer r, integer g, integer b, integer a, real x, real y, integer S5I returns nothing
    // JF2 是传入的剩余秒数数字
    if StringLength(I2S(JF2)) > 1 then
        // --- [1] 处理两位数 (10-20秒) ---
        // 取十位数：将数字转为字符串，截取第1位，拼凑路径 "Fonts\X.blp"
        call JD2("Fonts\\" + SubString(I2S(JF2), 0, 1) + ".blp", 90, 90, x - 20, y, 0, true)
        call SetImageColor(MK, r, g, b, a)
        call SaveImageHandle(LY, (S5I), (158), (MK)) // 存入哈希表 Key 158 (十位图片)

        // 取个位数：截取字符串第2位
        call JD2("Fonts\\" + SubString(I2S(JF2), 1, 2) + ".blp", 90, 90, x + 20, y, 0, true)
        call SetImageColor(MK, r, g, b, a)
        call SaveImageHandle(LY, (S5I), (159), (MK)) // 存入哈希表 Key 159 (个位图片)
    else
        // --- [2] 处理一位数 (0-9秒) ---
        // 强制显示十位为 "0"
        call JD2("Fonts\\0.blp", 90, 90, x - 20, y, 0, true)
        call SetImageColor(MK, r, g, b, a)
        call SaveImageHandle(LY, (S5I), (158), (MK))

        // 显示当前个位数数字
        call JD2("Fonts\\" + SubString(I2S(JF2), 0, 1) + ".blp", 90, 90, x + 20, y, 0, true)
        call SetImageColor(MK, r, g, b, a)
        call SaveImageHandle(LY, (S5I), (159), (MK))
    endif
endfunction
```

---

## 2. 核心逻辑拆解

### 2.1 字符串切片技术
脚本使用了 `I2S` (整数转字符串) 和 `SubString` (字符串截取) 来解析数字：
*   **两位数时**：例如输入 `20`，截取 `"2"` 和 `"0"`。
*   **一位数时**：例如输入 `9`，补一个 `"0"`，显示为 `09`。

### 2.2 纹理资源映射
数字并不是简单的文字，而是特定的美术资源。
*   路径模板：`Fonts\<数字>.blp`
*   位置偏移：
    *   十位图片放在 `x - 20`。
    *   个位图片放在 `x + 20`。
*   这就解释了为什么在性能报表里看到大量 `SubString` 的调用。

### 2.3 颜色与透明度应用
通过 `SetImageColor` 应用了在 `JG2` 中计算好的颜色（如小于6秒变红）。
*   **`MK` 变量**：这是一个全局变量，通常由 `JD2`（内部封装了 `CreateImage`）在创建图片后赋值，代表当前操作的图片对象。

---

## 3. C++ Hook 深度启发

基于这个函数的逻辑，可以实现最精准的“倒计时字符”抓取：

### 方案：拦截 `JD2` 函数的参数
如果 `JD2` 是一个 Native 函数或可以定位的函数：
1.  **参数 1** 是图片的路径字符串。
2.  可以拦截到类似 `"Fonts\1.blp"` 和 `"Fonts\9.blp"` 的参数。
3.  **结论**：拼起来就是 `"19"`。

### 关联性能报表
*   **`SubString` (536次)**：完美对应了每秒拆分数字的逻辑。
*   **`SetImageColor` (2320次)**：对应了为拆分后的图片设置颜色。
*   **`I2S` (1626次)**：对应了将秒数转化为字符串。

---

## 4. 总结

| 项目 | 内容 |
| :--- | :--- |
| **渲染对象** | 使用 `.blp` 图片拼接数字 |
| **显示格式** | 始终保持两位数（如 09, 08） |
| **图片槽位** | 哈希表 Key 158 (十位), Key 159 (个位) |
| **资源路径** | `Fonts\0.blp` 到 `Fonts\9.blp` |

**文件名建议**：`war3map_hero_pick_digit_display.j`
**主要功能**：将倒计时整数拆分为单个数字图片，实现 2D UI 的视觉渲染，并支持动态变色。