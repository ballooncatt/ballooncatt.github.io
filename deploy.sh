#!/usr/bin/env bash
# =========================================================
# 一键部署到 ballooncatt.github.io
# 用法：在 homepage/ 目录里运行   bash deploy.sh "提交信息"
# =========================================================
set -e

MSG="${1:-update homepage}"

# 仓库地址
REMOTE="https://github.com/ballooncatt/ballooncatt.github.io.git"

# 如果当前目录还不是 git 仓库，就初始化并关联 remote
if [ ! -d .git ]; then
  echo "→ 初始化 git 仓库..."
  git init -b main
  git remote add origin "$REMOTE"
  # 拉一下远端的 README（仓库初始化时勾了 README）
  git fetch origin main || true
  if git rev-parse --verify origin/main >/dev/null 2>&1; then
    git reset --mixed origin/main
  fi
fi

git add .
git commit -m "$MSG" || echo "(没有新改动)"

# 推送
echo "→ 推送到 $REMOTE ..."
git push -u origin main

echo ""
echo "✅ 完成！"
echo "等 1-2 分钟后访问： https://ballooncatt.github.io"
echo ""
echo "如果还没开 GitHub Pages："
echo "  GitHub 仓库 → Settings → Pages → Source: Deploy from branch → Branch: main / (root) → Save"
