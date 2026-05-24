#!/bin/bash
# Generate speaker scripts for all sections using claude -p
# Usage: ./scripts/generate_scripts.sh [section_name]
#   No args = generate all missing scripts
#   With arg = generate specific section (e.g. "04-part1-terminology")

set -euo pipefail

# Allow running claude CLI from within a Claude Code session
unset CLAUDECODE 2>/dev/null || true

SECTIONS_DIR="$(cd "$(dirname "$0")/../sections" && pwd)"
SECTIONS=("$@")

# If no args, find all sections missing script.md
if [ ${#SECTIONS[@]} -eq 0 ]; then
  for dir in "$SECTIONS_DIR"/*/; do
    name=$(basename "$dir")
    if [ ! -f "$dir/script.md" ]; then
      SECTIONS+=("$name")
    fi
  done
fi

if [ ${#SECTIONS[@]} -eq 0 ]; then
  echo "All sections already have script.md"
  exit 0
fi

echo "Will generate scripts for ${#SECTIONS[@]} sections:"
printf "  %s\n" "${SECTIONS[@]}"
echo ""

for section in "${SECTIONS[@]}"; do
  section_dir="$SECTIONS_DIR/$section"
  content_file="$section_dir/content.md"
  xhs_file="$section_dir/xhs-articles.md"
  script_file="$section_dir/script.md"

  if [ -f "$script_file" ]; then
    echo "[$section] script.md exists, skipping"
    continue
  fi

  # Build context from available files
  context=""
  if [ -f "$content_file" ]; then
    context+="## 這個段落的教學內容

$(cat "$content_file")

"
  fi

  if [ -f "$xhs_file" ]; then
    context+="## XHS 參考文章（從中汲取觀點和例子來豐富講稿，不要照抄）

$(cat "$xhs_file")
"
  fi

  prompt="你是 KCL Technology Management 碩士課程的 Claude Code Workshop 講師。
請為以下段落撰寫完整的逐字講稿（verbatim speaker script）。

## 講稿規範
- 對象：Technology Management 碩士生，懂科技管理但不一定寫過程式
- 語言：繁體中文為主，技術名詞保留英文
- 風格：口語化、有親和力、適度幽默，像在跟聰明的年輕人聊天
- 這是講師要說的每一句話，不是大綱
- 用 [切換投影片]、[停頓]、[看向觀眾] 等標記重要動作
- 用 [互動] 標記需要觀眾回應的地方
- 開頭承接上一段，結尾銜接下一段
- 如有練習環節，寫出完整引導話術
- 適度融入 XHS 文章的觀點或例子，但自然融入不硬塞
- 長度適中，符合該段落的時間分配

${context}
直接輸出 Markdown 格式的講稿。"

  echo "[$section] generating with claude -p --model opus..."
  echo "$prompt" | claude -p --model opus > "$script_file"
  chars=$(wc -c < "$script_file")
  echo "[$section] done (${chars} bytes)"
  echo ""
done

echo "All scripts generated!"
