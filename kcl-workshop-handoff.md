# KCL Claude Code Workshop — Handoff Document

## 專案概述

這是為 **King's College London Technology Management** 碩士生設計的 **Claude Code Workshop**，
目標是讓非 CS 背景的學生理解 AI Agent 工具，能用 Claude Code 將想法快速變成可運行的成果。

- **Repo**: `museReed/claude-code-workshop`（public）
- **GitHub Pages**: 已啟用
- **時長**: 3 小時（170 分鐘 + 10 分鐘休息）
- **對象**: Technology Management 碩士生（不一定寫過程式）
- **教學原則**: 70% 動手 / 30% 講解，商業場景驅動

---

## 目前完成的部分

### index.html（~68KB，single-page website）

一個完整的課程大綱網頁，設計精緻（KCL navy + gold 配色），包含：

| Part | 時長 | 標題 | 內容完整度 |
|------|------|------|-----------|
| 1 | 10 min | AI 術語暖身 | 完整（9 個術語表，含 CORE 標記） |
| 2 | 15 min | AI 的三個層級 | 完整（LLM/Product/Agent 三層圖、ChatGPT vs Claude Code 對比） |
| 3 | 20 min | Setup & First Commands | 完整（4 步 setup + 練習 1） |
| 4 | 25 min | 如何跟 AI 有效溝通 | 完整（CCC 框架 + good/bad prompt 對比 + 練習 2） |
| 5 | 50 min | 分組實作：學術場景 | 完整（5 個場景 A-E，含 steps / prompts / integrity notice） |
| 6 | 15 min | AI Governance & Judgment | 完整（4 個討論主題卡片） |
| 7 | 15 min | From Prototype to Product | 完整（Idea → Production 流程圖 + 4 個進階概念） |
| 8 | 10 min | Wrap-up & Demo | 完整（Demo + 資源 + Q&A 分配） |
| - | - | 課前準備清單 | 完整（5 項 checklist） |

### 技術細節

- **純 HTML + CSS + vanilla JS**（無框架、無 build step）
- **字體**: Google Fonts — Cormorant Garamond（display）、DM Sans（body）、JetBrains Mono（code）、Noto Serif TC（中文）
- **動畫**: CSS transition + IntersectionObserver scroll reveal
- **RWD**: 有 768px / 600px / 480px 三個 breakpoint
- **互動**: 點擊 scenario card 展開詳情、sticky nav scroll 顯示

---

## 缺少的部分（需要你補齊）

### 1. 講師筆記 / Speaker Notes（高優先）

網頁是面向學生的大綱，但**沒有講師教案**。需要：
- 每個 Part 的講師指引（講多久、重點強調什麼、常見學生問題）
- Demo 腳本（Part 2 的 live demo 要跑什麼指令）
- 時間控制提示（哪裡容易超時）
- 備案計畫（如果學生裝不起來怎麼辦）

建議格式：`speaker-notes.md` 或 `teacher-guide.md`

### 2. 練習素材 / Exercise Materials（高優先）

Part 5 有 5 個學術場景（A-E），但 repo 裡沒有配套的練習檔案：
- **Scenario A**（Literature Review）: 需要 3-5 篇 sample PDF
- **Scenario B**（Meeting Notes）: 需要 raw meeting notes 範例
- **Scenario C**（Survey Data）: 需要 `survey.csv` 範例資料（100 rows）
- **Scenario D**（Reference）: 需要混亂格式的 reference list 範例
- **Scenario E**（Dissertation）: 需要 dissertation outline 範例

建議放在 `exercises/` 資料夾，每個 scenario 一個子目錄。

### 3. CLAUDE.md 範例（中優先）

Part 7 提到 CLAUDE.md 是進階概念，但沒有提供範例。建議：
- 一個簡單的 CLAUDE.md 範例（給學生理解用）
- 一個 workshop 專用的 CLAUDE.md（讓學生 clone 後直接用）

### 4. README.md（中優先）

Repo 沒有 README。建議包含：
- Workshop 概述
- 如何在本地預覽（直接開 `index.html` 即可）
- GitHub Pages URL
- 課前準備步驟（跟頁面 checklist 一致）
- 聯絡資訊

### 5. 投影片版本（低優先）

目前只有 web page。如果教室投影需要：
- 可以考慮 reveal.js 版本
- 或者直接用網頁投影（已有 RWD）

### 6. LICENSE（低優先）

Public repo 沒有授權聲明。建議 MIT 或 CC BY 4.0。

### 7. 資源清單頁面（低優先）

Part 8 提到「資源清單」但頁面沒有實際連結。建議加入：
- Claude Code 官方文檔連結
- Anthropic API 申請頁面
- 社群 Discord / GitHub
- 進階學習資源

---

## 如何在你的 Claude Code 上起這個專案

### Step 1: Clone repo

```bash
gh repo clone museReed/claude-code-workshop
cd claude-code-workshop
```

### Step 2: 本地預覽

```bash
# 直接用瀏覽器開
open index.html

# 或起一個 local server
npx serve .
```

### Step 3: 用 Claude Code 開始開發

```bash
claude
```

進入後可以直接說：
- 「讀 index.html，了解目前的課程結構」
- 「幫我建立 exercises/ 資料夾，為每個 scenario 生成練習素材」
- 「寫一份 speaker-notes.md 講師指引」

### Step 4: 建議的 CLAUDE.md

在 repo 根目錄建一個 `CLAUDE.md`，內容建議：

```markdown
# KCL Claude Code Workshop

## 專案結構
- `index.html` — 課程大綱網頁（single-page, 純 HTML/CSS/JS）
- `exercises/` — 分組實作練習素材
- `speaker-notes.md` — 講師教案

## 設計規範
- 配色：KCL Navy (#0E1A2F) + Gold (#D4AD2B)
- 字體：Cormorant Garamond / DM Sans / JetBrains Mono / Noto Serif TC
- 語言：繁體中文為主，技術名詞英文

## 注意事項
- 對象是非 CS 背景碩士生，所有術語需有白話解釋
- 每個場景必須附 Academic Integrity 提示
- 70% 動手 / 30% 講解的比例
```

---

## 5 個學術場景詳細規格

供你設計練習素材時參考：

| 場景 | 難度 | 時間 | 輸入 | 輸出 | Academic Integrity |
|------|------|------|------|------|--------------------|
| A: Literature Review 加速器 | ⭐⭐⭐ | 20-25 min | PDF 論文 | `literature_matrix.csv` + gap analysis | 整理比較 OK，生成 critical analysis 不 OK |
| B: Group Project 會議追蹤 | ⭐ | 15-20 min | Raw meeting notes | `meetings/weekN.md` + `tracker.md` | 完全 OK（productivity tool） |
| C: 問卷數據快速分析 | ⭐⭐⭐ | 25-30 min | `survey.csv`（100 rows） | `analysis.py` + `charts/` + `findings_draft.md` | 生成腳本 OK，AI findings 只能當初稿 |
| D: Reference 管理與格式轉換 | ⭐⭐ | 15-20 min | 混亂格式引用 | `references_harvard.md` + `citation_audit.md` | 完全 OK（等同 Zotero） |
| E: Dissertation 結構化寫作助手 | ⭐⭐ | 20-25 min | Outline | 資料夾結構 + `review_feedback.md` | 組織思路 OK，生成 argument 不 OK |

---

## 聯絡

如有問題，聯繫 Reed（原作者）。
