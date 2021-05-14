# sustechthesis

南方科技大学论文模板（本科）

Southern University of Science and Technology Thesis Template LaTeX Template.
Not Finished yet.

# 下载

如您熟悉使用Git工具，例如：`git clone ${GIT_REPO_PATH}`。

如**不熟悉**，直接点击绿色 `Code` 下载ZIP压缩包。

# 模板使用

请阅读 [文档](https://github.com/Iydon/sustechthesis/blob/master/main.pdf).

# 文档架构

* `config/preamble.tex`: 导言区，导入宏包，宏定义
* `config/info.tex`: 论文信息，例如：标题，作者，等
* `main.tex`: 主文档，编排章节顺序。


# 构建
- 使用 Makefile: `make`, `make clean` ......
- 或，使用 `latexmk`
    - 构建: `latexmk main`
    - 清理: `latexmk -c main`

# ⚠️ 注意

[Main.pdf](./main.pdf) 或 [Slides.pdf](Slides.pdf) 格式并不是最新版本，如需查看最新示例文件，请在 [Github Actions](https://github.com/Iydon/sustechthesis/actions/workflows/compile.yaml) workflow 任务中下载最新的 Artifacts `PDF`。

# 开发发布

使用 tag 发布版本。

PS: `git push --tag` 仅在本地发布, 需运行 `git push` 将本地 tag 推到远端。