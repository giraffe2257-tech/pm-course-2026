# Part 5 · 50 min — 分組實作：學術場景

每組 3-4 人，從以下情境中選一個。

## Scenario A — Literature Review 加速器

- **難度**: ⭐⭐⭐
- **時間**: 20-25 min
- **描述**: 批量處理 PDF 論文，自動提取重點生成比較表

### Steps

1. 讀取單篇 PDF，提取 research question / methodology / findings / limitations
2. 批量處理，輸出結構化 CSV 比較表
3. 根據比較表識別 research gap

### Prompt 範例

> "Read this PDF and extract: (1) research question, (2) methodology, (3) sample size, (4) key findings, (5) limitations. Output as CSV row."

### Output

`literature_matrix.csv` + gap analysis

### Skills

- 檔案批量處理
- 結構化 prompt 設計
- 迭代精修欄位

### Academic Integrity

可以整理比較。不可以直接生成你沒讀過的 critical analysis。

---

## Scenario B — Group Project 會議追蹤

- **難度**: ⭐
- **時間**: 15-20 min
- **描述**: 雜亂會議紀錄 → 結構化 minutes + action item tracker

### Steps

1. 貼上 raw meeting notes，整理成 structured minutes
2. 生成 tracker.md，checkbox 追蹤 TODO
3. 下次開會前 diff 上週 tracker，標出 overdue
4. 累積 3 週後生成 progress summary

### Prompt 範例

> "Organize into: (1) Key Decisions, (2) Action Items with owner and deadline, (3) Open Questions. Then update tracker.md."

### Output

`meetings/weekN.md` + `tracker.md`

### Skills

- 非結構化 → 結構化轉換
- 檔案持續維護
- 跨 session 累積使用

### Academic Integrity

完全 OK — productivity tool，無學術誠信疑慮。

---

## Scenario C — 問卷數據快速分析

- **難度**: ⭐⭐⭐
- **時間**: 25-30 min
- **描述**: 100 份 CSV 問卷 → 統計分析 + 圖表 + findings 初稿

### Steps

1. 讀取 CSV，產出 descriptive statistics
2. 生成 Python 腳本跑 cross-tabulation
3. 自動產出圖表（matplotlib/plotly）
4. 根據結果撰寫 findings 段落初稿

### Prompt 範例

> "Read survey.csv. Run descriptive stats. Cross-tabulate Q3 (age) against Q7 (adoption). Generate stacked bar chart for academic paper."

### Output

`analysis.py` + `charts/` + `findings_draft.md`

### Skills

- 數據分析自動化
- 圖表客製化迭代
- 程式碼生成與執行

### Academic Integrity

生成分析腳本 OK。AI 寫的 findings 只能當初稿，你必須驗證每個數字。

---

## Scenario D — Reference 管理與格式轉換

- **難度**: ⭐⭐
- **時間**: 15-20 min
- **描述**: 散落引用 → 統一 Harvard style + 一致性檢查

### Steps

1. 把各種格式引用資料解析成統一 JSON
2. 轉換為 Harvard referencing style
3. 檢查 in-text citation vs reference list 一致性
4. 產出缺失引用 + 幽靈引用報告

### Prompt 範例

> "Parse references into structured fields. Format as Harvard style. Cross-check against paper for missing or orphan citations."

### Output

`references_harvard.md` + `citation_audit.md`

### Skills

- 格式解析與轉換
- Cross-referencing
- 品質檢查自動化

### Academic Integrity

完全 OK — 格式化工具，等同 Zotero / Mendeley。

---

## Scenario E — Dissertation 結構化寫作助手

- **難度**: ⭐⭐
- **時間**: 20-25 min
- **描述**: 大論文拆小檔案，AI 當 writing coach 逐章 review

### Steps

1. 根據 outline 建立資料夾 + 檔案結構
2. 每個檔案填入 writing prompt（問題、source、字數）
3. 寫完一節後讓 AI review 邏輯連貫性
4. 合併所有 section，檢查 transition 和 flow

### Prompt 範例

> "Create folder structure with one .md per section. Include: key question, suggested sources, word count target, connection to previous section."

### Output

folder structure + `review_feedback.md`

### Skills

- 大型文件拆分管理
- AI 作為 reviewer 而非 writer
- 迭代改進

### Academic Integrity

組織思路 + review 邏輯 = OK。生成 argument + 寫結論 = 不 OK。

---

## 情境選擇建議

| 情況                  | 建議                                            |
|-----------------------|-------------------------------------------------|
| 只有 30 min 實作      | **B**（最直覺、人人有感）                       |
| 45 min，展現多面向    | **B + D**（流程管理 + 格式自動化）              |
| 60 min，分組各做      | **A / B / C / D** 各一組，最後 demo 互學        |
| 想引發最深討論        | **C 或 E**（academic integrity 灰色地帶最多）   |
| 技術門檻（低→高）    | B → D → E → A → C                              |
