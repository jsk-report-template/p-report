\DeclareOption*{\PassOptionsToClass{\CurrentOption}{jarticle}}
\ifx\re@size\@undefined\def\re@size{jresize}\fi
\ProcessOptions
\LoadClass{jarticle}
\ProvidesClass{preport}
              [2004/02/14 v0.1 written by Kei OKADA, Standard pLaTeX document class for JSK p-report]

\setlength{\columnseprule}{0.3pt}

% for Ubuntu platex
\ifx\sec@font\@undefined\def\sec@font{\Large}\fi
\ifx\ssec@font\@undefined\def\ssec@font{\large}\fi
\ifx\sssec@font\@undefined\def\sssec@font{\normalsize}\fi

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {2.0ex \@plus 1ex \@minus .2ex}%
                                   {1.3ex \@plus.2ex}%
                                   {\normalfont\sec@font\underline}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {1.25ex\@plus 1ex \@minus .2ex}%
                                     {1.0ex \@plus .2ex}%
                                     {\normalfont\ssec@font\underline}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {1.25ex\@plus 1ex \@minus .2ex}%
                                     {1.0ex \@plus .2ex}%
                                     {\normalfont\sssec@font\underline}}

\def\@maketitle{%
  \newpage
  \null
  \vskip 1em%
  \begin{center}%
  \let \footnote \thanks
    {\Large \@title \par}%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \rule{110.0mm}{0.2mm}
  \end{center}%
  \par
  \vskip 1.0em}

\renewenvironment{thebibliography}[1]
     {{\vspace{2mm}\hspace{-1zw}\normalsize\refname
        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

%% set size
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}
\setlength{\textheight}{25.5cm}
\setlength{\textwidth}{176mm}
\setlength{\oddsidemargin}{-7mm}
\setlength{\evensidemargin}{-7mm}
\setlength{\topmargin}{-5mm}
\setlength{\columnsep}{12.0mm}
\setlength{\columnseprule}{0.1pt}
\setlength{\topsep}{1pt}
\setlength{\partopsep}{1pt}
\setlength{\parsep}{1pt}
\setlength{\itemsep}{0pt}

\setcounter{topnumber}{5}
\setcounter{bottomnumber}{5}
\setcounter{totalnumber}{5}
\setcounter{dbltopnumber}{5}
\renewcommand{\topfraction}{.9}
\renewcommand{\bottomfraction}{.9}
\renewcommand{\textfraction}{.1}
\renewcommand{\floatpagefraction}{.9}
\renewcommand{\dbltopfraction}{.9}
\renewcommand{\dblfloatpagefraction}{.9}

\let\LARGE=\Large
\let\Large=\large
\let\large=\normalsize
\let\normalsize=\small
\let\small=\footnotesize
\let\footnotesize=\scriptsize

\renewcommand\figurename{Fig.}
\renewcommand\tablename{Table}
\newcommand{\figref}[1]{Fig.\ref{figure:#1}}
\newcommand{\tabref}[1]{Table \ref{table:#1}}
\newcommand{\secref}[1]{第\ref{section:#1}節}

