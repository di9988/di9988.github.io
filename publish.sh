#!/usr/bin/env bash
# 首次发布 / 重新绑定远端仓库
# 用法（Git Bash 里执行）：
#   bash publish.sh            # 默认用户名 di9988
#   bash publish.sh yourname   # 指定其他 GitHub 用户名
set -e

USER="${1:-di9988}"
REPO="$USER.github.io"

git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin "https://github.com/$USER/$REPO.git"

echo "远端仓库：https://github.com/$USER/$REPO.git"
echo "请先在 GitHub 上创建该公开仓库（不要初始化 README），然后执行推送："
echo
echo "  git push -u origin main"
