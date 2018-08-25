% ---------------------------------------
% Southern University of Science and Technology Thesis Template
% LaTeX Template
% Version 0.1 (2018/08/16)
%
% author:
% Iydon and Zhangzj inspired by a template by ywg@USTC and whzecomjm@SUSTC
%
% License:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
% ---------------------------------------

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sustechthesis}[2018/08/16 SUSTechthesis document class.]

% Require XeTeX to cpmpile
\RequirePackage{ifxetex}
\RequireXeTeX

% Dew class options
\newif\ifsustech@chinese\sustech@chinesetrue
% \newif\ifsustech@english\sustech@chinesefalse

% declare options
\DeclareOption{chinese}{\sustech@chinesetrue}
\DeclareOption{english}{\sustech@chinesefalse}

\ExecuteOptions{chinese}
\ProcessOptions

% body
\LoadClass[zihao=-4]{ctexart}
\RequirePackage{geometry}
\geometry{a4paper,top=2.54cm,bottom=2.54cm,left=3.18cm,right=3.18cm}
\RequirePackage{amssymb}
\RequirePackage{setspace}

% fonts
\RequirePackage{xeCJK}
% choose `kaiming' as punctation style
% \xeCJKsetup{PunctStyle=kaiming}
\setCJKmainfont{SimSun}
\RequirePackage{fontspec}
\setmainfont{Times New Roman}
% math font
% \RequirePackage{mathspec}
% \setallmathfont{Times New Roman}

% font and size
\let\宋体\songti
\let\黑体\heiti
\let\仿宋\fangsong
\let\楷书\kaishu
\newcommand{\初号}{\fontsize{42pt}   {\baselineskip}\selectfont}
\newcommand{\小初}{\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\一号}{\fontsize{28pt}   {\baselineskip}\selectfont}
\newcommand{\二号}{\fontsize{21pt}   {\baselineskip}\selectfont}
\newcommand{\小二}{\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\三号}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\小三}{\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\四号}{\fontsize{14pt}   {\baselineskip}\selectfont}
\newcommand{\小四}{\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\五号}{\fontsize{10.5pt} {\baselineskip}\selectfont}
\newcommand{\小五}{\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\六号}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\七号}{\fontsize{5.25pt} {\baselineskip}\selectfont}
\setCJKfamilyfont{zhsong}[AutoFakeBold={2.5}]{SimSun} % fake bold
\newcommand{\粗宋}{\bfseries\CJKfamily{zhsong}}
\setCJKfamilyfont{bftimes}[AutoFakeBold={2.5}]{Times New Roman} % fake bold
\newcommand{\粗英}{\bfseries\CJKfamily{bftimes}}

% cover
% ref: sustcthesis.cls
\newcommand\sustech@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\def\sustech@分类号{}\def\sustech@编号{}
\def\sustech@UDC{}\def\sustech@密级{}
\newcommand\分类号[1]{\def\sustech@分类号{#1}}
\newcommand\编号[1]{\def\sustech@编号{#1}}
\newcommand\UDC[1]{\def\sustech@UDC{#1}}
\newcommand\密级[1]{\def\sustech@密级{#1}}
\newcommand\题目[2]{\def\sustech@大题目{#1}\def\sustech@小题目{#2}}
\newcommand\姓名[1]{\def\sustech@姓名{#1}}
\newcommand\学号[1]{\def\sustech@学号{#1}}
\newcommand\系别[1]{\def\sustech@系别{#1}}
\newcommand\专业[1]{\def\sustech@专业{#1}}
\newcommand\指导老师[1]{\def\sustech@指导老师{#1}}
\newcommand\日期[1]{\def\sustech@日期{#1}}

\ifsustech@chinese
    \renewcommand\maketitle{\make@zhtitle\make@zhcommitment}
\else
    \renewcommand\maketitle{\make@entitle\make@encommitment}
\fi

\newcommand\make@zhtitle{%
    \newgeometry{%
    top=2.25cm,bottom=2.25cm,
    left=2.54cm,right=2.48cm}
    \cleardoublepage
    \thispagestyle{empty}
    \begin{center}
        \begin{tabular}{llr}
            分类号  \sustech@underline[2.3cm]{\sustech@分类号}\hspace{0.45\textwidth}        & 编号\sustech@underline[2.3cm]{\sustech@编号} \\[5pt]
            U\hfill D\hfill C\sustech@underline[2.3cm]{\sustech@UDC}\hspace{0.45\textwidth} & 密级\sustech@underline[2.3cm]{\sustech@密级}
        \end{tabular}\vskip 1.35cm
        \includegraphics[width=0.85\textwidth]{Figures/logos/SUSTech_Logo_zh.pdf}\vskip 0.5cm
        {\粗宋\小初 本科生毕业设计（论文）}
        \vskip 2.7cm
        {\粗宋\三号
        \begin{tabular}{lc}
            题\hfill 目: & \sustech@underline[9cm]{\sustech@大题目}\\[12pt]
            & \sustech@underline[9cm]{\sustech@小题目}\\[2.4cm]
            姓\hfill 名：& \sustech@underline[9cm]{\sustech@姓名}\\[12pt]
            学\hfill 号：& \sustech@underline[9cm]{\sustech@学号}\\[12pt]
            系\hfill 别：& \sustech@underline[9cm]{\sustech@系别}\\[12pt]
            专\hfill 业：& \sustech@underline[9cm]{\sustech@专业}\\[12pt]
            指导教师：& \sustech@underline[9cm]{\sustech@指导老师}\\[12pt]
        \end{tabular}}\vskip 2.25cm
        \宋体\三号\sustech@日期
    \end{center}
    \clearpage
    \restoregeometry
}

\newcommand\make@entitle{%
    \newgeometry{%
    top=2.54cm,bottom=2.75cm,
    left=2.54cm,right=2.48cm}
    \cleardoublepage
    \thispagestyle{empty}
    \begin{center}
        CLC  \sustech@underline[2.3cm]{\sustech@分类号} \hfill Number\sustech@underline[2.3cm]{\sustech@编号}\\[5pt]
        UDC\sustech@underline[2.3cm]{\sustech@UDC} \hfill Available for reference~\quad$\square$Yes~\quad$\square$No
        \vskip 1.8cm
        \includegraphics[width=0.9\textwidth]{Figures/logos/SUSTech_Logo_en.pdf}\vskip 1.6cm
        {\小初 Undergraduate Thesis}
        \vskip 2.7cm
        {\粗英\三号
        \begin{tabular}{rr}
            Thesis Title:& \sustech@underline[9cm]{\sustech@大题目}\\[9pt]
            & \sustech@underline[9cm]{\sustech@小题目}\\[2.1cm]
            Student Name:& \sustech@underline[9cm]{\sustech@姓名}\\[9pt]
            Student ID:& \sustech@underline[9cm]{\sustech@学号}\\[9pt]
            Department:& \sustech@underline[9cm]{\sustech@系别}\\[9pt]
            Program:& \sustech@underline[9cm]{\sustech@专业}\\[9pt]
            Thesis Advisor:& \sustech@underline[9cm]{\sustech@指导老师}\\[10pt]
        \end{tabular}}\vskip 2.1cm
        \三号 Date: \sustech@日期
    \end{center}
    \clearpage\restoregeometry
}

\newcommand\make@zhcommitment{
    \newgeometry{%
    top=3.6cm,bottom=2.75cm,
    left=2.54cm,right=2.48cm}
    \thispagestyle{empty}
    \begin{center}
        \黑体\二号 诚信承诺书
    \end{center}\vskip 1.8cm

    \begin{spacing}{1.45}
    \宋体\四号
    1.本人郑重承诺所呈交的毕业设计（论文），是在导师的指导下，独立进行研究工作所取得的成果，所有数据、图片资料均真实可靠。\par
    2.除文中已经注明引用的内容外，本论文不包含任何其他人或集体已经发表或撰写过的作品或成果。对本论文的研究作出重要贡献的个人和集体，均已在文中以明确的方式标明。\par
    3.本人承诺在毕业论文（设计）选题和研究内容过程中没有抄袭他人研究成果和伪造相关数据等行为。\par
    4.在毕业论文（设计）中对侵犯任何方面知识产权的行为，由本人承担相应的法律责任。
    \vskip 4.5cm

    \hfill 作者签名:\phantom{xxxx月xxxx日}

    \hfill\sustech@underline[1.6cm]{}年\sustech@underline[1cm]{}月\sustech@underline[1cm]{}日
    \end{spacing}
    \clearpage\restoregeometry
}

\newcommand\make@encommitment{
    \newgeometry{%
    top=2.75cm,bottom=2.75cm,
    left=2.54cm,right=2.48cm}
    \thispagestyle{empty}
    \begin{center}
        \huge COMMITMENT OF HONESTY
    \end{center}
    \vskip 0.9cm
    \begin{spacing}{1.45}
    \三号\noindent
    1. I solemnly promise that the paper presented comes from my independent research work under my supervisor's supervision. All statistics and images are real and reliable.\\
    2. Except for the annotated reference, the paper contents no other published work or achievement by person or group. All people making important contributions to the study of the paper have been indicated clearly in the paper.\\
    3. I promise that I did not plagiarize other people's research achievement or forge related data in the process of designing topic and research content.\\
    4. If there is violation of any intellectual property right, I will take legal responsibility myself.
    \vskip 3.63cm
    \hfill Signature:\phantom{abcdefghijklmn}

    \hfill Date:\phantom{abcdefghijklmnopqr}
    \end{spacing}
    \clearpage\restoregeometry
}

\newcommand\摘要标题{
    \begin{center}
        \黑体\二号
        \sustech@大题目\vskip 3pt
        \hfill\小二---\sustech@小题目\vskip 3pt
        \宋体\四号
        \sustech@姓名\\[-1cm]
        \ifsustech@chinese
            （\楷书\小四\sustech@系别\phantom{空}指导教师： \sustech@指导老师）
        \else
            (\小四\sustech@系别  Advisor: \sustech@指导老师)
        \fi
    \end{center}
}

\newenvironment{摘要}{
    \begin{spacing}{1.45}
        \noindent\黑体\三号
        [摘要]：\宋体\四号
}{
    \end{spacing}
}

\renewenvironment{abstract}{
    \begin{spacing}{1.3}
        \noindent\三号
        [ABSTRACT]:\四号
}{
    \end{spacing}
}

\newcommand\关键词[1]{
	\begin{spacing}{1.45}
    \noindent\黑体\三号[关键词]：
    \宋体\四号 #1
    \end{spacing}
    \clearpage
}

\newcommand\keywords[1]{
	\begin{spacing}{1.3}
    \noindent\三号{}[Keywords]: 
    \四号 #1
    \end{spacing}
    \clearpage
}













\endinput
%%
%% End of file `sustechthesis.cls'.
