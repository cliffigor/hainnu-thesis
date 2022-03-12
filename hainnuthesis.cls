\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hainnuthesis}[2021/11/03 Thesis Template for Hainan Normal University]

\LoadClass[UTF8,fontset=none,zihao=-4,linespread=1.42]{ctexbook}
%文档选项
\RequirePackage{kvoptions}

\SetupKeyvalOptions{
	family = @hainnuthesis,
	prefix = @hainnuthesis@
}
\DeclareBoolOption[true]{master}       % automatically creates \ifmypackage@fullpage
\DeclareComplementaryOption{bachelor}{master}  % automatically inverses the former
\DeclareBoolOption[true]{arabictitlenum}       % automatically creates \ifmypackage@fullpage
\DeclareComplementaryOption{chinesetitlenum}{arabictitlenum}  % automatically inverses the former
\DeclareBoolOption[true]{academdegree}       % automatically creates \ifmypackage@fullpage
\DeclareComplementaryOption{profesdegree}{academdegree}  % automatically inverses the former
\ProcessKeyvalOptions*{}
\if@hainnuthesis@master
	\if@hainnuthesis@arabictitlenum
		\ctexset{%
			chapter={%
				pagestyle=hainnu@headings,
				format=\centering\heiti\zihao{3},
				number={\thechapter},
				name={第,章},
				aftername={\quad},
				fixskip=true,
				beforeskip=1.4cm,
				afterskip=1.0cm,
			},
			section={% 四号字体
				format=\raggedright\heiti\zihao{4}\hspace{8mm},
				number={\thesection},
				name={},
				aftername={\quad},
				beforeskip=0pt,
				afterskip=0pt
			},
			subsection={% 小四号字体 
				format=\raggedright\bfseries\heiti\zihao{-4}\hspace{2\ccwd},
				afterskip=0pt,
				number={\thesubsection},
				name={},
				aftername={\quad}
			}
		}
	\else
		\ctexset{%
			chapter={%
				pagestyle=hainnu@headings,
				format=\centering\heiti\zihao{3},
				number={\chinese{chapter}},
				name={第,章\quad},
				aftername={},
				fixskip=true,
				beforeskip=1.4cm,
				afterskip=1.0cm,
			},
			section={% 四号字体
				format=\raggedright\heiti\zihao{4}\hspace{8mm},
				number={\chinese{section}},
				name={第,节\quad},
				aftername={},
				beforeskip=0pt,
				afterskip=0pt
			},
			subsection={% 小四号字体 
				format=\raggedright\bfseries\heiti\zihao{-4}\hspace{2\ccwd},
				afterskip=0pt,
				number={\chinese{subsection}},
				name={第,小节\quad},
			}
		}
	\fi
\else				%本科
	\if@hainnuthesis@arabictitlenum
	\ctexset{%
		chapter={%
			pagestyle=hainnu@headings,
			format=\centering\zihao{3}\bfseries,
			number={\thechapter},
			name={第,章},
			aftername={\quad},
			fixskip=true,
			beforeskip=1.4cm,
			afterskip=1.0cm,
		},
		section={% 小三号字体
			format=\bfseries\zihao{-3},
			number={\thesection},
			name={},
			aftername={\quad},
			beforeskip=0pt,
			afterskip=0pt
		},
		subsection={% 四号字体 
			format=\bfseries\zihao{4},
			afterskip=0pt,
			number={\thesubsection},
			name={},
			aftername={\quad}
		}
	}
	\else
	\ctexset{%
		chapter={%
			pagestyle=hainnu@headings,
			format=\centering\zihao{3}\bfseries,
			number={\chinese{chapter}},
			name={第,章\quad},
			aftername={},
			fixskip=true,
			beforeskip=1.4cm,
			afterskip=1.0cm,
		},
		section={% 三号字体
			format=\zihao{-3}\bfseries,
			number={\chinese{section}},
			name={第,节\quad},
			aftername={},
			beforeskip=0pt,
			afterskip=0pt
		},
		subsection={% 四号字体 
			format=\bfseries\zihao{4},
			afterskip=0pt,
			number={\chinese{subsection}},
			name={第,小节\quad},
		}
	}
	\fi
\fi
\newlength\twolineskip
\setlength\twolineskip{\baselineskip}
\newcommand{\blankline}[1]{\zihao{#1}\quad\\}

\RequirePackage{diagbox}

%参考文献按照国家标准GB/T-7714指定的格式自动生成
\RequirePackage{gbt7714}


% 数学字体设定
\RequirePackage{amsmath,amssymb,amsfonts}%
\RequirePackage{pifont}%

% 列表设定
\RequirePackage{enumerate}

%设置页边距
\newcommand\checkbox{\raisebox{.5ex}{\fbox{\phantom{\rule{.5ex}{.5ex}}}}}
\if@hainnuthesis@master
\RequirePackage[%
%showframe,
a4paper,
hmargin=3.17cm,
vmargin=2.54cm,
headheight=\baselineskip,
headsep=0.5cm
]{geometry}
\else
\RequirePackage{geometry}
\geometry{a4paper,left=3cm,right=3.17cm,top=2.54cm,bottom=2.54cm}
\fi
% 插图设定
\RequirePackage{graphics}%
\RequirePackage{graphicx}%
\RequirePackage[rgb]{xcolor}%
\RequirePackage{subfigure}%
\RequirePackage{caption}%
\RequirePackage{float}%
\RequirePackage{epsfig}%

% 表格设定
\RequirePackage{multirow}%
\RequirePackage{makecell}%
\RequirePackage{array}%
\RequirePackage{booktabs}%
\RequirePackage{longtable}%
\RequirePackage{tabularx}%
\def\tabularxcolumn#1{m{#1}}
% 行间距
\RequirePackage{setspace}
% 程序代码环境
\RequirePackage{listings} 

%Tikz绘图工具包
\RequirePackage{tikz}
\usetikzlibrary{arrows,math,calc,topaths,positioning,automata,shapes,chains}
\RequirePackage{pgfplots}
\RequirePackage{tikz-3dplot}
\usetikzlibrary{backgrounds,mindmap}

\pgfplotsset{compat=1.14}
\tikzset{>=latex}


\RequirePackage{subfigure}
\RequirePackage{graphicx}
\RequirePackage{array}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

%字体设置
\RequirePackage{newtxtext,newtxmath}
\RequirePackage{xeCJKfntef}
\RequirePackage{fontspec}

\newCJKfontfamily{\songti}{simsun.ttc}[%
%Path={./fonts/},
UprightFont = *,
AutoFakeBold=2.5
]

\newCJKfontfamily{\heiti}{simhei.ttf}[%
%Path={./fonts/},
UprightFont = *,
AutoFakeBold=1.5
]

\newCJKfontfamily{\fangsong}{simfang.ttf}[%
%Path={./fonts/},
UprightFont = *,
AutoFakeBold=1.5
]

\newCJKfontfamily{\kaishu}{simkai.ttf}[%
%Path={./fonts/},
UprightFont = *,
AutoFakeBold=1.5
]
%页眉设置
\RequirePackage{fancyhdr}
\if@hainnuthesis@arabictitlenum
	\renewcommand{\chaptermark}[1]{\markboth{第\,\thechapter \,章\quad #1}{}}
\else
	\renewcommand{\chaptermark}[1]{\markboth{第\,\chinese{chapter} \,章\quad #1}{}}
\fi

\fancypagestyle{hainnu@headings}{%
    \fancyhead{}
    \fancyhead[OC]{\songti\zihao{5}\leftmark}
    \if@hainnuthesis@master
    	\fancyhead[EC]{\songti\zihao{5}海南师范大学{\hainnu@degreelevel}学位论文}
    \else
    	\fancyhead[EC]{\songti\zihao{5}海南师范大学本科生毕业论文}
    \fi
    \fancyfoot{}
    \fancyfoot[C]{\zihao{-5}\thepage}
    \renewcommand{\headrulewidth}{0.4pt}
    \renewcommand{\footrulewidth}{0pt}}
\renewcommand\frontmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmatterfalse
    \pagenumbering{Roman}
    \pagestyle{plain}}
\renewcommand\mainmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmattertrue
    \pagenumbering{arabic}
    \pagestyle{hainnu@headings}}
\renewcommand\backmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmatterfalse
    \pagestyle{hainnu@headings}}
%目录深度
\if@hainnuthesis@master
\setcounter{tocdepth}{1} 
\else
\setcounter{tocdepth}{2} 
\fi

%定义关键字
\RequirePackage{xparse}
\RequirePackage{xkeyval, kvsetkeys}
\NewDocumentCommand\hainnu@define@key{m}{%
    \csdef{hainnu@set@#1}##1{\csdef{hainnu@#1}{##1}}	
    \define@key{hainnu}{#1}{\csuse{hainnu@set@#1}{##1}}}
\NewDocumentCommand{\hainnu@setkeys}{m}{\kvsetkeys{hainnu}{#1}}
\let\hainnuset\hainnu@setkeys
% -- keys in Chinese
\hainnu@define@key{schoolcode}
\hainnu@define@key{classifier}
\hainnu@define@key{studentid}
\hainnu@define@key{secretlevel}
\hainnu@define@key{author}
\hainnu@define@key{major}
\hainnu@define@key{department}
\hainnu@define@key{class}
\hainnu@define@key{supervisor}
\hainnu@define@key{supervisorB}
\hainnu@define@key{acadetitle}
\hainnu@define@key{acadetitleB}
\hainnu@define@key{primarydisc}
\hainnu@define@key{secndrydisc}
\hainnu@define@key{profesfield}
\hainnu@define@key{researchdir}
\hainnu@define@key{degreelevel}
\hainnu@define@key{degreetype}
\hainnu@define@key{submitdate}
\hainnu@define@key{title}
\hainnu@define@key{corresaddr}
\hainnu@define@key{type}
% -- keys in English
\hainnu@define@key{eauthor}
\hainnu@define@key{etitle}
\hainnu@define@key{edegreelevel}
\hainnu@define@key{esupervisor}
\hainnu@define@key{eacadetitle}
\hainnu@define@key{esupervisorB}
\hainnu@define@key{eacadetitleB}
\hainnu@define@key{ethesistype}   
\hainnu@define@key{ecorresaddr}
%% ==== Cover and titlepage
\renewcommand\maketitle{%
    \parindent=0pt
    \cleardoublepage\thispagestyle{empty}
    \begin{center}
    	\if@hainnuthesis@master
	        \mbox{}\par\vspace{.25cm}
	        {\bfseries\zihao{-4}
	            \renewcommand\arraystretch{.9}
	            \setlength\tabcolsep{0pt}
	            \begin{tabular}{p{5\ccwd}p{10\ccwd}p{6\ccwd}l}
	                \makebox[5\ccwd][s]{学校代码：}  & \CJKunderline{\makebox[6\ccwd][c]{\hainnu@schoolcode}} & \makebox[6\ccwd][s]{研究生学号：} & \CJKunderline{\makebox[8\ccwd][c]{\hainnu@studentid}} \\
	                \makebox[5\ccwd][s]{分类号：}   & \CJKunderline{\makebox[6\ccwd][c]{\hainnu@classifier}} & \makebox[6\ccwd][s]{密级：} & \CJKunderline{\makebox[8\ccwd][c]{\hainnu@secretlevel}}
	        \end{tabular}}
	        \par\vspace{2cm}
	        \includegraphics[width=.55\textwidth]{logo.png}
	        \par\vspace{.6cm}
	        {\zihao{0}\heiti {\hainnu@degreelevel}学位论文}
	        \par\vspace{1.2cm}
	        {\zihao{2}\bfseries\heiti\linespread{1}\selectfont
	            \setlength\tabcolsep{0pt}
	            \begin{tabular*}{.85\textwidth}{P{.85\textwidth}}
	                \hainnu@title
	        \end{tabular*}}
	        \par\vspace{2.5cm}
	        {\zihao{3}\heiti
	            \renewcommand\arraystretch{1.1}
	            \if@hainnuthesis@academdegree
		            \begin{tabular}{@{}p{7\ccwd}@{~}p{13\ccwd}@{}}
		            	\makebox[7\ccwd][s]{论文作者} & \CJKunderline{\makebox[13\ccwd][c]{\hainnu@author}\hfill\mbox{}} \\
		            	\makebox[7\ccwd][s]{指导教师} & \CJKunderline{\makebox[13\ccwd][c]{{\hainnu@supervisor}\quad{\hainnu@acadetitle}}\hfill\mbox{}} \\
		            	\makebox[7\ccwd][s]{一级学科} & \CJKunderline{\makebox[13\ccwd][c]{\hainnu@primarydisc}\hfill\mbox{}} \\
		            	\makebox[7\ccwd][s]{二级学科} & \CJKunderline{\makebox[13\ccwd][c]{\hainnu@secndrydisc}\hfill\mbox{}} \\
		            	\makebox[7\ccwd][s]{研究方向} & \CJKunderline{\makebox[13\ccwd][c]{\hainnu@researchdir}\hfill\mbox{}} \\
		            	\makebox[7\ccwd][s]{申请学位类别} & \CJKunderline{\makebox[13\ccwd][c]{\hainnu@degreetype}\hfill\mbox{}} \\
		            	\makebox[7\ccwd][s]{提交日期} & \CJKunderline{\makebox[13\ccwd][c]{\hainnu@submitdate}\hfill\mbox{}} 
		        	\end{tabular}
	            \else
	                \begin{tabular}{@{}p{7\ccwd}@{~}p{13\ccwd}@{}}
		            	\makebox[7\ccwd][s]{论文作者} & \CJKunderline{\makebox[13\ccwd][c]{\hainnu@author}\hfill\mbox{}} \\
		            	\makebox[7\ccwd][s]{指导教师} & \CJKunderline{\makebox[13\ccwd][c]{{\hainnu@supervisor}\quad{\hainnu@acadetitle}}\hfill\mbox{}} \\
		            	\quad & \CJKunderline{\makebox[13\ccwd][c]{{\hainnu@supervisorB}\quad{\hainnu@acadetitleB}}\hfill\mbox{}} \\
		            	\makebox[7\ccwd][s]{专业学位领域} & \CJKunderline{\makebox[13\ccwd][c]{\hainnu@profesfield}\hfill\mbox{}} \\
	        		    \makebox[7\ccwd][s]{申请学位类别} & \CJKunderline{\makebox[13\ccwd][c]{\hainnu@degreetype}\hfill\mbox{}} \\
		            	\makebox[7\ccwd][s]{提交日期} & \CJKunderline{\makebox[13\ccwd][c]{\hainnu@submitdate}\hfill\mbox{}} 
	            	\end{tabular}
	            \fi
	        }
    	\else 
			\includegraphics[height=6.0cm]{logoimage/logo_bachelor.png}\\
			\zihao{1}{\songti{{\renewcommand{\CJKglue}{\hskip 12pt}\textbf{本科生毕业{\hainnu@type}}}}}\\
			\blankline{-4}
			\blankline{-4}
			\blankline{-4}
			\blankline{-4}
			\blankline{-4}
			{\zihao{-2}{\textbf{\hainnu@title}}}
			\blankline{-4}
			\blankline{-4}
			\blankline{-4}
			\blankline{-4}
			\fontsize{18pt}\baselineskip
			\title{\hainnu@title}
			\vskip 0.1cm
			\begin{spacing}{2}
				\makebox[6em][s]{{\zihao{4}姓名}：}
				\underline{\makebox[60mm][c]{\kaishu\zihao{4}\hainnu@author}}\\
				%\vskip 0.25cm
				\makebox[6em][s]{{\zihao{4}学号}：}
				\underline{\makebox[60mm][c]{{\kaishu\zihao{4}\hainnu@studentid}}}\\
				%\vskip 0.25cm
				\makebox[6em][s]{{\zihao{4}专业}：}
				\underline{\makebox[60mm][c]{\kaishu\zihao{4}\hainnu@major}}\\
				%\vskip 0.25cm
				\makebox[6em][s]{{\zihao{4}年级}：}
				\underline{\makebox[60mm][c]{\kaishu\zihao{4}\hainnu@class~级}}\\
				%\vskip 0.25cm
				\makebox[6em][s]{{\zihao{4}学院}：}
				\underline{\makebox[60mm][c]{\kaishu\zihao{4}\hainnu@department}}\\
				%\vskip 0.25cm
				\makebox[6em][s]{{\zihao{4}完成日期}：}
				\underline{\makebox[60mm][c]{\kaishu\zihao{4}\hainnu@submitdate}}\\
				\makebox[6em][s]{{\zihao{4}指导教师}：}
				\underline{\makebox[60mm][c]{\kaishu\zihao{4}\hainnu@supervisor~~\hainnu@acadetitle}}\\
				\makebox[30mm][s]{\quad}
				\makebox[60mm][c]{\quad}
			\end{spacing}
    	\fi
    \end{center}
    \cleardoublepage
    \if@hainnuthesis@master
    \begin{center}
        \mbox{}\par\vspace{1.25cm}
        {\zihao{-2}\bfseries
            \setlength\tabcolsep{0pt}
            \begin{tabular*}{.8\textwidth}{P{.8\textwidth}}
                \hainnu@etitle
        \end{tabular*}}
        \par\vspace{1cm}
        {\zihao{-3} A {\hainnu@ethesistype} Submitted for the Degree of {\hainnu@edegreelevel}}
        \par\vspace{5cm}
        {\zihao{-3}\bfseries
       	\if@hainnuthesis@academdegree
	        \begin{tabular*}{6.5cm}{rp{3cm}}
	                Candidate: & {\hainnu@eauthor} \\
	                Supervisor: & {\hainnu@eacadetitle}~~{\hainnu@esupervisor}
	        \end{tabular*}
	    \else 
	    	\begin{tabular*}{6.5cm}{rp{8cm}}
	    	Candidate: & {\hainnu@eauthor} \\
	    	Supervisor: & {\hainnu@eacadetitle}~~{\hainnu@esupervisor}\\
	    	\quad & {\hainnu@eacadetitleB}~~{\hainnu@esupervisorB}
	    	\end{tabular*}
 	    \fi
		}
        \par\vspace{7cm}
        {\zihao{-3}\bfseries
            Hainan Normal University
            \par\vspace{.5cm}
            Haikou, China}
    \end{center}
    \cleardoublepage
    \begin{center}\makebox[5cm][s]{\zihao{-3}\bfseries\songti 独创性声明}\end{center}
    \hspace{2\ccwd}本人声明所呈交的{\hainnu@degreelevel}学位论文是本人在导师指导下进行的研究工作及取得的研究成果。除文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，\kern-.5ex也不包含为获得海南师范大学或其他教育机构的学位或证书而使用过的材料。\kern-.5ex与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。\par
    \hspace{2\ccwd}学位论文作者签名：\rule[-2mm]{37mm}{.4pt}\hfill 日期：\rule[-2mm]{37mm}{.4pt}
    \par\vspace{1.5cm}
    \begin{center}\makebox[5cm][s]{\zihao{-3}\bfseries\songti 学位论文著作权声明}\end{center}
    \hspace{2\ccwd}本论文作者声明：\par
    \hspace{2\ccwd}~\checkbox~本论文全部成果均为本人和指导教师合作研究取得，本人和指导教师都有权使用本成果学术内容（有第三方约定者除外）。\par
    \hspace{2\ccwd}~\checkbox~本论文为指导教师指导下，本人独自完成。本人独自享有本论文的全部著作权。\par
    \hspace{2\ccwd}学位论文作者签名：\rule[-2mm]{25mm}{.4pt}\hfill 指导教师签名：\rule[-2mm]{25mm}{.4pt}
    \par\vspace{.5cm}
    \hspace{2\ccwd}\makebox[9\ccwd][s]{日期：}\rule[-2mm]{25mm}{.4pt}\hfill \makebox[7\ccwd][s]{日期：}\rule[-2mm]{25mm}{.4pt}
    \par\vspace{1.5cm}
    \begin{center}\makebox[6cm][s]{\zihao{-3}\bfseries\songti 学位论文版权使用授权书}\end{center}
    \hspace{2\ccwd}本学位论文作者完全了解海南师范大学有关保留、使用学位论文的规定，即：海南师范大学有权保留并向国家有关部门或机构送交学位论文的复印件和电子文本，允许论文被查阅和借阅。本人授权海南师范大学可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或其它复制手段保存、汇编学位论文。(保密的学位论文在解密后适用本授权书) \par
    \hspace{2\ccwd}学位论文作者签名：\rule[-2mm]{25mm}{.4pt}\hfill 指导教师签名：\rule[-2mm]{25mm}{.4pt}
    \par\vspace{.5cm}
    \hspace{2\ccwd}\makebox[9\ccwd][s]{日期：}\rule[-2mm]{25mm}{.4pt}\hfill \makebox[7\ccwd][s]{日期：}\rule[-2mm]{25mm}{.4pt}
    %
    \parindent=2\ccwd
    \else
    \parindent=2em
	    \newcommand{\hainnu@declaretext}{%
	    	本人声明所呈交的毕业{\hainnu@type}是本人在导师指导下进行的研究工作及取得的研究成果，除了文中特别加以标注和致谢的地方外，本{\hainnu@type}中没有抄袭他人研究成果和伪造数据等行为。与我一同工作的同志对本研究所做的任何贡献均已在{\hainnu@type}中作了明确的说明并表示谢意。
	    }
	    \newcommand{\hainnu@authorization}{%
	    	海南师范大学有权保留并向国家有关部门或机构送交毕业{\hainnu@type}的复印件和磁盘，允许毕业{\hainnu@type}被查阅和借阅。本人授权海南师范大学可以将本毕业{\hainnu@type}的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或其他复印手段保存、汇编毕业{\hainnu@type}。
	    }
	    \newcommand\make@authorization{%
	    	\pagenumbering{roman}
	    	\cleardoublepage
	    	\begin{center}\zihao{3}\bfseries{\heiti{本科生毕业{\hainnu@type}原创性声明}}\end{center}
	    	\vspace{28pt}
	    	\par{\fangsong{\hainnu@declaretext}}\par
	    	\vskip1.0cm
	    	{\begin{tabular}{p{8cm}p{6cm}}\fangsong
	    			{\hainnu@type}作者签名：\underline{\makebox[30mm]{\quad}} & \fangsong 日期：\underline{\makebox[30mm]{\quad}}
	    	\end{tabular}}
	    	\vskip2.0cm
	    	\begin{center}\zihao{3}\bfseries{\heiti{本科生毕业{\hainnu@type}使用授权声明}}\end{center}
	    	\vspace{28pt}
	    	\par{\fangsong{\hainnu@authorization}}\par
	    	\vskip1.0cm
	    	{\renewcommand{\arraystretch}{2.0}%行高
	    		\begin{tabular}{p{8cm}p{6cm}}\fangsong
	    			{\hainnu@type}作者签名：\underline{\makebox[30mm]{\quad}} & \fangsong 日期：\underline{\makebox[30mm]{\quad}} \\
	    			\fangsong 指导教师签名：\underline{\makebox[30mm]{\quad}} & \fangsong 日期：\underline{\makebox[30mm]{\quad}}
	    	\end{tabular}}
	    }
    \make@authorization
    \fi
}
%


%
\newcommand{\makecntitle}{%
	\begin{center}
		\zihao{3}{\textbf{\hainnu@title}}\\
		\vspace{0.5cm}
		\zihao{4}{\fangsong 作者: \hainnu@author \quad 指导教师: \hainnu@supervisor~~\hainnu@acadetitle}\\
		\zihao{-4}{(\hainnu@corresaddr)}
	\end{center}
}
\newcommand{\makeentitle}{%
	\begin{center}
		\zihao{3}{\textbf{\hainnu@etitle}}\\
		\blankline{-4}
		\zihao{-4}{Author: \hainnu@eauthor \quad 
			Supervisor: \hainnu@eacadetitle~\hainnu@esupervisor}\\
		\zihao{-4}{(\hainnu@ecorresaddr)}
	\end{center}
}
%% ==== Abstract Environment
\RequirePackage[inline]{enumitem}
\def\c@abstractname{摘\hspace{2\ccwd}要}
\def\e@abstractname{Abstract}
\NewDocumentCommand { \abstract } { o+m }
{%
	\if@hainnuthesis@master
	    \cleardoublepage
	    \phantomsection
	    \addcontentsline{toc}{chapter}{\IfNoValueTF{#1}{中文摘要}{英文摘要}}
	    \mbox{}
	    \par\vspace{\baselineskip}
	    \noindent
	    \makebox[\textwidth][c]{%
	        \zihao{-3}\IfNoValueTF{#1}{\heiti\c@abstractname}{\bfseries\e@abstractname}}
	    \par\vspace{\baselineskip}#2
    \else
   		{\noindent\fangsong\IfNoValueTF{#1}{\textbf{摘\hspace{10pt}要：}#2}{\textbf{\e@abstractname: }#2}}
   	\fi
}
% ---- innovation
\NewDocumentEnvironment { inovation } { o +m } {%
    \par\vspace{\baselineskip}
    {\bfseries\IfNoValueTF{#1}{创新点：}{#1:}}
    \par
    \begin{enumerate*}[label=\arabic*.~,itemjoin=\\\hspace*{\parindent}]
        #2
}{\end{enumerate*}}
% ---- \keywords
\NewDocumentCommand { \keywords } { o +m } {%
	\if@hainnuthesis@master
	    \par\vspace{\baselineskip}
	    \textbf{\IfNoValueTF{#1}{关键词：}{#1:~}}#2
    \else
    	{\par\noindent\fangsong\textbf{\IfNoValueTF{#1}{关键词：}{Key words: }}#2}
    \fi
}

%% Command for create special chapters
\NewDocumentCommand\special@chapter%
{ s m O{\zihao{3}\heiti} m m m O{\renewcommand{\theequation}{\thechapter.\arabic{equation}}}}%
{\csdef{#2}{%
\cleardoublepage%
\phantomsection%
\IfBooleanTF{#1}{\thispagestyle{empty}}
{\addcontentsline{toc}{chapter}{#4}\chaptermark{#4}}%
\markboth{{#4}}{{#4}}
\mbox{}%
\\[#5]%
\noindent\makebox[\textwidth][c]{#3#4}%
#7
\par\vspace{#6}%
}}
%

% ==== Preface
\def\@introname{序\hspace{2\ccwd}言}
\special@chapter% 
{introduction}%     <- command name
[\zihao{3}\heiti]%  <- chapter titleformat(optional, default->\zihao{3}\heiti)
{\@introname}%      <- chapter title
{\baselineskip}%   <- beforeskip: 2 lines
{\baselineskip}%    <- afterskip: 1 line

% ==== Conclusion
\def\@conclusionname{结\hspace{2\ccwd}论}
\special@chapter% 
{conclusion}%       <- command name
[\zihao{3}\heiti]%  <- \heiti\zihao{3}
{\@conclusionname}% <- chapter title
{\baselineskip}%   <- beforeskip: 2 lines
{\baselineskip}%    <- afterskip: 1 line

% ==== Reference
\def\@referencename{参考文献}
\special@chapter% 
{reference}%       <- command name
[\zihao{3}\heiti]%  <- \heiti\zihao{3}
{\@referencename}% <- chapter title
{\baselineskip}%   <- beforeskip: 2 lines
{\baselineskip}%    <- afterskip: 1 line

% ==== Appendix
\def\@appendixname{附\hspace{2\ccwd}录}
\special@chapter% 
{appendices}%       <- command name
[\zihao{3}\heiti]%  <- \heiti\zihao{3}
{\@appendixname}%   <- chapter title
{\baselineskip}%   <- beforeskip: 2 lines
{\baselineskip}%    <- afterskip: 1 line
[\setcounter{section}{0}% 				<- special environment
\setcounter{equation}{0}
\setcounter{figure}{0}
\setcounter{table}{0}
\renewcommand\thesection{\Alph{section}}
\renewcommand{\theequation}{\thesubsection.\arabic{equation}}
\renewcommand{\thefigure}{\thesubsection.\arabic{figure}}
\renewcommand{\thetable}{\thesubsection.\arabic{table}}
\if@hainnuthesis@arabictitlenum
\quad
\else
	\CTEXsetup[number={\thesection \quad},name={}]{section}
\fi
]

% ==== Achievements
\def\@achievename{在学期间学术成果情况}
\special@chapter% 
{achievements}%     <- \achievements
[\zihao{3}\heiti]%  <- \heiti\zihao{3}
{\@achievename}%    <- title
{0pt}%    <- beforeskip 1 line
{\baselineskip}%    <- afterskip 1 line

% ==== Acknowledgement
\def\@acknowledgement{致\hspace{2\ccwd}谢}
\special@chapter% 
{acknowledgement}%     <- \acknowledgement
[\zihao{3}\heiti]%     <- \heiti\zihao{3}
{\@acknowledgement}%   <- title
{\baselineskip}%      <- beforeskip: 2 lines
{\baselineskip}%       <- afterskip: 1 line

% ==== Resolution
\def\@resolution{答辩委员会委员签名的答辩决议书（归档论文）}
\special@chapter*% 
{resolution}%          <- \resolution
[\zihao{4}\heiti]%     <- \heiti\zihao{4}
{\@resolution}%        <- title
{-\baselineskip}%                 <- beforeskip: 0pt
{0pt}%                 <- afterskip: 0pt

%% ==== Bibliography
\RequirePackage{natbib}
\setlength{\bibsep}{0pt}
\renewcommand{\bibsection}{}

%% ==== ToC
\if@hainnuthesis@master
	\renewcommand\contentsname{目\hspace{2\ccwd}录}
	\renewcommand{\tableofcontents}{%
		\cleardoublepage\thispagestyle{plain}
		\phantomsection\addcontentsline{toc}{chapter}{\contentsname}
		\mbox{}\\[\baselineskip]%
		\noindent\makebox[\textwidth][c]{\zihao{-2}\heiti\contentsname}
		\par\vspace{\baselineskip}
		\@starttoc{toc}
	}
\else
	\renewcommand\contentsname{\kaishu \bfseries\zihao{2}目\hspace{2\ccwd}录}
	\renewcommand{\tableofcontents}{%
		\cleardoublepage\thispagestyle{plain}
		\phantomsection\addcontentsline{toc}{chapter}{\textbf{目\hspace{2\ccwd}录}}
		\mbox{}\\[\baselineskip]%
		\noindent\makebox[\textwidth][c]{\zihao{5}\heiti\contentsname}
		\par\vspace{\baselineskip}
		\@starttoc{toc}
	}
\fi



\RequirePackage{titletoc}
\contentsmargin{0pt}

\if@hainnuthesis@master
	\if@hainnuthesis@arabictitlenum
		\titlecontents{chapter}
		[0pt]
		{\bfseries\zihao{-4}}
		{\makebox[4.3em][s]{\thecontentslabel}\hspace*{1em}}%调整目录章节编号大概为4个字符
		{}
		{\titlerule*[1.5mm]{$\cdot$}\thecontentspage}
		%[\nointerlineskip]
		
		\titlecontents{section}
		[0pt]
		{\zihao{-4}\hspace{2\ccwd}}
		{\thecontentslabel\hspace*{1em}}
		{}
		{\titlerule*[1.5mm]{$\cdot$}\thecontentspage}
		[\nointerlineskip]
		
	\else
		\titlecontents{chapter}
		[0pt]
		{\bfseries\zihao{-4}}
		{\makebox[5.3em][s]{\thecontentslabel}}%调整目录章节编号大概为4个字符
		{}
		{\titlerule*[1.5mm]{$\cdot$}\thecontentspage}
		
		\titlecontents{section}
		[0pt]
		{\zihao{-4}\hspace{2\ccwd}}
		{\thecontentslabel}
		{}
		{\titlerule*[1.5mm]{$\cdot$}\thecontentspage}
		[\nointerlineskip]
	\fi
\else			%本科
	\if@hainnuthesis@arabictitlenum
		\titlecontents{chapter}
		[0pt]
		{\bfseries\zihao{4}}
		{\makebox[4.3em][s]{\thecontentslabel}\hspace*{1em}}%调整目录章节编号大概为4个字符
		{}
		{\titlerule*[1.5mm]{$\cdot$}\thecontentspage}
		%[\nointerlineskip]
		
		\titlecontents{section}
		[0pt]
		{\bfseries\zihao{4}\hspace{2\ccwd}}
		{\thecontentslabel\hspace*{1em}}
		{}
		{\titlerule*[1.5mm]{$\cdot$}\thecontentspage}
		[\nointerlineskip]
		
		\titlecontents{subsection}
		[0pt]
		{\bfseries\zihao{4}\hspace{2\ccwd}}
		{\hspace*{2em}\thecontentslabel\hspace*{1em}}
		{}
		{\titlerule*[1.5mm]{$\cdot$}\thecontentspage}
		[\nointerlineskip]
	\else
		\titlecontents{chapter}
		[0pt]
		{\bfseries\zihao{4}}
		{\makebox[5.3em][s]{\thecontentslabel}}%调整目录章节编号大概为4个字符
		{}
		{\titlerule*[1.5mm]{$\cdot$}\thecontentspage}
		
		\titlecontents{section}
		[0pt]
		{\bfseries\zihao{4}\hspace{2\ccwd}}
		{\thecontentslabel}
		{}
		{\titlerule*[1.5mm]{$\cdot$}\thecontentspage}
		[\nointerlineskip]
		
		\titlecontents{subsection}
		[0pt]
		{\bfseries\zihao{4}\hspace{2\ccwd}}
		{\hspace*{2em}\thecontentslabel\hspace*{1em}}
		{}
		{\titlerule*[1.5mm]{$\cdot$}\thecontentspage}
		[\nointerlineskip]
	\fi
\fi
%

%% 公式编号
\usepackage{chngcntr}
\counterwithin*{equation}{section}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{section}.\arabic{equation}}
%% 
\AtBeginDocument{\pagestyle{empty}}