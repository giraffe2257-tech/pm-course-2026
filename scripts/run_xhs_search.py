"""Run all queued XHS keyword searches for workshop sections.

Usage:
    MUSE_ENV=dev ~/Projects/muse-platform/.venv/bin/python scripts/run_xhs_search.py

Connects to already-running Chrome via CDP (port 9222).
Each keyword searches 3 posts sorted by most_liked.
Estimated time: ~15-25 minutes (15 keywords × 3 posts × 30-60s delay).
"""
import asyncio
import os
import subprocess
import sys

# Ensure MUSE_ENV is set
os.environ.setdefault("MUSE_ENV", "dev")

# CDP mode uses Chrome's session cookies directly — no API token needed.
# But run_keyword_search has a pre-flight check that requires XHS_AUTH_TOKEN
# env var to be set. Set a placeholder to pass the check.
os.environ.setdefault("XHS_AUTH_TOKEN", "cdp-mode-no-token-needed")

from pathlib import Path
from muse_red_collector._keyword_search import run_keyword_search, KeywordSearchConfig


KEYWORDS = [
    "AI工作坊开场设计",
    "AI课程目标设计 非技术背景",
    "技术管理者需要的AI能力",
    "三小时工作坊时间安排",
    "AI术语科普 小白入门",
    "ChatGPT和AI Agent区别",
    "Claude Code安装教程入门",
    "AI提示词框架 prompt技巧",
    "AI辅助学术写作 论文工具",
    "企业AI治理 风险管理",
    "AI快速原型到产品落地",
    "工作坊收尾总结技巧",
    "编程工具安装清单 新手",
    "AI时代名言金句",
    "学术诚信AI使用声明",
]


async def main():
    configs = [
        KeywordSearchConfig(
            keyword=kw,
            filter_way="most_liked",
            crawl_count=3,
            batch_size=15,
        )
        for kw in KEYWORDS
    ]

    db_path = Path.home() / ".muse-dev" / "red_collector" / "xhs.db"

    print(f"Starting {len(configs)} keyword searches...")
    print(f"DB: {db_path}")
    print(f"Estimated time: 15-25 minutes\n")

    result = await run_keyword_search(
        configs,
        db_path=db_path,
    )

    print(f"\nDone! Result: {result}")


if __name__ == "__main__":
    asyncio.run(main())
