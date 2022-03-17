%% Copyright (C) 2018-2019 by Iydon Liang <liangiydon AT gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sustechthesis}
  [2022/03/17 v1.3 SUSTech Thesis Template]
\RequirePackage{ifxetex,ifluatex,ifthen}
  \ifthenelse{\boolean{xetex}\OR\boolean{luatex}}{}{
    \ClassError{sustechthesis}{You Should Use XeLaTeX or LuaLaTeX To Compile.}}

\hyphenation{SUSTech-Thesis}
\newcommand{\sustechthesis}{SUSTechThesis}
\newcommand{\version}{1.3}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=sustech,
  prefix=sustech@,
  setkeys=\kvsetkeys}
\DeclareStringOption[bachelor]{degree}[bachelor]
\DeclareStringOption[chinese]{language}[chinese]
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessKeyvalOptions*
\newcommand\sustech@validate@key[1]{%
  \@ifundefined{sustech@\csname sustech@#1\endcsname true}{%
    \ClassError{sustechthesis}{Invalid value '\csname sustech@#1\endcsname'}{}%
  }{%
    \csname sustech@\csname sustech@#1\endcsname true\endcsname
  }%
}
\newif\ifsustech@bachelor
\newif\ifsustech@master
\newif\ifsustech@doctor
\newif\ifsustech@postdoctor
\sustech@validate@key{degree}
\LoadClass[a4paper,UTF8]{ctexart}
\ifsustech@master
  \ClassError{sustechthesis}{NotImplementedError}
\fi
\ifsustech@doctor
  \ClassError{sustechthesis}{NotImplementedError}
\fi

\RequirePackage{fontspec}

\setmainfont[
  Path=fonts/times/,
  Extension = .ttf,
  UprightFont = * ,
  BoldFont = *bd ,
  ItalicFont = *i ,
  BoldItalicFont = *bi
]{times} %英文默认为Times New Roman

\RequirePackage{geometry}
  \geometry{a4paper,top=2.5cm,bottom=2.0cm,left=3.0cm,right=2.5cm}
\RequirePackage{amssymb}
\RequirePackage{setspace}
\RequirePackage{graphicx}

\RequirePackage{ctex}
  % 字号汉化设置
  \newcommand{\初号}{\zihao {0}}
  \newcommand{\小初}{\zihao{-0}}
  \newcommand{\一号}{\zihao {1}}
  \newcommand{\小一}{\zihao{-1}}
  \newcommand{\二号}{\zihao {2}}
  \newcommand{\小二}{\zihao{-2}}
  \newcommand{\三号}{\zihao {3}}
  \newcommand{\小三}{\zihao{-3}}
  \newcommand{\四号}{\zihao {4}}
  \newcommand{\小四}{\zihao{-4}}
  \newcommand{\五号}{\zihao {5}}
  \newcommand{\小五}{\zihao{-5}}
  \newcommand{\六号}{\zihao {6}}
  \newcommand{\小六}{\zihao{-6}}
  \newcommand{\七号}{\zihao {7}}
  \newcommand{\八号}{\zihao {8}}
  % 字体汉化设置
  \renewcommand{\songti}{\CJKfontspec[Path=fonts/,FallBack=simsunb.ttf]{simsun.ttc}}
  \setCJKmainfont[Path=fonts/,FallBack=simsunb.ttf]{simsun.ttc} % 中文默认为宋体,小四在\documentclass处设置
  \newcommand{\宋体}{\songti}
  \renewcommand{\heiti}{\CJKfontspec[Path=fonts/]{simhei.ttf}}
  \setCJKsansfont[Path=fonts/]{simhei.ttf}
  \newcommand{\黑体}{\heiti}
  \newcommand{\仿宋}{\fangsong}
  \newcommand{\楷书}{\kaishu}
  \newcommand{\隶书}{\lishu}
  \newcommand{\幼圆}{\youyuan}
  \newcommand{\雅黑}{\yahei}
  \newcommand{\苹方}{\pingfang}
  % 字体效果汉化设置
  \newcommand{\粗体}{\bfseries}
  \newcommand{\斜体}{\itshape}
  % 设置章节样式
  \ctexset{
    % 需要使用ctexart文类，否则报错键不存在
    section = {
      name={{},.},
      format={\hspace*{-1.5em}\黑体\三号},
    },
    subsection = {
      format={\黑体\四号},
    },
    subsubsection = {
      format={\黑体\小四},
    },
  }
\RequirePackage{caption}
  \renewcommand{\captionfont}{\bfseries\songti\zihao{5}} %表题,图题用五号宋体加黑
  \DeclareCaptionLabelSeparator{enspace}{\enspace}
  \DeclareCaptionLabelFormat{rightBracket}{#2)}
  \captionsetup[table]{labelsep=enspace,name={表}} %表序表题之间没有标点,而是一个空格,默认前缀为表
  \captionsetup[figure]{labelsep=enspace,name={图}} %图序图题之间没有标点,而是一个空格，默认前缀为图
  \captionsetup[subfigure]{labelformat=rightBracket, labelsep=enspace}% 子图a,b,c外没有括号

\RequirePackage[MSWordLineSpacingMultiple=1.5]{zhlineskip}
  % 行距设置
  \newenvironment{行距}[1]%
    {\linespread{#1}\selectfont}%
    {\linespread{2.14}\selectfont}
\RequirePackage{tocloft}
  % 设置目录样式
  \renewcommand\cfttoctitlefont{\hfill\黑体\小二}
  \renewcommand\cftaftertoctitle{\hfill}
  \renewcommand\cftsecfont{\粗体\宋体\四号}
  \renewcommand\cftsecpagefont{\粗体\宋体\四号}
  \renewcommand\cftsecleader{\cftdotfill{\cftdotsep}}
  \renewcommand\cftsubsecfont{\宋体\四号}
  \renewcommand\cftsubsecpagefont{\宋体\四号}
  \renewcommand\cftsubsubsecfont{\宋体\四号}
  \renewcommand\cftsubsubsecpagefont{\宋体\四号}
  \setlength\cftparskip{7pt}
  \setlength\cftsubsecindent{0pt}
  \setlength\cftsubsubsecindent{0pt}
\RequirePackage{xkeyval}
  % 根据名称定义中英文控制序列
  \def\中英信息#1,#2#3{
    \expandafter\def\csname #3@中\endcsname{#1}
    \expandafter\def\csname #3@英\endcsname{#2}
  }
  % 定义键
  \newcommand{\信息中英键}[1]%
    {\define@key{信息}{#1}{\中英信息##1{#1}}}
  \信息中英键{分类号}
  \信息中英键{编号}
  \信息中英键{UDC}
  \信息中英键{密级}
  \信息中英键{题目}
  \信息中英键{子标题}
  \信息中英键{姓名}
  \信息中英键{学号}
  \信息中英键{系别}
  \信息中英键{专业}
  \信息中英键{指导老师}
  \信息中英键{时间}
  \信息中英键{职称}
  % 设置键-值
  \newcommand{\设置信息}[1]{\setkeys{信息}{#1}}

% 目录
% 无论是撰写规范还是样例都没有提到页码位置
% 已确认页码应在正文处开始
\newcommand{\目录}{
  \pagenumbering{gobble}
  \tableofcontents
  \clearpage
  \pagenumbering{arabic}
  \setcounter{page}{1}
}
\RequirePackage{fancyhdr}
  \pagestyle{fancy}
    \lhead{}\chead{}\rhead{}\lfoot{}\rfoot{}%除了页脚页码之外,什么也没有
    \cfoot{\五号\thepage} %页脚居中、阿拉伯数字（五号新罗马体）连续编码
    \renewcommand{\headrulewidth}{0pt} %改为0pt即可去掉页眉下面的横线
    \renewcommand{\footrulewidth}{0pt} %改为0pt即可去掉页脚上面的横线
% 设置标题页
\newcommand\下划线[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\中文标题页{%
  \newgeometry{%
    top=2.25cm,bottom=2.25cm,
    left=2.54cm,right=2.48cm}
  \thispagestyle{empty}
  \begin{center}
    \begin{tabular}{llr}
        分类号  \下划线[2.3cm]{\分类号@中}       \hspace{0.45\textwidth} & 编号\下划线[2.3cm]{\编号@中} \\[5pt]
        U\hfill D\hfill C\下划线[2.3cm]{\UDC@中} \hspace{0.45\textwidth} & 密级\下划线[2.3cm]{\密级@中}
    \end{tabular}
    \vskip 1.35cm
    \includegraphics[width=0.85\textwidth]{figures/logo/SUSTech-zh.pdf}
    \vskip 0.5cm
    {\粗体\宋体\小初 本科生毕业设计（论文）}
    \vskip 3.5cm
    {\粗体\宋体\三号
      \begin{tabular}{lc}
        题\hfill 目： & \下划线[9cm]{\题目@中}     \\[9pt]
        & \下划线[9cm]{\子标题@中}   \\[9pt]
        \\
        \\
        姓\hfill 名： & \下划线[9cm]{\姓名@中}     \\[9pt]
        学\hfill 号： & \下划线[9cm]{\学号@中}     \\[9pt]
        系\hfill 别： & \下划线[9cm]{\系别@中}     \\[9pt]
        专\hfill 业： & \下划线[9cm]{\专业@中}     \\[9pt]
        指导教师：    & \下划线[9cm]{\指导老师@中\phantom{e}\职称@中} \\[9pt]
      \end{tabular}}
    \vskip 3.14cm
    {\宋体\三号\时间@中}
  \end{center}
  \clearpage
  \restoregeometry
}
\newcommand\英文标题页{%
  \newgeometry{%
    top=2.54cm,bottom=2.75cm,
    left=2.54cm,right=2.48cm}
  \thispagestyle{empty}
  \begin{center}
    CLC  \下划线[2.3cm]{\分类号@英} \hfill Number\下划线[2.3cm]{\编号@英}\\[5pt]
    UDC\下划线[2.3cm]{\UDC@英} \hfill Available for reference~\quad$\square$Yes~\quad$\square$No
    \vskip 1.8cm
    \includegraphics[width=0.9\textwidth]{figures/logo/SUSTech-en.pdf}
    \vskip 1.6cm
    {\小初 Undergraduate Thesis}
    \vskip 2.7cm
    {\粗体\三号
      \begin{tabular}{rr}
        Thesis Title:   & \下划线[9cm]{\题目@英}     \\[9pt]
        & \下划线[9cm]{\子标题@英}   \\[2.1cm]
        Student Name:   & \下划线[9cm]{\姓名@英}     \\[9pt]
        Student ID:     & \下划线[9cm]{\学号@英}     \\[9pt]
        Department:     & \下划线[9cm]{\系别@英}     \\[9pt]
        Program:        & \下划线[9cm]{\专业@英}     \\[9pt]
        Thesis Advisor: & \下划线[9cm]{\指导老师@英\phantom{e}\职称@英} \\[10pt]
      \end{tabular}}
    \vskip 2.1cm
    \三号 Date: \时间@英
  \end{center}
  \clearpage\restoregeometry
}
% 诚信承诺书
\newcommand\中文诚信承诺书{
  \newgeometry{%
    top=3.6cm,bottom=2.75cm,
    left=2.54cm,right=2.48cm}
  \thispagestyle{empty}
  \begin{center}
    \黑体\二号 诚信承诺书
  \end{center}
  \vskip 1.8cm
  \begin{spacing}{1.9}\宋体\四号
    1.本人郑重承诺所呈交的毕业设计（论文），是在导师的指导下，独立进行研究工作所取得的成果，所有数据、图片资料均真实可靠。\par
    2.除文中已经注明引用的内容外，本论文不包含任何其他人或集体已经发表或撰写过的作品或成果。对本论文的研究作出重要贡献的个人和集体，均已在文中以明确的方式标明。\par
    3.本人承诺在毕业论文（设计）选题和研究内容过程中没有抄袭他人研究成果和伪造相关数据等行为。\par
    4.在毕业论文（设计）中对侵犯任何方面知识产权的行为，由本人承担相应的法律责任。
    \vskip 4cm
    \hfill 作者签名:\phantom{xxxx月xxxx日} \par
    \hfill\下划线[2cm]{}年\下划线[1cm]{}月\下划线[1cm]{}日
  \end{spacing}
  \clearpage\restoregeometry
}
\newcommand\英文诚信承诺书{
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
    \hfill Signature:\phantom{abcdefghijklmn} \par
    \hfill Date:\phantom{abcdefghijklmnopqr}
  \end{spacing}
  \clearpage\restoregeometry
}
% 摘要
\RequirePackage{listofitems}
\newcommand\摘要标题{
  \begin{center}
    \黑体\二号\题目@中\\\子标题@中
    \vskip 1cm
    \宋体\四号\姓名@中 \\[9pt]
    （\楷书\小四{\系别@中\phantom{空}指导教师： \指导老师@中}）
  \end{center}
  \vskip 1.5cm
}
\newenvironment{中文摘要}[1]%
  {\setsepchar{；}\readlist\args{#1}
    \thispagestyle{empty}
    \begin{spacing}{1.45}
      \noindent\黑体\三号[摘要]：
      \宋体\四号}%
  {\vfill
      \noindent\黑体\三号 [关键词]：
      \宋体\四号
      \foreachitem\word\in\args{
        \word
        \ifthenelse{
          \wordcnt < \argslen}
          {；}{}
      }
    \end{spacing}
    \vfill\clearpage}
\newenvironment{英文摘要}[1]%
  {\setsepchar{{, }}\readlist\args{#1}
    \thispagestyle{empty}
    \begin{spacing}{1.45}
      \noindent\三号 [\textbf{ABSTRACT}]:
      \四号}%
  {\vfill
      \noindent\三号 [\textbf{Key words}]:
      \四号
      \foreachitem\word\in\args{
        \word
        \ifthenelse{
          \wordcnt < \argslen}
          {,}{}
      }
    \end{spacing}
    \vfill\clearpage}
% 参考文献
\newcommand{\参考文献}{
  % 或者可以将refname置空, 按照附录的样式修改.
  \addcontentsline{toc}{section}{参考文献}
  \sectionmark{参考文献}
  \section*{\centerline{参考文献}}
}
% 附录
\newcommand{\附录}{
  \clearpage
  \addcontentsline{toc}{section}{附录}
  \addtocounter{section}{1}
  \sectionmark{附录}
  \begin{center}
    \黑体\三号 附录
  \end{center}
  \appendix
}
% 致谢
\newcommand{\致谢}{
  \addcontentsline{toc}{section}{致谢}
  \sectionmark{致谢}
  \section*{\centerline{致谢}}
}

\endinput
%%
%% End of file `sustechthesis.cls'.
