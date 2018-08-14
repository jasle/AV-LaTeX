\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{av-statute}[2018/08/11 Alpenverein statutes LaTeX class]

% Extends article-class
\LoadClass[]{article}

% Load some packages
\RequirePackage[utf8]{inputenc} % set utf8 as encoding
\RequirePackage{textcomp} % provides euro and other symbols
\RequirePackage{hyperref}
\RequirePackagee[sfdefault,lf]{carlito} % use carlito font
\RequirePackage[T1]{fontenc} % set output font to use
\RequirePackage[a4paper]{geometry} % set paper size to a4
\RequirePackage[german]{babel}
\RequirePackage{graphicx}
\RequirePackage{titling{ % package for customizing \maketitle

% Setup pdf settings
\hypersetup{
	pdfborder={0 0 0},
	breaklinks=true,
	pdfauthor={\theauthor},
	pdftitle={\thetitle},
	pdfsubject={\thetitle},
	pdfkeywords={\thekeywords}}
}
\urlstyle{same}
\setlength{\emergencystretch}[3em] % prevent overfull lines
