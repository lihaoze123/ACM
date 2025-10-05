---
description: 将 Markdown 文件翻译成 LaTeX report
---

## Your Task

将 Markdown 文件翻译成 LaTeX report

其中 LaTeX report 的模板：
```latex
\documentclass{report}
\usepackage[UTF-8]{ctex}

\title{\huge 基础数据结构选讲}
\author{李昊泽}
\date{2025年10月7日}

\usepackage{minted}
\usepackage{graphicx}
\usepackage{booktabs}
\usepackage{hyperref}
\usepackage{geometry}
\usepackage{unicode-math}

\setmonofont{Fira Code}
\setminted{
    fontsize    = \fontsize{8}{9.6}\selectfont,
    frame       = single,
    linenos     = true,
    breaklines  = true,
    breakanywhere = true,
    autogobble  = true
}

\geometry{a4paper, margin=2.5cm}

\begin{document}

\maketitle

\newpage

\tableofcontents

\newpage

{正式内容}
```