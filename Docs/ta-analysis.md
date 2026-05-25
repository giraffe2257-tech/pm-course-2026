# Target Audience Analysis & Curriculum Review

> Claude Code Workshop · King's College London · Technology Management

## 1. Target Audience Portrait

### 核心畫像：「懂科技語言但不寫 code 的準管理者」

| 維度 | 描述 |
|------|------|
| 學歷背景 | 非 CS 出身，修 Technology Management 碩士，對科技有基本理解但沒有程式開發經驗 |
| AI 使用現狀 | 停留在「用 ChatGPT 聊天」階段，知道 AI 很重要但不知道除了聊天還能幹嘛 |
| 核心痛點 | 跟工程師開會時聽得懂但插不上話；想評估 AI 方案但缺乏實作感；履歷上缺少 AI 實作經歷 |
| 學習動機 | 想親手做出東西而不只是看 demo；想在未來工作中能評估 AI 方案的可行性與成本 |
| 甜蜜點 | 有科技素養 + 沒有實作經驗 — 課綱從術語暖身到三層架構的設計正是為這個區間而生 |

### 適合 vs 不適合

| 適合 | 不適合 |
|------|--------|
| PM / 產品經理背景，想理解 AI Agent 能力邊界 | 已在用 Cursor / Copilot 的開發者（內容太基礎） |
| 管理顧問，需評估企業 AI 導入方案 | 完全沒接觸過電腦操作的人（Terminal 會卡住） |
| 創業者，想用 AI 快速驗證 idea | 追求深度技術理解的 CS 學生（廣度優先，深度不足） |
| 學術研究者，想用 AI 加速論文工作流 | 只想學 ChatGPT prompt 技巧的人（課綱重點在 Agent 不在 chat） |

---

## 2. 學生課後獲得的能力

### Layer 1 — 即時可用（課後馬上能做）

- **用 Claude Code 完成學術任務** — 整理會議紀錄、格式化 reference、分析問卷 CSV、建立論文結構（Part 5 的 5 個 scenario 直接對應碩士日常）
- **寫出結構化 prompt** — CCC 框架（Context / Constraint / Criteria），從「Make me a website」進化到有明確背景、限制、驗收標準的指令
- **基本 Terminal 操作** — 安裝 CLI 工具、在 Terminal 執行命令、理解 Permission Model

### Layer 2 — 判斷力提升（改變思維方式）

- **區分 LLM / Product / Agent 三層架構** — 知道 ChatGPT 和 Claude Code 不是同一層東西，選工具時有框架依據
- **AI 治理意識** — API key 安全、hallucination 風險、學術誠信邊界、成本結構（訂閱制 vs 用量計費）
- **Build vs Buy 決策能力** — 看到一個需求時，能判斷「這該用 AI Agent 做」還是「這找人寫比較好」
- **角色轉換認知** — 從「操作員」（手動複製貼上）到「管理者」（下指令、審核結果）

### Layer 3 — 職涯定位（長期價值）

- **「指揮 AI 寫 code」的自信** — 知道自己不需要會寫 code，但能用 AI 把想法變成可運行的 prototype
- **跟工程師對話的共同語言** — Terminal、Git、Repository、API 這些詞不再陌生
- **AI 方案評估框架** — 能力邊界在哪、成本怎麼算、組織導入怎麼規劃

---

## 3. Curriculum Gap Analysis

### 觀察：Part 7 是價值主張的核心，但時間不足

課綱的核心承諾是「From Chat to Command — 從聊天到指揮」，而 **Part 7（From Prototype to Product）** 是這個承諾的完整兌現：

> Idea → Claude Code Prototype → Feasibility Assessment → Engineering Handoff → Production

但目前 Part 7 只有 **15 分鐘**，且僅為概念講解（CLAUDE.md、Agentic Workflow、Multi-file Editing、Git Integration），**沒有動手環節**。

這導致學生的學習迴圈是不完整的：

```
目前：想法 → Prompt → Prototype → ？（到這裡就結束了）
理想：想法 → Prompt → Prototype → 評估 → Handoff → 交給工程團隊
                                   ^^^^^^^^^^^^^^^^^^^^^^^^
                                   Technology Manager 的核心能力
```

### 問題：Part 5 時間充裕但有效利用率存疑

Part 5（分組實作）佔 **50 分鐘**，提供 5 個 scenario。但根據建議：
- 只有 30 min → 做 1 個（Scenario B）
- 45 min → 做 2 個（B + D）
- 60 min → 分組各做 1 個

實際上 50 分鐘最多做 2 個 scenario，其餘 3 個是備選。這意味著有空間重新分配時間。

---

## 4. Part 7 強化方案

### 時間重新分配

| Part | 原本 | 調整後 | 變化 |
|------|------|--------|------|
| Part 5 — 分組實作 | 50 min | 35 min | -15 min |
| Part 7 — Prototype to Product | 15 min | 30 min | +15 min |

Part 5 縮減方式：選 2 個 scenario（推薦 B + C），每個 15 min 實作 + 5 min debrief。

### Part 7 新結構（30 min）

#### 前半：概念講解（10 min）— 保留原有內容

1. **產品化流程圖** — Idea → Prototype → Feasibility → Handoff → Production
2. **四個進階概念** — CLAUDE.md / Agentic Workflow / Multi-file Editing / Git Integration
3. **PM 的角色定位** — 你不需要寫 production code，但你要能做出 prototype 讓工程師知道你要什麼

#### 後半：Mini Exercise「Engineering Handoff Brief」（20 min）

**場景**：你剛才在 Part 5 用 Claude Code 做出了一個 prototype。現在，假設你是 PM，需要把這個交給工程團隊實作。

**Exercise 步驟**：

1. **（5 min）用 Claude Code 生成 Handoff Brief**
   ```
   Prompt 範本：
   "Read the files in this project. Generate an engineering handoff document that includes:
   1. What this prototype does (functional summary)
   2. What's hardcoded vs what needs to be configurable
   3. Security concerns (API keys, user data, etc.)
   4. Suggested tech stack for production
   5. Estimated effort (T-shirt sizing: S/M/L/XL)"
   ```

2. **（5 min）Review & Edit** — 審閱 AI 生成的 handoff brief，標記你同意/不同意的地方

3. **（5 min）小組互評** — 兩兩交換 handoff brief，用「如果我是工程師，看到這份文件我能開始做嗎？」的標準評分

4. **（5 min）Debrief** — 講師總結：
   - 一份好的 handoff brief 長什麼樣
   - AI 能幫你寫初稿，但判斷力（什麼該 production-ready、什麼該砍掉）是你的價值
   - 這就是 Technology Manager 的完整迴圈：**想法 → AI Prototype → 評估 → 交付**

### 強化後的學生能力增益

原本 Layer 1 的能力止步於「用 Claude Code 做出 prototype」。強化後新增：

- **撰寫 Engineering Handoff Brief** — 能把 AI prototype 轉化為工程團隊可執行的規格
- **Prototype 品質判斷** — 知道哪些是 demo 級 hardcode、哪些需要 production 改造
- **T-shirt Sizing 估算** — 對工程工作量有基本概念，不會提出「一天做完整個系統」的要求
- **完整的 PM-AI 工作迴圈** — 想法 → Prompt → Prototype → 評估 → Handoff，形成可重複的工作方法

---

## 5. 總結

這份課綱的最大價值不在於教學生「怎麼用 Claude Code」，而在於建立一個認知轉換：

> **你不需要會寫 code，但你需要會指揮 AI 寫 code，然後判斷結果能不能用。**

Part 7 的強化讓這個轉換從「半程」變成「全程」— 學生不只帶走「我能做出 prototype」的興奮感，更帶走「我能把 prototype 變成可交付的工程需求」的實用能力。這才是 Technology Management 碩士生在職場上真正需要的差異化技能。
