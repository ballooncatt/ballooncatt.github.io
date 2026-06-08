# 论文模型图清单

把每篇论文的模型图（一般是论文里的 Figure 1 / Framework / Overview）截图后，
按下列文件名放到这个目录即可。**找不到的图会自动 fallback 成彩色占位块**，所以不急可以慢慢补。

推荐尺寸：**约 2:1 宽高比**（例如 520×340 或更大），格式 PNG / JPG / WebP 均可。
页面里会自动 `object-fit: cover` 裁剪显示。

## 文件名 → 论文对应表

| 文件名 | 论文 | 推荐来源 |
|---|---|---|
| `pachat.png`      | PACHAT (EMNLP 2025)               | https://aclanthology.org/2025.emnlp-main.1492/ 里 Figure 1 |
| `omnichat.png`    | OmniChat (ShareChatX)             | https://arxiv.org/abs/2501.01384 里 Figure 1 |
| `voxdialogue.png` | VoxDialogue (ICLR 2025)           | 论文 Figure 1（数据集构造流程） |
| `pcd.png`         | PCD — ACM MM 2024 Oral            | https://dl.acm.org/doi/abs/10.1145/3664647.3681347 |
| `imp.png`         | IMP (IEEE TIP)                    | TIP 论文 Figure 1 |
| `aha-bench.png`   | AHa-Bench (NeurIPS 2025)          | https://neurips.cc/virtual/2025/loc/san-diego/poster/121405 |
| `synctalklip.png` | SyncTalklip (ACM MM 2024)         | 论文 Figure 1 |
| `mars-sep.png`    | MARS-Sep (ICLR 2026)              | 论文 Figure 1 |
| `trier.png`       | TRIER (ACM TOIS)                  | 论文 Figure 1 |
| `mcr.png`         | MCR (KDD 2025)                    | 论文 Figure 1 |
| `mpod123.png`     | MPOD123 (CVPR 2024)               | 论文 Figure 1 |

## 怎么快速截图

1. 在论文 PDF 里找到 Figure 1（或者最能体现模型架构的图）
2. macOS：`Cmd + Shift + 4` → 拖选范围 → 自动保存到桌面
3. 重命名成上表里的文件名 → 拖进这个目录
4. 刷新页面就能看到了

## 头像

如果想换成真人照片：放一张 `avatar.jpg` 到 `assets/` 下（圆形显示，建议正方形 ≥ 400×400），
找不到会自动 fallback 到 `avatar.svg`（红底白字 "D"）。
