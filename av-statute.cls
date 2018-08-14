\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{av-statute}[2018/08/11 Alpenverein statutes LaTeX class]

% Extends article-class
\LoadClass[]{article}

% Load some packages
\RequirePackage[utf8]{inputenc} % set utf8 as encoding
\RequirePackage{textcomp} % provides euro and other symbols
\RequirePackage{hyperref}
\RequirePackage[sfdefault,lf]{carlito} % use carlito font
\RequirePackage[T1]{fontenc} % set output font to use
\RequirePackage[a4paper]{geometry} % set paper size to a4
\RequirePackage[german]{babel}
\RequirePackage{graphicx}
\RequirePackage{titling} % package for customizing \maketitle

% Setup pdf settings
\hypersetup{
	pdfborder={0 0 0},
	breaklinks=true,
	pdfauthor={\theauthor},
	pdftitle={\thetitle},
	pdfsubject={\thetitle},
	pdfkeywords={\thekeywords}
}
\urlstyle{same}
\setlength{\emergencystretch}[3em] % prevent overfull lines

% Define \keywords{} to add Keywords
\let\thekeywords\relax
\newcommand{keywords}[1]{\renewcommand{thekeywords}{#1}}

\setlenght{\parindent}{0em}

% Customize section numbering
\renewcommand{\thesection}{\Alph{section}.}
\renewcommand{\thesubsection}{§~\arabic{subsection}}
\setcounter{secnumdepth}{4}
\renewcommand{\theparagraph}{\arabic{paragraph}.}
\usepackage{remreset}
\makeatletter
\@removefromreset{subsection}{section}
\makeatother

% Customize \paragraph to not take an title
\let\oldparagraph\paragraph
\renewcommand{\paragraph}{\oldparagraph{\hspace{-1em}}}

% Add option 'draft'
\DeclareOption{draft}{
	\RequirePackage{draftwatermark}
	\SetWatermarkText{Entwurf}
	\SetWatermarkScale{0.5}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Define \logo{} to add an logo
\let\thelogo\relax
\newcommand{logo}[1]{\renewcommand{thelogo}{#1}}

% Define \signature{} to add an signature
\newcommand{signature}[1]{

#1

\vspace{0.8cm}
\begin{tabular}{p{8cm}}
\dotfill \\
\end{tabular}
\\(Unterschrift)\\
}
