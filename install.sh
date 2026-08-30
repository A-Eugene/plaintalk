#!/usr/bin/env bash
# Claude Code: copy the skill into ~/.claude/skills. Copies, never symlinks.
set -eu; cd "$(dirname "$0")"
mkdir -p ~/.claude/skills/plaintalk && cp SKILL.md ~/.claude/skills/plaintalk/SKILL.md
echo "installed: ~/.claude/skills/plaintalk/SKILL.md"
echo "claude.ai: upload dist/plaintalk.zip under Settings > Customize > Skills"
