# 南方科技大学本科学位论文模板 sustechthesis

[![Actions Status](https://github.com/Iydon/sustechthesis/actions/workflows/compile.yaml/badge.svg)](https://github.com/Iydon/sustechthesis/actions/workflows/compile.yaml)
[![GitHub downloads](https://img.shields.io/github/downloads/Iydon/sustechthesis/total)](https://github.com/Iydon/sustechthesis/releases)
[![GitHub commits](https://img.shields.io/github/commits-since/Iydon/sustechthesis/latest)](https://github.com/Iydon/sustechthesis/commits/master)
[![GitHub release](https://img.shields.io/github/v/release/Iydon/sustechthesis?&label=%E5%8F%91%E5%B8%83%E7%89%88)](https://github.com/Iydon/sustechthesis/releases/latest)

Southern University of Science and Technology Thesis Template LaTeX Template for bachelor's degree.

# 下载

* 发布版：[GitHub Release](https://github.com/Iydon/sustechthesis/releases/latest)
* 开发版：直接 Git clone，或者点击绿色 `Code` 下载ZIP压缩包。此版本不保证稳定性，提供给有经验的 TeX 用户使用。

# 模板使用

请阅读 [main.pdf 文档](https://github.com/Iydon/sustechthesis/releases/latest)。

# 文档架构

* `config/preamble.tex`: 导言区，导入宏包，宏定义
* `config/info.tex`: 论文信息，例如：标题，作者，等
* `main.tex`: 主文档，编排章节顺序。
* `slides.tex`: beamer 幻灯片模版。


# 构建
- 使用 Makefile: `make`, `make clean` ......
- 或，使用 `latexmk`
    - 构建: `latexmk main`
    - 清理: `latexmk -c main`

# 开发发布

使用 tag 发布版本。

```git
#标记本地tag
git tag v1.2.0
#推送本地tag到远程
git push origin v1.2.0
#删除本地tag
git tag -d v1.2.0
#删除远程tag
git push --delete origin v1.2.0
```