# 南方科技大学本科学位论文模板 sustechthesis

[![Actions Status](https://github.com/Iydon/sustechthesis/actions/workflows/verify-compile.yaml/badge.svg)](https://github.com/Iydon/sustechthesis/actions/workflows/verify-compile.yaml)
[![GitHub downloads](https://img.shields.io/github/downloads/Iydon/sustechthesis/total)](https://github.com/Iydon/sustechthesis/releases)
[![Download Analysis](https://img.shields.io/badge/Download-Analysis-blue.svg)](https://qii404.me/github-release-statistics/?repo=/Iydon/sustechthesis/)
[![GitHub commits](https://img.shields.io/github/commits-since/Iydon/sustechthesis/latest)](https://github.com/Iydon/sustechthesis/commits/master)
[![GitHub release](https://img.shields.io/github/v/release/Iydon/sustechthesis?&label=%E5%8F%91%E5%B8%83%E7%89%88)](https://github.com/Iydon/sustechthesis/releases/latest)

Southern University of Science and Technology LaTeX Template for bachelor's thesis.

## 下载

* 发布版：[GitHub Release](https://github.com/Iydon/sustechthesis/releases/latest)
* 开发版：直接 Git clone，或者点击绿色 `Code` 下载 ZIP 压缩包。此版本不保证稳定性，提供给有经验的 TeX 用户使用。

## 模板使用

请阅读 [main.pdf 文档](https://github.com/Iydon/sustechthesis/releases/latest)。

## 文档架构

* `main.tex`: 主文档，编排章节顺序。
* `main_english.tex`: 英文主文档，编排章节顺序。
* `config/info.tex`: 论文信息，例如：标题、作者等。
* `config/preamble.tex`: 导言区，导入宏包、宏定义。
* `slides.tex`: Beamer 幻灯片模板。

## XeLaTeX 构建

* 使用 Makefile：`make`、`make clean` 等
* 或使用 `latexmk`：
  * 构建：`latexmk main`
  * 清理：`latexmk -c main`

## 使用 LaTeX 在线编辑器

* 使用 [南科大 ShareLaTeX](https://sharelatex.cra.moe/)，使用方式与 Overleaf 相同，上传 zip 压缩包后，更改编译器为 `XeLaTeX`。
* 使用 [LoongTeX](https://www.loongtex.com/)，使用方式与 VS Code 类似，上传 zip 压缩包后，选择编译的主文档，并将编译选项设置为 `XeLaTeX`。
* 使用 [TeXPage](https://www.texpage.com/)，使用方式与 Overleaf 类似，上传 zip 压缩包后，选择编译的主文档，并将编译选项设置为 `XeLaTeX`。
* 使用 [Overleaf](https://www.overleaf.com/)（需要科学上网保证稳定使用），上传 zip 压缩包后，更改编译器为 `XeLaTeX`。
  * ⚠️ 由于 Overleaf 将免费账户的超时时间缩短到 20 秒，因此如果您在使用免费账户，可能无法成功完成项目的编译。[Overleaf 官方声明](https://www.overleaf.com/blog/changes-to-free-compile-timeouts-and-servers)

## 更新日志

每个版本的详细更新日志，请见 [CHANGELOG.md](CHANGELOG.md)。

## 致谢

* 本模板根据南方科技大学教学工作部发布的本科生毕业设计论文相关[《撰写规范》和《样例》](https://tao.sustech.edu.cn/xueshengfuwu/biyelunwen/)编写，如有冲突以官网规定为准。
  * 如果《样例》中存在与《撰写规范》中的规定不符之处，以《撰写规范》中的文字叙述为准。

## 正式版本发布流程

1. 手动更新 `CHANGELOG.md`
2. 手动更新 `sustechthesis.cls` 中定义的版本号 `\version`
3. 使用 git 命令行工具，打 tag 并推送到远端仓库

```shell
# 标记本地 tag
git tag v1.2.0
# 推送本地 tag 到远程
git push origin v1.2.0

# 删除本地 tag
git tag -d v1.2.0
# 删除远程 tag
git push --delete origin v1.2.0
```
