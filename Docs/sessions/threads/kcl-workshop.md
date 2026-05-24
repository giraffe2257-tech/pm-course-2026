---
thread: kcl-workshop
status: active
started: 2026-05-23
last-updated: 2026-05-23
---

# KCL Claude Code Workshop

為 King's College London MSc Technology Management 碩士生設計的 3 小時 Claude Code 入門 workshop。對象是非 CS 背景學員,目標讓他們親自跑過「下指令 → 輸出 → 判斷」的完整循環。

## 現狀摘要

已完成「規劃 → 可執行套件」的第一個大循環:
- ✅ 課綱定稿(`課綱.md`)— 含 Part 0-8 詳細內容
- ✅ Exercises 素材就緒(7 場景 / 20 個檔案)
- ✅ Workshop 配置檔(`CLAUDE.md`)+ Cursor 代勞安裝文件(`setup.md`)
- ✅ Apple HIG 版網頁(`index.html` v2.1)
- ✅ 三層素材交付方案就位(Cursor 代勞 + GitHub 連結 + USB/AirDrop)

接下來進入「polish + 講師工具包」階段:用 impeccable skill 優化網頁、寫 Speaker Notes、寫 Part 0 開場逐字稿。

## 時間線

| 日期 | Session | 重點 |
|------|---------|------|
| 2026-05-23 | S1 | 從 handoff 出發,建 7 場景素材、課綱、CLAUDE.md、setup.md;index.html 兩次重做(Editorial → Apple HIG);裝 impeccable skill |

## 累積決策

- **Cursor 代勞安裝** — 學員只手動裝 Cursor + git clone;Node.js / Claude Code / API key 由 Cursor AI 依 `setup.md` 自動裝。同時當 AI Agent 的隱性 demo
- **Part 6 刪除** — Governance 對 3 小時 workshop 太重;日後可加回
- **Part 0 加入** — 5-8 分鐘開場,三個 Why(now / me / this workshop)+ 三個 promise
- **Part 4 練習改 demo** — 學員此時還沒實作經驗,改成講師投影展示三個對應 Part 5 場景的範例
- **Part 5 場景重組** — 從 5 個學術 (A-E) → 4 大類 7 子場景:學術(A-D)、協作(E)、生活(F)、職涯(G)
- **CLAUDE.md 教學設計** — Part 3 埋疑問(repo 已有 CLAUDE.md 但不講)→ Part 7 顯性點題用 Dissertation 範例
- **第一次 workshop 不要求課前準備** — 全部 setup 課堂內處理
- **網頁設計轉 Apple HIG** — 取代第一次 Editorial Programme 版本;更符合非 CS 學員的視覺習慣

## 當前待辦

- [ ] **重啟 Claude Code** 載入 impeccable skill
- [ ] 用 `/impeccable` 對 Apple HIG 版網頁做 critique / polish
- [ ] Part 0 開場逐字稿(handoff 高優先)
- [ ] Speaker Notes 全集(8 個 Part)
- [ ] Obsidian 入門 3 分鐘 demo 腳本(Part 8)
- [ ] GitHub push workshop repo 所有改動(先確認 push 權限)
- [ ] README.md(repo 根目錄)
- [ ] LICENSE

## 關鍵檔案位置

| 檔案 | 路徑 |
|------|------|
| 課綱(主檔,先改這個再同步網頁) | `/pm course/課綱.md` |
| 網頁 | `claude-code-workshop/index.html` |
| Workshop 配置 | `claude-code-workshop/CLAUDE.md` |
| Cursor 安裝文件 | `claude-code-workshop/setup.md` |
| 7 場景素材 | `claude-code-workshop/exercises/{academic,collaboration,london-life,career}/...` |
| 原始 handoff | `/pm course/kcl-workshop-handoff.md` |
