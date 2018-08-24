% ---------------------------------------
% Southern University of Science and Technology Thesis Template
% LaTeX Template
% Version 0.1 (2018/08/16)
%
% author:
% Iydon inspired by a template by ywg@USTC and whzecomjm@SUSTC
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
\ifsustech@chinese
    \LoadClass[zihao=-4]{ctexart}
\else
    \LoadClass{article}
\fi
\RequirePackage{geometry}
\geometry{a4paper,top=2.5cm,bottom=2.0cm,left=3.0cm,right=2.5cm}

% fonts
\ifsustech@chinese
    \RequirePackage{xeCJK}
    % choose `kaiming' as punctation style
    % \xeCJKsetup{PunctStyle=kaiming}
    \setCJKmainfont{SimSun}
\fi
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
\setCJKfamilyfont{zhsong}[AutoFakeBold={2.17}]{SimSun} % fake bold
\newcommand{\粗宋}{\bfseries\CJKfamily{zhsong}}

% cover
% ref: sustcthesis.cls
\newcommand\sustech@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\def\sustech@分类号{}\def\sustech@编号{}
\def\sustech@UDC{}\def\sustech@密级{}
\newcommand\分类号[1]{\def\sustech@分类号{#1}}
\newcommand\编号[1]{\def\sustech@编号{#1}}
\newcommand\UDC[1]{\def\sustech@UDC{#1}}
\newcommand\密级[1]{\def\sustech@密级{#1}}
\newcommand\题目[1]{\def\sustech@题目{#1}}
\newcommand\姓名[1]{\def\sustech@姓名{#1}}
\newcommand\学号[1]{\def\sustech@学号{#1}}
\newcommand\系别[1]{\def\sustech@系别{#1}}
\newcommand\专业[1]{\def\sustech@专业{#1}}
\newcommand\指导老师[1]{\def\sustech@指导老师{#1}}
\newcommand\日期[1]{\def\sustech@日期{#1}}

\renewcommand\maketitle{\make@entitle}
\newcommand\make@entitle{%
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
        \includegraphics[width=0.85\textwidth]{Figures/logos/SUSTech_Logo.pdf}\vskip 0.5cm
        {\粗宋\小初 本科生毕业设计（论文）}
        \vskip 2.5cm
        \粗宋\三号
        \begin{tabular}{lc}
            姓\hfill 名：& \sustech@underline[7cm]{\sustech@姓名}\\[7pt]
            学\hfill 号：& \sustech@underline[7cm]{\sustech@学号}\\[7pt]
            系\hfill 别：& \sustech@underline[7cm]{\sustech@系别}\\[7pt]
            专\hfill 业：& \sustech@underline[7cm]{\sustech@专业}\\[7pt]
            指导老师：& \sustech@underline[7cm]{\sustech@指导老师}\\[7pt]
            日期：& \sustech@underline[6cm]{\sustech@日期}
        \end{tabular}
    \end{center}
    \clearpage
    \restoregeometry
}




















\endinput
%%
%% End of file `sustechthesis.cls'.
