#!/usr/bin/env bash
# 绑定远端仓库（首次发布或换仓库时用）
# 用法（Git Bash 中执行）：
#   bash publish.sh                    # SSH 方式（默认，需先把公钥加到 GitHub）
#   bash publish.sh di9988             # 指定用户名，SSH
#   bash publish.sh di9988 https       # HTTPS 方式（需 Personal Access Token 作为密码）
set -e

USER="${1:-di9988}"
PROTO="${2:-ssh}"
REPO="$USER.github.io"

git branch -M main
git remote remove origin 2>/dev/null || true

if [ "$PROTO" = "https" ]; then
  URL="https://github.com/$USER/$REPO.git"
  echo "HTTPS 方式：push 时用户名填 $USER，密码填 Personal Access Token（不是登录密码）"
else
  URL="git@github.com:$USER/$REPO.git"
  echo "SSH 方式：请确保 ~/.ssh/id_ed25519.pub 已添加到 https://github.com/settings/keys"
fi

git remote add origin "$URL"
echo "远端仓库：$URL"
echo
echo "下一步执行：  git push -u origin main"
