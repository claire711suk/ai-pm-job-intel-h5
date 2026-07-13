#!/bin/bash
set -e
source "$HOME/.claude/ai-pm-daily-report.env"
cd "/Users/clairewei/.claude/ai-pm-job-intel-h5-automation"
git pull --quiet
claude -p "$(cat daily-prompt.txt)" --permission-mode bypassPermissions
