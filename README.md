# ballooncatt.github.io

Personal academic homepage of **Dongjie Fu (付栋杰)** — live at <https://ballooncatt.github.io>.

## 📁 目录结构

```
homepage/
├── index.html                 主页（单页，所有内容都在这里）
├── deploy.sh                  一键推送到 GitHub 的脚本
├── README.md
└── assets/
    ├── style.css              所有样式
    ├── avatar.svg             默认头像（红底白字 "D"）
    ├── avatar.jpg             ← 把你的真人照片放这里（可选）
    ├── favicon.svg            网页 icon
    └── papers/                ← 论文模型图放这里
        ├── README.md          说明每张图叫什么文件名
        ├── pachat.png         ← 自己截图后放进来
        ├── omnichat.png
        └── ...
```

## 🚀 部署（推到 GitHub Pages）

在 `homepage/` 目录里运行：

```bash
bash deploy.sh "init homepage"
```

脚本会自动：
1. 初始化 git 仓库
2. 关联 `https://github.com/ballooncatt/ballooncatt.github.io.git`
3. 拉取远端的初始 README 防止冲突
4. 提交所有文件并推送到 `main` 分支

推送完成后：
- 去 **GitHub → Settings → Pages → Source: Deploy from branch → Branch: main / (root) → Save**
- 等 1–2 分钟，访问 <https://ballooncatt.github.io>

## 🖼️ 添加论文模型图

1. 打开论文 PDF，找到 Figure 1（或最能体现模型架构的图）
2. macOS：`Cmd + Shift + 4` 截图
3. 按 `assets/papers/README.md` 里的对应表重命名
4. 拖进 `assets/papers/` 目录
5. 再次运行 `bash deploy.sh "add paper figures"`

**找不到图也没关系** — 页面会自动 fallback 成彩色占位块，不会报错。

## 🛠 本地预览

```bash
cd homepage
python3 -m http.server 8000
```

然后浏览器打开 <http://localhost:8000>

## ✏️ 修改内容

整站只有一个文件：`index.html`。
- 改 News → 找 `id="news"` 区块
- 改 Publications → 找 `id="publications"` 区块
- 改实习 → 找 `id="internships"` 区块
- 改颜色字体 → 改 `assets/style.css` 里 `:root` 的 CSS 变量
