# 王东 · 个人主页（GitHub Pages 静态站点）

单文件静态站点：`index.html`（含内嵌头像与全部数据，无外部依赖，可离线打开）。

## 发布

仓库名必须是 `<用户名>.github.io`（当前按 `di9988.github.io` 准备）。

1. 在 GitHub 新建**公开**仓库 `di9988.github.io`（不要勾选 README / .gitignore / License）
2. Settings → Pages → Build and deployment → Source 选 **Deploy from a branch**，分支 `main`，目录 `/ (root)` → Save
3. 1–2 分钟后访问 `https://di9988.github.io`

首次推送：

```bash
git remote add origin https://github.com/di9988/di9988.github.io.git
git push -u origin main
```

## 日常更新

```bash
git add -A
git commit -m "update homepage"
git push
```

## 文件说明

| 文件 | 作用 |
| --- | --- |
| `index.html` | 全部页面内容与样式，改这一个文件即可 |
| `.nojekyll` | 跳过 Jekyll 构建，纯静态直接用（勿删） |
| `404.html` | 自定义 404 页面 |
| `CNAME`（可选） | 绑定自定义域名时新建，内容只写域名，如 `www.example.com` |

## 数据来源

内容整理自深圳大学材料学院教师主页（王东教授），论文列表覆盖 2018–2026 共 66 篇。
生成脚本与原始数据见源工作区的 `wangdong-homepage/_build/`（`parse_wd.py` → `build.py`）。

## 自定义域名（可选）

1. 仓库根目录新建 `CNAME`，写入域名
2. DNS 侧：`www` 加 CNAME 记录指向 `di9988.github.io`；裸域加 A 记录指向
   `185.199.108.153 / 185.199.109.153 / 185.199.110.153 / 185.199.111.153`
3. Pages 设置中填入同一域名，勾选 Enforce HTTPS
