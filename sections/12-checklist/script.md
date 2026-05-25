# Pre-Workshop — 課前準備清單｜講師逐字稿

---

[動作：這段可以是課前寄給學生的影片，也可以是 Workshop 當天開場前的引導。語氣輕鬆、像學長在幫學弟妹做行前說明]

嗨，大家好。我是你們 Claude Code Workshop 的講師。

Workshop 那天我們會直接動手操作，所以我需要你們**提前**把環境裝好。如果你當天才開始裝，光是等下載就會吃掉你寶貴的練習時間——相信我，每年都有人這樣，然後前半場都在 debug 環境問題，很可惜。

[停頓]

所以，接下來我要帶你們走一遍課前準備清單，一共五個步驟。如果你跟著做，大概 15 到 20 分鐘就能搞定。不難，我保證。

---

## 步驟一：安裝 Node.js

[切換投影片：Step 1 — Node.js]

第一步，安裝 Node.js。

你可能會想：「我又不是工程師，為什麼要裝 Node.js？」——很好的問題。Node.js 是 Claude Code 的運行環境。你可以把它想像成——你要開車，Node.js 就是那條公路。沒有公路，車再好也開不了。

打開瀏覽器，到 **nodejs.org**，下載 **LTS 版本**——就是那個綠色的按鈕，寫著 "Recommended For Most Users" 的那個。不要選另一個什麼 "Current" 版本，LTS 就對了。版本號 18 以上都可以，現在應該都是 20 或 22 了。

下載完就一路下一步、下一步、安裝完成。Mac 用戶也一樣，下載 `.pkg` 檔案，雙擊安裝就好。

裝完之後怎麼確認有沒有成功？打開你的 Terminal——等一下會教你怎麼找到 Terminal——然後輸入：

```
node --version
```

如果它跑出一個 `v` 開頭的版本號，像是 `v22.1.0`，恭喜你，第一步完成了。

---

## 步驟二：安裝 Claude Code

[切換投影片：Step 2 — Claude Code]

第二步，裝主角——Claude Code。

Node.js 裝好之後，你的電腦上就有了一個叫 `npm` 的工具。npm 是 Node.js 的套件管理器——你不需要懂它是什麼，你只需要知道它可以幫你安裝各種工具。

打開 Terminal，輸入這一行指令：

```
npm install -g @anthropic-ai/claude-code
```

[停頓]

我知道這行看起來很嚇人——什麼 `install -g`、什麼 `@anthropic-ai`——但你不需要理解每個字，就是整行複製貼上、按 Enter。就像你不需要知道 Netflix 的伺服器架構，也可以看劇。

如果你是 Mac 或 Linux 用戶，可能需要在前面加個 `sudo`：

```
sudo npm install -g @anthropic-ai/claude-code
```

然後它會問你密碼，輸入你電腦的登入密碼就好——打字的時候畫面上不會顯示任何東西，這是正常的，不是壞掉了。

裝完之後，輸入：

```
claude --version
```

看到版本號就代表成功了。

---

## 步驟三：準備 API Key

[切換投影片：Step 3 — API Key]

第三步，準備你的 **Anthropic API key**。

這一步很重要。Claude Code 不是免費的開源軟體——它背後連接的是 Anthropic 的 AI 模型，所以你需要一把「鑰匙」來使用它。

你有兩個選擇：

**選擇 A**，去 Anthropic 的 console 網站申請一個 API key。到 **console.anthropic.com**，註冊帳號，然後在 Settings 裡面找到 API Keys，點 "Create Key"。它會生成一串長長的字串——那就是你的鑰匙。**複製下來，存在安全的地方**，因為它只會顯示一次。

API key 是按用量計費的。我們 workshop 的練習量大概會花個幾塊美金，不會太多。

**選擇 B**，如果你已經有 Claude Pro 或 Max 的訂閱，你可以直接用你的訂閱額度，不需要另外申請 API key。第一次啟動 Claude Code 的時候它會問你要怎麼認證，選 subscription 那個選項就好。

[停頓]

兩種方式都可以，選你方便的。如果你不確定，我建議走 **選擇 A**，申請 API key——這樣比較彈性，而且你可以在 console 上面看到你的用量和花費，比較透明。

---

## 步驟四：確認 Terminal 能正常運作

[切換投影片：Step 4 — Terminal]

第四步，確認你的 **Terminal** 可以正常使用。

這一步聽起來很基本，但每年都有人卡在這裡。所以讓我幫你們確認一下。

**如果你是 Mac 用戶**——按 `Command + 空白鍵`，打出 "Terminal"，打開那個黑色背景、白色字的視窗。那就是你的 Terminal。或者你也可以去 Applications → Utilities → Terminal。

**如果你是 Windows 用戶**——搜尋 "Windows Terminal" 或者 "PowerShell"。Windows 11 內建了 Windows Terminal，直接用就好。如果你用的是比較舊的 Windows 10，去 Microsoft Store 下載 Windows Terminal。

**第三個選擇**，不管你是什麼系統，如果你有裝 VS Code——等一下第五步會講——你可以直接用 VS Code 內建的 Terminal。在 VS Code 裡面按 `` Ctrl + ` ``（就是鍵盤左上角那個反引號），Terminal 就會在下方彈出來。

[停頓]

打開 Terminal 之後，隨便輸入一個指令測試一下，比如：

```
echo "Hello World"
```

如果它跑出 `Hello World`，你的 Terminal 是正常的。

順便提一下——你現在對著這個黑色視窗可能會覺得很不習慣。這很正常。但我跟你說，現在網路社群上流傳一句話叫「2026 年必裝環境清單」——Node.js、Git、Claude Code——這些東西已經不是只有工程師才用了。你今天學會打開 Terminal、輸入指令，這個技能本身就很值錢。

---

## 步驟五：安裝 VS Code（選配）

[切換投影片：Step 5 — VS Code（Optional）]

第五步，安裝 **VS Code**。

這一步是選配的——沒裝也不影響 Workshop 的參與。但我強烈推薦你裝。

為什麼？因為 VS Code 加上 Claude Code 是目前社群公認最順手的搭配之一。VS Code 讓你可以同時看到你的程式碼、檔案結構、還有 Terminal——三個視窗並排。當 Claude Code 幫你生成程式碼的時候，你可以即時看到結果，體驗完全不一樣。

到 **code.visualstudio.com**，下載安裝就好。跟裝任何軟體一樣，沒有什麼特別的設定。

---

## 總結

[切換投影片：課前清單總覽]

好，我們來快速回顧一下。Workshop 之前，你需要完成五件事：

[看向觀眾/鏡頭]

一、裝 **Node.js**——去 nodejs.org，下載 LTS 版本。

二、裝 **Claude Code**——Terminal 裡輸入 `npm install -g @anthropic-ai/claude-code`。

三、準備 **API key**——到 console.anthropic.com 申請，或者用你的 Max subscription。

四、確認 **Terminal** 能正常打開和使用。

五、裝 **VS Code**——選配但推薦。

[停頓]

五個步驟，大概 15 到 20 分鐘。如果你遇到任何問題——真的任何問題——不要慌。先把錯誤訊息截圖下來，帶到 Workshop 現場，我們會幫你解決。

但我真心建議你，盡量在課前就搞定。這樣 Workshop 一開始，你就可以直接跟上節奏，把時間花在真正有趣的地方——用 AI 做出東西來。

[停頓]

好，那我們 Workshop 見。帶好你的電腦，帶好你的好奇心。到時候見！

[動作：結束]
