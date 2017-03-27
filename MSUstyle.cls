%% 
%% Edited by Raymond Weber, Spring/Summer 2014 to update to better match the 
%% current MSU formatting requirements.
%% 
%% The requred "-- Continued" on subsequent pages of the "Table of Contents"
%% and "List of Figure" is not automatic in this version.  To add it manually:
%% 
%% 1) Add a \nofiles to the top of the top level MYmsuETD.tex
%% 2) Compile the document and figure on between which lines a newpage and "... -- Coninued" should be added
%% 3) Open the MYmsuETD.toc (Contents) .lof (Figures) and lot (Tables) and add the appropriate line below in the appropriate spot with empty lines above and below
%% \par \par \vfil \penalty -\@M \write \m@ne {}\vbox {}\penalty -\@Mi \par \hskip 1em\relax \hfill TABLE OF CONTENTS -- CONTINUED \hfill \hskip 1em\relax \hskip 1em\relax \vspace {.2in} \hskip 1em\relax \par 
%% \par \par \vfil \penalty -\@M \write \m@ne {}\vbox {}\penalty -\@Mi \par \hskip 1em\relax \hfill LIST OF FIGURES -- CONTINUED \hfill \hskip 1em\relax \hskip 1em\relax \hskip 1em\relax \\ Figure \hfill Page \vspace {.15in} 
%% \par \par \vfil \penalty -\@M \write \m@ne {}\vbox {}\penalty -\@Mi \par \hskip 1em\relax \hfill LIST OF TABLES -- CONTINUED \hfill \hskip 1em\relax \hskip 1em\relax \hskip 1em\relax \\ Table \hfill Page \vspace {.15in} 
%% 4) Repeat until 2 & 3 until all pages are complete
%% 
%% 
%% ---------------------- Origional Header ----------------------------
%% 
%% MSUstyle.cls was created and edited by Seth Humphries in Jun-2007 and
%% last update 21-Nov-2009
%% Copyright (c) 2007,2008, 2009 Seth HD. umphries
%% This work is licensed under the Creative Commons
%% Attribution-Noncommercial-Share Alike 3.0 License. To view a copy
%% of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/;
%% or, (b) send a letter to Creative Commons, 171 2nd Street, Suite
%% 300, San Francisco, California, 94105, USA.
%% 
%% The above copyright notice and this permission notice shall be incuded 
%%	in all copies or substantial portions of the Software.
%% 
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
%%	OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
%%	MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
%%	IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
%%	CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
%%	TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
%%	SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
%% 
%% 21-Nov-2009: Changed the spacing after Chapter headings to better match 
%% DGE requirements of triple spacing. 
%% Added new copyright from Creative Commons
%% 
%% 20-Oct-2009: DGE approved numbering for figures, equations, algorithms 
%% and tables like 1,1, 1.2, ... 2,56,2.57, etc. This change is 
%% implemented as an input parameter to the class. This is the numreset 
%% option or the nonumreset option. The nonumrest is the default since 
%% I think most people will want to have numbering like above. 
%% 
%% 30-Sep-2009: adjusted title page spacings. Spacing on permissions page, 
%% acknowledgements and the dedications page. Fixed single spacing in 
%% abstract as well. 
%% 
%% 15-pr-2009: adjusted spacing after subsubsection
%% 
%% 04-Apr-2009:  Added \msulongsubsection so that long subsection titles 
%% can be wrapped onto multiple lines with only the last line being
%% undelined per DGE layout.
%% 
%% 25-Mar-2009: Added open source software MIT license
%% 
%% 23-Sep-2008: Fixed pdflatex warning of duplicate page. Users can use 
%% epstopdf to convert eps figures to pdf, or simply use jpegs. 
%% 
%% 23-Jun-2008, very minor changes: added draftver, draft option is now onesided 
%% by default, changes some bookmark placements, now using plunsrt_url.bst
%% created by perl script urlbst for DOI/url support inplace of IEEEtran.bst.
%% see heading in plunsrt_url.bst for more information.
%% 
%% 25-Apr-2008, got appendix capitolized, put references title on separate page
%% if there is appendix. 
%% 
%% 21-Apr-2008, extended dots in TOC,LOF,LOT to the pg#s; changed appendix title
%% spacing. 
%% 
%% 18-Apr-2008
%% changed how section numbering is handled by adding \setcounter{secnumdepth{0}}.
%% add the usage of varioref package. this allows use of \vref inplace of
%% \ref. This yields nice results when referring to a figure, section or 
%% other. The result for this tex code `see figure~\vref{figa}' looks like 
%% 'see figure 12 on page 15' but that changes dynamically depending on final
%% layout. I like it better than simply \ref with a \pageref added to it.
%% 
%% Updated 14Apr2008 to fix indentations of sections, subsection and subsubsections
%% in the TOC and in text. Also fixed vertical spacing after chapter headings.
%% Text after chapter headings and prior to section heading will now 
%% automatically be indented.
%% 
%% Updated in Apr2008 to fix such things as removing section numbering from the TOC 
%% and text. Correct spacing in aproval page. Get the deparment and degree 
%% name right. etc. 
%% 
%% This was updated in Mar2008 to be used with pdflatex used with the tetex package 
%% available for linux. It has been used with the MikTex package but that requires
%% some additional packages. Read all the code below for changes needed to return
%% back to using latex if you want instead of pdflatex.
%% 
%% Another feature added 31Mar2008 is the capability to do a list of algorithms page.
%% This is needed by many CS or CompE students. Add: \algorithmspagetrue to the
%% document section immediately after the \bibliographystyle command. the 
%% list of algorithms page is by default turned off.
%% The list of algorithms has one problem that has yet to be solved. The spacing
%% is double spaced and looks just as it should unless the algorithm caption
%% is long enough to take up more than one line. it looks bad then and I have
%% yet to find a solution to this. 
%% 
%% This MSUstyle.cls class is a direct derivative of the msuthesis.cls created by 
%% Dr Steve Shaw at Montana State University (2005) for use in creating theses
%% with the correct styles demanded by the Division of Graduate Education (DGE). 
%% For msuthesis, Dr. Shaw used a GNU public licensed (GPL'd) thesis class from 
%% Georgia Tech called gatech-thesis.cls. Because of such this is also offered 
%% free and under the GPL. I have merged the two class files, greatly simplified 
%% them and reduced redundant commands. 
%% 
%% I also added input options so that this one class
%% can be used for either a msu styled thesis or a msu styled dissertation.
%% The differences between msu theses and msu dissertations is the permissions 
%% page, the use of `Doctor of Philosophy' vs 'Master of Science' and the 
%% word 'thesis' versus 'dissertation'. 
%% 
%% See the example of usage below for more detail on that issue.
%% 
%% 
%% NOTHING!!! in this file should be changed or modified unless the DGE changes 
%% the required style or format of a submitted thesis or dissertation
%% 
%% 
%% KEEP reading ->
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%% 
%% Example of use in a file called MYmsuETD.tex or whatever you desire to call it.
%% one could simply copy this example, then uncomment it and use it.
%% 
%% \documentclass[12pt,oneside,doublespaced,normalmargins,dissertation,final]{MSUstyle}
%%% or \documentclass[11pt,twoside,oneandahalfspaced,normalmargins,thesis,draft]{MSUstyle}
%%% or variations there on  ... see Option Declaration Section below for more options
%% 
%%    % \nofiles
%% 
%%%%%%%%%%%%%%%%%%%% Definitions %%%%%%%%%%  
%% define stuff for dissertation or thesis
%% change definition of name to your name and keys to key words you want searched 
%% by the likes of google and such ilk. This information shows up in the pdf file properties
%% \newcommand{\name}{Yo fullname Candidate} %PUT your full name here
%% \newcommand{\DocTitle}{Carbon Dioxide Sequestration Monitoring and Verification Via Laser Based 
%% Detection System}
%% \degreetitle{Engineering}
%% \department{Electrical and Computer Engineering}
%% \committeechair{Dr. So A Ndso}
%% \departmentchair{Dr. Big E. Head}
%% \graduatedean{Dr. Bigg E. Ego}
%% \submitdate{August, 2008}
%% \copyrightyear{2008} %add one to year if document submitted in Dec.
%% 
%% \newcommand{\keys}{Electrical Engineering, PhD, Dissertation, Tunable, Lasers, Laser Diode, DFB, Optics,
%% Lidar, Carbon Dioxide, CO2, Carbon, Sequestration, CCS, Carbon Storage, Monitor, Verify, Global Warming, 
%% Montana, Montana State} %put searchable words that you want searched here
%% 
%% \bibfiles{gwarm,laser,sequestration,monitor} %your .bib files, files containing bibliographic 
%% %% information/references that you are going to cite in your ETD.
%% %% 
%% 
%% 
%% %%%%%%%%%%%%%%%%%%%% Packages and preparations %%%%%%%%%%  
%% \usepackage{graphicx} %for the \includegraphics command and figures
%% \usepackage{color} %for changing text color in chapters
%% \usepackage{subfigure} %to be able to have multiple plots in one figure
%% \usepackage{listings} %used for formatting code...see appendices
%% \usepackage{varioref}
%% \lstset{%set listings styles
%% language=Matlab, % program language for keywords and comments styles
%% basicstyle=\tiny, %font size and style
%% identifierstyle=\color{red}, %variable name style
%% stringstyle=\ttfamily, %string style
%% keywordstyle=\color{blue}\bfseries, %language keyword style
%% commentstyle=\color{green}\itshape, %commentstyle
%% breaklines=true,  % sets automatic line breaking
%% breakatwhitespace=false,   %break line not just at whitespaces
%% } 
%%   \usepackage[pdftex,
%%   colorlinks=true,linkcolor=black,citecolor=black,filecolor=black,urlcolor=black,pdftitle={\DocTitle},
%%   pdfauthor={\name},pdfsubject={\degreetype \ for \name},pdfkeywords={\keys},pdfcreator={PDFLaTex 
%%   via \name},bookmarks=true,plainpages=false, pdffitwindow=true]{hyperref} %the \  is to give a space
%%   
%%   
%% %%%%%%%%%%%%%%%%%%%%   actual Document %%%%%%%%%%  
%%   \begin{document}
%%   \bibliographystyle{IEEEtran.bst} %or use another bibliography style class.
%%     %%   \algorithmspagetrue %uncomment this line if you desire a ``list of algorithms'' page.
%%   \begin{preliminary}
%%     \begin{dedication} %dedication is optional
%%       I dedicate this sappy work to my ma... %or dedication file name as input
%%     \end{dedication}
%%     \begin{acknowledgements}
%%       I would like to thank... %or appendix file name as input
%%     \end{acknowledgements}
%%     \begin{vita} %vita is optional
%%       I feel I am under valued so I talk about myself here... %or vita file input
%%     \end{vita}
%%     
%%     \begin{singlespaced}
%%       \contents
%%     \end{singlespaced}
%%     
%%     \begin{abstract}
%%       \input{abstract} %abstract file name
%%     \end{abstract}
%%   \end{preliminary}
%%   
%%   \chapter{Introduction} %chapter file name happens to be Introduction.tex
%%   \chapter{ChTwo} %chapter file name is ChTwo.tex. call it whatever you want.
%%   \chapter{YetAnotherChapter_YAC} %another chapter file 
%%   ...
%%   \chapter{Conclusion}
%%   
%%   \begin{postliminary}
%%     \Appendtrue %comment this out if you have no appendix
%%     \references
%%   \end{postliminary}
%%   
%%   \appendix
%%   \input{A_Long_Proof} %appendix file name
%%   \input{AVery_Long_Proof} %second appendix, appendix file name
%%   ...
%% \end{document}
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%% code section %%%%%
% do not change anything below unless you know what you are doing.


%%%%%%%%%%%% IDENTIFICATION        %%%%%%%%%%%%
\newcommand{\MSUstyleversion}{1.2}% current version number
\newcommand{\MSUstyleupdated}{2015/6/9}% date of last change(s)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MSUstyle}
[\MSUstyleupdated\space\MSUstyleversion\space(Montana State Graduate School)]%
\RequirePackage{calc}% part of LaTeX tools bundle   
\RequirePackage[plain]{algorithm}
\RequirePackage{algorithmic}


%%%%%%%%%%%% INITIAL CODE         %%%%%%%%%%%%
\widowpenalty=19999 % No widows at bottom of page 
\clubpenalty=19999 % No orphans at top of page 
\brokenpenalty=999 %no hyphenations at page breaks
\hyphenpenalty=1000 %no hyphenation at end of lines
\tolerance=1000 %adjust to make the above penalties tighter or looser 
\raggedbottom



%% Switch for testing draft mode (toggled by ``draft'' option).
\newif\if@draft
\@draftfalse % initially false by default

%% Switch for testing current page style.
\newif\if@tcpage
% no default value (set by \pagestyle)
% indicates that page numbers are in the upper corners

%% Switch for alternative chapter headings (toggled by ``altchapter'' option).
\newif\if@altchapter
\@altchapterfalse % initially false by default

%% Because of the draft option, and to allow users to override
%% defaults, we don't want to be passing conflicting options back to
%% the report class, so we define our own temporary toggles holding
%% the most recent setting for each of four basic options: point size,
%% number of page sides, whether new chapters open on right-hand pages
%% or on any page, and line spacing.  These toggles will be set from
%% the corresponding options below.
% 
\newcommand{\@thesisptsz}{}
\newcommand{\@thesisside}{}
\newcommand{\@thesisopen}{}
\newcommand{\@thesislnsp}{}

%% the next couple commands are used to switch between 
%% differences in theses and dissertations
\newcommand{\perm}{}
\newcommand{\degree}{}
\newcommand{\degreetype}{}

% \setlength{\intextsep}{14pt}

%%%%%%%%%%%% OPTION DECLARATION      %%%%%%%%%%%%

%% ``draft'' option: change default document settings.
\DeclareOption{draft}{\@drafttrue
  \typeout{MyThesis Class Option: ``draft''}
  \ExecuteOptions{11pt,oneside,openany,doublespaced,normalmargins}
  \PassOptionsToClass{draft}{report}
  %% Macros for printing "DRAFT" at the corners of a page.
  \newcommand{\tlDRAFT}%
  {\raisebox{ 3ex}[0pt][0pt]{\sffamily\scriptsize \llap{DRAFT\ V}ersion \@draftver}}
  \newcommand{\trDRAFT}%
  {\raisebox{ 3ex}[0pt][0pt]{\sffamily\scriptsize DRAFT\ V\rlap{ersion \@draftver}}}
  \newcommand{\blDRAFT}%
  {\raisebox{-3ex}[0pt][0pt]{\sffamily\scriptsize \llap{DRAFT\ V}ersion \@draftver}}
  \newcommand{\brDRAFT}%
  {\raisebox{-3ex}[0pt][0pt]{\sffamily\scriptsize DRAFT\ V\rlap{ersion \@draftver}}}
}%DeclareOption{draft}

%% ``altchapter'' option: use alternative chapter headings
\DeclareOption{altchapter}{\@altchaptertrue}


%% Point Size options: change current setting.
\DeclareOption{10pt}{\renewcommand{\@thesisptsz}{10pt}}
\DeclareOption{11pt}{\renewcommand{\@thesisptsz}{11pt}}
\DeclareOption{12pt}{\renewcommand{\@thesisptsz}{12pt}}
\DeclareOption{13pt}{\renewcommand{\@thesisptsz}{13pt}}

%% Number of Page Sides options: change current setting.
\DeclareOption{twoside}{\renewcommand{\@thesisside}{twoside}}
\DeclareOption{oneside}{\renewcommand{\@thesisside}{oneside}}

%% New Chapter Openings options: change current setting.
\DeclareOption{openany}{\renewcommand{\@thesisopen}{openany}}
\DeclareOption{openright}{\renewcommand{\@thesisopen}{openright}}

%% Line Spacing options: change current setting.
\DeclareOption{singlespaced}{\renewcommand{\@thesislnsp}{1}}
\DeclareOption{oneandahalfspaced}{\renewcommand{\@thesislnsp}{1.25}}
\DeclareOption{doublespaced}{\renewcommand{\@thesislnsp}{1.66}}

\DeclareOption{thesis}{\renewcommand{\perm}{\@thesisPermission}%
  \renewcommand{\degree}{\@thesisD}%
  \renewcommand{\degreetype}{\@thesisDT}%
}
\DeclareOption{dissertation}{\renewcommand{\perm}{\@dissertationPermission}%
  \renewcommand{\degree}{\@dissertationD}%
  \renewcommand{\degreetype}{\@dissertationDT}%
}

% reseting of numbering between chapters. 
\DeclareOption{nonumreset}{
  \newif\ifnumreset
  \numresetfalse
}
\DeclareOption{numreset}{
  \newif\ifnumreset
  \numresettrue
}


%% All other options are passed to the base class directly.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}


%%%%%%%%%%%% OPTION EXECUTION       %%%%%%%%%%%%
%% Default settings.
\ExecuteOptions{12pt,letterpaper,oneside,%
  openright,doublespaced,normalmargins,dissertation,final,numreset}
% 
\ProcessOptions


%%%%%%%%%%%% PACKAGE  LOADING       %%%%%%%%%%%%
%% Load base class using current setting for basic options.
\LoadClass[\@thesisptsz,\@thesisside,\@thesisopen]{report}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%% MAIN  CODE          %%%%%%%%%%%%


%%% phantomsection, texorpdfstring, and pdfbookmark are needed if you do
%%% not compile via pdflatex. !!!!!!!!!
% \newcommand{\phantomsection}{}% helps with hyperref.  \phantomsection
% is provided by pdflatex, but not latex.
% \newcommand{\texorpdfstring}[2]{#1}%
% \def\pdfbookmark[#1]#2#3{}%
%%%%%% 

\newcommand{\ignore}{} %used to comment out parts of latex
\newcommand{\comment}{} %used to comment out parts of latex




%%%%%% Line Spacing
% 
%% \linespacing is used to define the default line spacing. 
%% for the entire document. If the argument is less than 
%% 1.25 (for 1.5-spaced) a warning message is displayed
%% when not in draft mode.
%% 
%% Don't use this command for temporary, localized changes.
%% Instead, use the ``spacing environments'':
%% \begin{singlespaced}      ...\end{singlespaced}
%% \begin{oneandahalfspaced}...\end{oneandahalfspaced}
%% \begin{doublespaed}      ...\end{doublespaced}
%% \begin{longquote}        ...\end{longquote}
%% \begin{longquotation}    ...\end{longquotation}
%% \begin{newspacing}{x.xx} ...\end{newspacing}
\newcommand{\linespacing}[1]{%
  \gdef\@spacing{#1}
  \newlinestretch{#1}\if@draft\else\ifdim #1pt < 1.25pt\typeout
  {MyThesis Class Warning: line spacing less than 1 1/2}\fi\fi
}

% 
%% ``longquote'' and ``longquotation'' produce single-spaced quotes, while
%% ``newspacing'' encloses paragraphs with a different line spacing,
%% such as ``singlespaced'', ``oneandahalfspaced'', or ``doublespaced''.
\newenvironment{longquote}%
{\begin{quote}\newlinestretch{1}}{\end{quote}}
\newenvironment{longquotation}%
{\begin{quotation}\newlinestretch{1}}{\end{quotation}}
\newenvironment{singlespaced}%
{\begin{newspacing}{1}}{\end{newspacing}}
\newenvironment{oneandahalfspaced}%
{\begin{newspacing}{1.25}}{\end{newspacing}}
\newenvironment{doublespaced}%
{\begin{newspacing}{1.66}}{\end{newspacing}}
\newenvironment{newspacing}[1]%
{\par\begingroup\newlinestretch{#1}}%
{\par\vskip\parskip\vskip\baselineskip\endgroup
  \vskip-\parskip\vskip-\baselineskip}

% 
%% To change the actual line spacing.
\newcommand{\newlinestretch}[1]%
{\renewcommand{\baselinestretch}{#1}\currenttextsize}

% 
%% To keep track of the current text size.
\let\currenttextsize=\normalsize
% 
%% Redefine size-changing commands to update \currenttextsize.
\let\tmp@tiny=\tiny
\renewcommand{\tiny}%
{\let\currenttextsize=\tmp@tiny\tmp@tiny}
\let\tmp@scriptsize=\scriptsize
\renewcommand{\scriptsize}%
{\let\currenttextsize=\tmp@scriptsize\tmp@scriptsize}
\let\tmp@footnotesize=\footnotesize
\renewcommand{\footnotesize}%
{\let\currenttextsize=\tmp@footnotesize\tmp@footnotesize}
\let\tmp@small=\small
\renewcommand{\small}%
{\let\currenttextsize=\tmp@small\tmp@small}
\let\tmp@normalsize=\normalsize
\renewcommand{\normalsize}%
{\let\currenttextsize=\tmp@normalsize\tmp@normalsize}
\let\tmp@large=\large
\renewcommand{\large}%
{\let\currenttextsize=\tmp@large\tmp@large}
\let\tmp@Large=\Large
\renewcommand{\Large}%
{\let\currenttextsize=\tmp@Large\tmp@Large}
\let\tmp@LARGE=\LARGE
\renewcommand{\LARGE}%
{\let\currenttextsize=\tmp@LARGE\tmp@LARGE}
\let\tmp@huge=\huge
\renewcommand{\huge}%
{\let\currenttextsize=\tmp@huge\tmp@huge}
\let\tmp@Huge=\Huge
\renewcommand{\Huge}%
{\let\currenttextsize=\tmp@Huge\tmp@Huge}
% 



\providecommand{\e}[1]{\ensuremath{\times 10^{#1}}} % for doing things like...
% as output 5x10^3 from latex code: 5\e{3}
% 


%%%%%% Front Matter Parameters
% 
%% The following commands set the respective field values so we
%% can generate the title page, copyright page, permissions page 
%% and signature page automatically
% 
\renewcommand{\author}[1]%
{\ifx\empty#1\empty\else\gdef\@author{#1}\fi}

\renewcommand{\title}[1]%
{\ifx\empty#1\empty\else\gdef\@title{#1}\fi}

\newcommand{\departmentchair}[1]%
{\ifx\empty#1\empty\else\gdef\@departmentchair{#1}\fi}

\newcommand{\committeechair}[1]%
{\ifx\empty#1\empty\else\gdef\@committeechair{#1}\fi}

\newcommand{\graduatedean}[1]%
{\ifx\empty#1\empty\else\gdef\@graduatedean{#1}\fi}

\newcommand{\department}[1]%
{\ifx\empty#1\empty\else\gdef\@department{#1}\fi}

\newcommand{\degreetitle}[1]%
{\ifx\empty#1\empty\else\gdef\@degreetitle{#1}\fi}

\newcommand{\copyrightyear}[1]%
{\ifx\empty#1\empty\else\gdef\@copyrightyear{#1}\fi}

\newcommand{\submitdate}[1]%
{\ifx\empty#1\empty\else\gdef\@submitdate{#1}\fi}

\newcommand{\thesisPermission}[1]%
{\ifx\empty#1\empty\else\gdef\@thesisPermission{#1}\fi}

\newcommand{\dissertationPermission}[1]%
{\ifx\empty#1\empty\else\gdef\@dissertationPermission{#1}\fi}

\newcommand{\thesisD}[1]%
{\ifx\empty#1\empty\else\gdef\@thesisD{#1}\fi}

\newcommand{\dissertationD}[1]%
{\ifx\empty#1\empty\else\gdef\@dissertationD{#1}\fi}

\newcommand{\thesisDT}[1]%
{\ifx\empty#1\empty\else\gdef\@thesisDT{#1}\fi}

\newcommand{\dissertationDT}[1]%
{\ifx\empty#1\empty\else\gdef\@dissertationDT{#1}\fi}

\newcommand{\draftver}[1]%
{\ifx\empty#1\empty\else\gdef\@draftver{#1}\fi} %draft version 

\newcommand{\name}[1]%
{\ifx\empty#1\empty\else\gdef\name{#1}\fi} %name

\newcommand{\keys}[1]%
{\ifx\empty#1\empty\else\gdef\keys{#1}\fi} %name

\newcommand{\DocTitle}[1]%
{\ifx\empty#1\empty\else\gdef\DocTitle{#1}\fi} %name

\newcommand{\OWNwebpage}[1]%
{\ifx\empty#1\empty\else\gdef\OWNwebpage{#1}\fi} %name
% 
%% bibliography databases
% 
\newcommand{\bibfiles}[1]%
{\ifx\empty#1\empty\else\gdef\@bibfiles{#1}\fi}

% 
%% default values of private functions
% 
\def\@title{\DocTitle}
\def\@author{\name}
\def\@bibfiles{}
\def\@committeechair{}
\def\@departmentchair{}
\def\@department{}
\def\@degreetitle{}
\def\@graduatedean{}
\def\@submitdate{\ifcase\the\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\the\year}
\def\@gradyear{2008}  
\def\@copyrightyear{\number\the\year}
\def\@bibfiles{}
\def\@draftver{}


\def\@thesisDT{thesis} %degree type
\def\@thesisD{Master of Science} %degree
\def\@dissertationDT{dissertation} %degree type
\def\@dissertationD{Doctor of Philosophy} %degree

\def\@dissertationPermission{In presenting this dissertation in partial fulfillment of the requirements for a doctoral degree at Montana State University, I agree that the Library shall make it available to borrowers under rules of the Library. I further agree that copying of this dissertation is allowable only for scholarly purposes, consistent with ``fair use'' as prescribed in the U.S. Copyright Law. Requests for extensive copying or reproduction of this dissertation should be referred to ProQuest Information and Learning, 300 North Zeeb Road, Ann Arbor, Michigan 48106, to whom I have granted ``the exclusive right to reproduce and distribute my dissertation in and from microform along with the non-exclusive right to reproduce and distribute my abstract in any format in whole or in part.''}

\def\@thesisPermission{In presenting this thesis in partial fulfullment of the requirements for a master's degree at Montana State University, I agree that the Library shall make it available to borrowers under rules of the Library. \newline \indent If I have indicated my intention to copyright this thesis by including a copyright notice page, copying is allowable only for scholarly purposes, consistent with ``fair use'' as prescribed in the U.S. Copyright Law.  Requests for permission for extended quotation from or reproduction of this thesis in whole or in parts may be granted only by the copyright holder.}

%% Switch for printing copyright notice on titlepage
% 
\newif\ifcopyright
\copyrightfalse % initially false by default

%% Switch for generating a title page
% 
\newif\iftitlepage
\titlepagetrue % initially true by default

%% Switch for generating a signature page
% 
\newif\ifsignaturepage
\signaturepagefalse % initially false by default

%% Switch for generating a list of figures
% 
\newif\iffigurespage
\figurespagetrue % initially true by default

%% Switch for generating a list of tables
% 
\newif\iftablespage
\tablespagetrue % initially true by default

%% Switch for generating a list of tables
% 
\newif\ifalgorithmspage
\algorithmspagefalse % initially true by default

%% Switch for generating a table of contents
% 
\newif\ifcontentspage
\contentspagetrue % initially true by default

%% Switch for generating a bibliography
% 
\newif\ifbibpage
\bibpagetrue % initially true by default

\newif\ifAppend %if there is no appendix the ref page has different look
\Appendfalse % initially false by default

%% Switch for relaxing the strict margin requirements 
%% on the title page and signature page.  Default is to
%% rigidly adhere to the standard (but that's ugly)
% 
\newif\ifstrictmargins
\strictmarginstrue % initially true by default


%% \settocdepth - use this to change how "deep" to number 
%% in the table of contents for different sections; e.g.
%% subsubsections for chapters, then switch to chapter-only
%% for appendices.
%% tocdepth is reset to the value in \setchaptertocdepth
%% at each \chapter{}, or to the value in \setappendixtocdepth
%% at each \chapter{} after the \appendix command.  So, if 
%% you want to change the defaults, use \setchaptertocdepth and 
%% \setappendixtocdepth.  To temporarily change depth for the 
%% current section, use a different function: \settocdepth[x].  
%% You should never need to call \setcounter{tocdepth}{..} 
%% directly.
%% 
%% 0 = chapter only
%% 1 = chapter + sections
%% 2 = chapter, section, subsection
%% 3 = chapter, section, subsection, subsubsection
% 
\newcommand{\settocdepth}[1]{%
  \addtocontents{toc}{\protect\setcounter{tocdepth}{#1}}}
\newcommand{\setlotdepth}{%
  \addtocontents{lot}{\protect\setcounter{tocdepth}{1}}}
\newcommand{\setlofdepth}{%
  \addtocontents{lof}{\protect\setcounter{tocdepth}{1}}}

\newcommand{\setappendixtocdepth}[1]{%
  \def\appendix@tocdepth{#1}}

\newcommand{\setchaptertocdepth}[1]{%
  \def\chapter@tocdepth{#1}} 
\setchaptertocdepth{3} %call above function and set it
\setcounter{secnumdepth}{0}

\newcommand{\setfrontpagestyle}[1]{%
  \gdef\front@pagestyle{#1}}
\newcommand{\setbodypagestyle}[1]{%
  \gdef\body@pagestyle{#1}}
\newcommand{\setbackpagestyle}[1]{%
  \gdef\back@pagestyle{#1}}




% note that MT is the postal abreviation for Montana. go MSU!
% dummy commands to prevent recursion errors...
\newcommand{\MTcontentsname}{}
\newcommand{\toccontentlinestring}{}
\newcommand{\tocpdfbookmarkstring}{}
\newcommand{\MTlistfigurename}{}
\newcommand{\lofcontentlinestring}{}
\newcommand{\lofpdfbookmarkstring}{}
\newcommand{\MTlisttablename}{}
\newcommand{\lotcontentlinestring}{}
\newcommand{\lotpdfbookmarkstring}{}
\newcommand{\MTlistalgorithmname}{}
\newcommand{\loacontentlinestring}{}
\newcommand{\loapdfbookmarkstring}{}

\newcommand{\settocstring}[1]{%
  \renewcommand{\MTcontentsname}{#1}
  \renewcommand{\contentsname}{\MakeUppercase{#1}}
  \renewcommand{\toccontentlinestring}{%
    \texorpdfstring{\MakeUppercase{#1}}{#1}
  }
  \renewcommand{\tocpdfbookmarkstring}{#1}
}
\newcommand{\setlofstring}[1]{%
  \renewcommand{\MTlistfigurename}{#1}
  \renewcommand{\listfigurename}{\MakeUppercase{#1}}
  \renewcommand{\lofcontentlinestring}{%
    \texorpdfstring{\MakeUppercase{#1}}{#1}
  }
  \renewcommand{\lofpdfbookmarkstring}{#1}
}
\newcommand{\setlotstring}[1]{%
  \renewcommand{\MTlisttablename}{#1}
  \renewcommand{\listtablename}{\MakeUppercase{#1}}
  \renewcommand{\lotcontentlinestring}{%
    \texorpdfstring{\MakeUppercase{#1}}{#1}
  }
  \renewcommand{\lotpdfbookmarkstring}{#1}
}

\newcommand{\setloastring}[1]{%
  \renewcommand{\MTlistalgorithmname}{#1}
  \renewcommand{\listalgorithmname}{\MakeUppercase{#1}}
  \renewcommand{\loacontentlinestring}{%
    \texorpdfstring{\MakeUppercase{#1}}{#1}
  }
  \renewcommand{\loapdfbookmarkstring}{#1}
}

%% bookmark names
\settocstring{Table of Contents}
\setlotstring{List of Tables}
\setlofstring{List of Figures}
\setloastring{List of Algorithms}


%%%%%% Page Styles
% 
% redefinition of tcplain to meet MSU requirements (top center page numbering)
\if@twoside % if two-sided printing
\newcommand{\ps@tcplain}{%
  \@tcpagetrue%
  \let\@mkboth\markboth%
  \def\@oddfoot{%
    \if@draft%
    \blDRAFT\hfil%
    {\slshape\small\today}\hfil\brDRAFT%
    \fi%
  }%
  \let\@evenfoot\@oddfoot%
  \def\@oddhead{%
    \if@draft\tlDRAFT\fi%
    \hfil\thepage\hfil%
    \if@draft\trDRAFT\fi%
  }%
  \def\@evenhead{%
    \if@draft\tlDRAFT\fi%
    \hfil\thepage\hfil%
    \if@draft\trDRAFT\fi%
  }%
}%ps@tcplain
\else % if one-sided printing
\newcommand{\ps@tcplain}{%
  \@tcpagetrue%
  \let\@mkboth\markboth%
  \def\@oddfoot{%
    \if@draft%
    \blDRAFT\hfil%
    {\slshape\small\today}\hfil\brDRAFT%
    \fi%
  }%
  \def\@oddhead{%
    \if@draft\tlDRAFT\fi%
    \hfil\thepage\hfil%
    \if@draft\trDRAFT\fi%
  }%
}%ps@tcplain
\fi % @twoside 

  

% ========================= %
%       Document Layout     %
% ========================= %
%% Set margins
\setlength{\headsep}{\baselineskip}
\newlength\newtop \newtop=1in
% Top of number should be at 1 in (add height of 1 line)
\addtolength{\newtop}{\baselineskip} 
% Top header also includes headsep (distance between number and top of text
\addtolength{\newtop}{\headsep}      
% Define all margins
\def\margingeom{inner=1.5in,outer=1.0in,top=\newtop,bottom=1.0in,headsep=\headsep}
% Set margins using geometry package (showframe for debugging)
%\RequirePackage[\margingeom,showframe]{geometry}
\RequirePackage[\margingeom]{geometry}

% Margins used for preliminary pages
\newlength\prelheadsep \prelheadsep=\headsep
\newlength\preltop     \preltop=\newtop
\addtolength{\prelheadsep}{3\baselineskip}
\addtolength{\preltop}{3\baselineskip}
\def\marginprel{inner=1.5in,outer=1.0in,top=\preltop,bottom=1.0in,headsep=\prelheadsep}

% Margins used for LOF, LOT, and LOA (extra line for headings)
\newlength\listheadsep \listheadsep=\headsep
\newlength\listtop     \listtop=\newtop
\addtolength{\listheadsep}{5\baselineskip}
\addtolength{\listtop}{5\baselineskip}
\def\marginlist{inner=1.5in,outer=1.0in,top=\listtop,bottom=1.0in,headsep=\listheadsep}

% Default line spacing: use current setting from options.
\linespacing{\@thesislnsp}

%% Default indent
\setlength\parindent{5ex}

 
%% Adjust the vertical spacing between the main text and the notes,
%% and between successive notes if they are not single-spaced.
\setlength{\skip\footins}{.75\baselineskip}
% 
%% \flushbottom looks silly with lots of extra space between paragraphs
%% better to put the "extra" space at the bottom of the page!
\raggedbottom
% 
%% Default page style.
\pagestyle{tcplain}
\setfrontpagestyle{tcplain}
\setbodypagestyle{tcplain}
\setbackpagestyle{tcplain}

\if@altchapter
  \AtBeginDocument{\protect{\setcounter{secnumdepth}{4}}}
\else
  \AtBeginDocument{\protect{\setcounter{secnumdepth}{0}}}
\fi

\renewenvironment{table}
{\setlength\abovecaptionskip{6\p@}%
  \setlength\belowcaptionskip{2\p@}%
  \@float{table}}
{\end@float}

\renewenvironment{figure}
{\setlength\abovecaptionskip{2\p@}%
  \setlength\belowcaptionskip{6\p@}%
  \@float{figure}}
{\end@float}

\renewenvironment{algorithm}
{\setlength\abovecaptionskip{2\p@}%
  \setlength\belowcaptionskip{6\p@}%
  \@float{algorithm}}
{\end@float}

% ========================= %
%       Contents Pages      %
% ========================= %
% 
%% All this junk is for handling the spacing in the TOC, LOF, and LOT.
% 
\newlength{\MT@tocentryskip@value}
\newlength{\MT@beforepartskip@value}
\newlength{\MT@beforechapskip@value}
\newlength{\MT@beforesecskip@value}
\newlength{\MT@beforesubsecskip@value}
\newlength{\MT@beforesubsubsecskip@value}
\newlength{\MT@beforeparaskip@value}
\newlength{\MT@beforesubparaskip@value}
\newlength{\MT@beforefigskip@value}
\newlength{\MT@beforetableskip@value}

\def\set@MTtocskip#1{%
  \setlength{\MT@tocentryskip@value}{#1}
  % set base lengths
  \setlength{\MT@beforepartskip@value}{2\MT@tocentryskip@value}
  \setlength{\MT@beforechapskip@value}{1.5\MT@tocentryskip@value}
  \setlength{\MT@beforesecskip@value}{0in}
  \setlength{\MT@beforesubsecskip@value}{0in}
  \setlength{\MT@beforesubsubsecskip@value}{0in}
  \setlength{\MT@beforeparaskip@value}{0in}
  \setlength{\MT@beforesubparaskip@value}{0in}
  \setlength{\MT@beforefigskip@value}{\MT@tocentryskip@value}
  \setlength{\MT@beforetableskip@value}{\MT@tocentryskip@value}
  % add glue
  \addtolength{\MT@beforepartskip@value}{\z@ \@plus\p@}
  \addtolength{\MT@beforechapskip@value}{\z@ \@plus\p@}
  \addtolength{\MT@beforesecskip@value}{\z@ \@plus.2\p@}
  \addtolength{\MT@beforesubsecskip@value}{\z@ \@plus.2\p@}
  \addtolength{\MT@beforesubsubsecskip@value}{\z@ \@plus.2\p@}
  \addtolength{\MT@beforeparaskip@value}{\z@ \@plus.2\p@}
  \addtolength{\MT@beforesubparaskip@value}{\z@ \@plus.2\p@}
  \addtolength{\MT@beforefigskip@value}{\z@ \@plus.2\p@}
  \addtolength{\MT@beforetableskip@value}{\z@ \@plus.2\p@}
}
\set@MTtocskip{10pt}

\newcommand{\theMTchapter}{\@Roman\c@chapter}
\renewcommand{\theMTchapter}{\thechapter}
\renewcommand{\contentsname}{~\\[-0.5em]TABLE OF CONTENTS\vspace{2em}}
\renewcommand{\listfigurename}{~\\[-0.5em]LIST OF FIGURES \\[1em] Figure \hfill Page}
\renewcommand{\listtablename}{~\\[-0.5em]LIST OF TABLES \\[1em] Table \hfill Page}
\renewcommand{\listalgorithmname}{\hspace{1.0in}LIST OF ALGORITHMS \newline Algorithm \hfill Page\vspace{1em}}
%% the listalgorithmname has the \hspace to center the title as there is no other quick method.

\newcommand{\theHalgorithm}{\arabic{algorithm}} %this provides compatability with the algorithmic package


\renewcommand{\appendix}{%
  \if@openright
  \cleardoublepage
  \else
  \clearpage
  \fi
  \quad \vspace{2.5in}
  \begin{center}
    APPENDICES
  \end{center}
  \vfill \quad
  \renewcommand{\@chapapp}{\MakeUppercase{\appendixname}}
  \thispagestyle{tcplain}%    Do NOT use the \back@pagestyle macro here
  \settocdepth{\appendix@tocdepth}
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \def\thechapter{\@Alph\c@chapter}
  \def\chapapp@tocdepth{\expandafter\appendix@tocdepth}
  \def\chapapp@chapter{\app@chapter}
  \def\chapapp@schapter{\app@schapter}
  \renewcommand{\thesection}{\thechapter.\@arabic\c@section}
  \phantomsection%
  \protect{\addcontentsline{toc}{chapter}{APPENDICES}}
}

\def\app@chapter[#1]#2{%
  \ifnum \c@secnumdepth > \m@ne
  \refstepcounter{chapter}%
  \protect{\addcontentsline{toc}{chapter}{\texorpdfstring%
      {\hspace{0.15in}\MakeUppercase{\@chapapp}\space\protect\numberline{\thechapter}\hspace{-0.18in} : \space#1 \vspace{-0.15in}}%
      {APPENDIX\space\thechapter : \space#1}}% end addcontentsline
  } %end protect
  \else
  \addcontentsline{toc}{section}{\MakeUppercase{#1}}%
  \fi
  \protect{\chaptermark{#1}}%
  \if@twocolumn
  \@topnewpage[\@makeapphead{#2}]%
  \else
  \@makeapphead{#2}%
  \@afterheading
  \fi
  \vfill \quad
  \clearpage
}

\def\@makeapphead#1{%
  { \parindent \z@ \raggedright \normalfont
    \quad \vfill
    \centering \underline{\MakeUppercase{\appendixname}\space \thechapter}
    \par\nobreak
    \vskip 20\p@
    \interlinepenalty\@M
    \centering \MakeUppercase{#1}\par\nobreak
    \vfill \quad
  }
}

\setappendixtocdepth{0}
\renewcommand\@dotsep{0.2} %%dot separation in TOC, LOT, LOF and LOA

\renewcommand*\l@chapter[2]{% this changes spacings in the TOC
  \ifnum \c@tocdepth >\m@ne
  \addpenalty{-\@highpenalty}%
  \addvspace{\MT@beforechapskip@value}%
  \setlength\@tempdima{1.5em}% was 1.5em is just right
  \begingroup
  \parindent \z@ \rightskip \@pnumwidth
  \parfillskip -\@pnumwidth
  \leavevmode 
  \advance\leftskip\@tempdima
  \hskip -\leftskip
  #1\nobreak\normalfont\normalcolor
  \leaders\hbox{$\m@th
    \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
    mu$}\hfill
  \nobreak
  % \hb@xt@\@pnumwidth{\hss #2} %this extends dots to pg#width away from pg #
  \hfil #2 %extend all way to pge # per dge desires.
  \par
  \penalty\@highpenalty
  \endgroup 
  \addvspace{\MT@beforechapskip@value}%
  \fi}

% Maximum width of a TOC/LOC/LOF entry before a linebreak occurs (actually the min cline width)
\renewcommand{\@pnumwidth}{1in} 
\renewcommand{\@tocrmarg}{1in}

\newcommand*{\MT@dottedtocline}[5]{%
  \ifnum #1>\c@tocdepth \else
  \addvspace{\MT@@toclineskip}
  {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
    \interlinepenalty\@M
    \leavevmode
    \@tempdima #3\relax
    \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
    {#4}\nobreak
    \leaders\hbox{$\m@th 
      \mkern \@dotsep mu\hbox{.} \mkern \@dotsep
      mu$}\hfill
    \nobreak
    \hfil\normalfont \normalcolor #5%
    % \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
    \par
  }%
  \fi}

% TOC spacing before (and after number if it exists)
\if@altchapter % Alt tiltes (with numbers)
  \renewcommand*\l@section{%
  \let\MT@@toclineskip=\MT@beforesecskip@value
  \MT@dottedtocline{1}{1em}{2.1em}}

  \renewcommand*\l@subsection{%
    \let\MT@@toclineskip=\MT@beforesubsecskip@value
    \MT@dottedtocline{2}{2.7em}{2.8em}}

  \renewcommand*\l@subsubsection{%
  \let\MT@@toclineskip=\MT@beforesubsubsecskip@value
  \MT@dottedtocline{3}{4.9em}{3.0em}}

\else % Standard titles (no numbers)
  \renewcommand*\l@section{%
  \let\MT@@toclineskip=\MT@beforesecskip@value
  \MT@dottedtocline{1}{1.6em}{1.8em}}

  \renewcommand*\l@subsection{%
  \let\MT@@toclineskip=\MT@beforesubsecskip@value
  \MT@dottedtocline{2}{3.8em}{2.0em}}

  \renewcommand*\l@subsubsection{%
  \let\MT@@toclineskip=\MT@beforesubsubsecskip@value
  \MT@dottedtocline{3}{6.0em}{3.0em}}
\fi

\renewcommand*\l@paragraph{%
  \let\MT@@toclineskip=\MT@beforeparaskip@value
  \MT@dottedtocline{4}{10.5em}{5em}}
\renewcommand*\l@subparagraph{%
  \let\MT@@toclineskip=\MT@beforesubparaskip@value
  \MT@dottedtocline{5}{12.5em}{6em}}

\renewcommand*\l@figure{%
  \let\MT@@toclineskip=\MT@beforefigskip@value
  \MT@dottedtocline{1}{1.5em}{3.0em}}% this is indented 1.5em so that 
% if you wish, you can add 'Figure' header
% centered above the numbers using \addtocontents
\let\l@table\l@figure % Same for table and algorithm
\let\l@algorithm\l@figure
\newlength{\MT@tmpa}


%\RequirePackage{geometry}
\newcommand{\do@tablespage}{%
  \iftablespage
  \if@openright\cleardoublepage\else\clearpage\fi 
  % must clear page here, so that phantomsection\addcontentsline is on the correct page
  \phantomsection%
  \pdfbookmark[0]{\lotpdfbookmarkstring}{Tables}%
  \settoheight{\MT@tmpa}{A}
  \set@MTtocskip{\MT@tmpa}
  {\newlinestretch{1}
    % Define headers
    \def\conheadmark{\listhead{List of Tables - Continued}{Table}}
    \def\firheadmark{\listhead{List of Tables}{Table}}

    % Set pagestyle to continued
    \pagestyle{continued}

    % Setup header spacing
    \expandafter\newgeometry\expandafter{\marginlist}
    
    % Header on first page
    \thispagestyle{firstpage}

    % List of Tables
    \newlinestretch{1.0}%
    \@starttoc{lot}

    % End of list
    \clearpage
    
    % Remove header spacing & reset pagestyle
    \restoregeometry
    \pagestyle{\front@pagestyle}
  }
  \newpage
  \fi
}


\newcommand{\do@figurespage}{%
  \iffigurespage
  \if@openright\cleardoublepage\else\clearpage\fi 
  % must clear page here, so that phantomsection\addcontentsline is on the correct page
  \phantomsection%
  \pdfbookmark[0]{\lofpdfbookmarkstring}{Figures}%
  \settoheight{\MT@tmpa}{A}
  \set@MTtocskip{\MT@tmpa}
  {\newlinestretch{1}
    % Define headers
    \def\conheadmark{\listhead{List of Figures - Continued}{Figure}}
    \def\firheadmark{\listhead{List of Figures}{Figure}}

    % Set pagestyle to continued
    \pagestyle{continued}

    % Setup header spacing
    \expandafter\newgeometry\expandafter{\marginlist}
    
    % Header on first page
    \thispagestyle{firstpage}

    % List of Figures
    \newlinestretch{1.0}%
    \@starttoc{lof}

    % End of list
    \clearpage
    
    % Remove header spacing & reset pagestyle
    \restoregeometry
    \pagestyle{\front@pagestyle}

  }
  \newpage
  \fi
}

\newcommand{\do@algorithmspage}{%
  \ifalgorithmspage
  \if@openright\cleardoublepage\else\clearpage\fi 

  % must clear page here, so that phantomsection\addcontentsline is on the correct page
  \phantomsection%
  \pdfbookmark[0]{\loapdfbookmarkstring}{Algorithms}%
  \settoheight{\MT@tmpa}{A}
  \set@MTtocskip{\MT@tmpa}
 % {\newlinestretch{1}
    % Define headers
    \def\conheadmark{\listhead{List of Algorithms - Continued}{Algorithm}}
    \def\firheadmark{\listhead{List of Algorithm}{Algorithm}}

    % Set pagestyle to continued
    \pagestyle{continued}

    % Setup header spacing
    \expandafter\newgeometry\expandafter{\marginlist}
    
    % Header on first page
    \thispagestyle{firstpage}

    % List of Algorithms
    \newlinestretch{1.0}%
    \@starttoc{loa}

    % End of list
    \clearpage
    
    % Remove header spacing & reset pagestyle
    \restoregeometry
    \pagestyle{\front@pagestyle}

  %}
  \newpage
  \fi
}

\newcommand{\do@contentspage}{%
  \ifcontentspage
  \if@openright\cleardoublepage\else\clearpage\fi 
  % must clear page here, so that phantomsection\addcontentsline is on the correct page
  \phantomsection%
  \pdfbookmark[0]{\tocpdfbookmarkstring}{toc}%
  \settoheight{\MT@tmpa}{A}
  \set@MTtocskip{\MT@tmpa}
  {\newlinestretch{1}
    % Define headers
    \def\firheadmark{\tochead{Table of Contents}}
    \def\conheadmark{\tochead{Table of Contents - Continued}}

    % Set pagestyle to continued
    \pagestyle{continued}

    % Setup header spacing
    \expandafter\newgeometry\expandafter{\marginprel}
    
    % Header on first page
    \newlinestretch{1.0}%
    \thispagestyle{firstpage}

    % Table of Contents
    \@starttoc{toc}

    % End of list
    \clearpage
    
    % Remove header spacing & reset pagestyle
    \restoregeometry
    \pagestyle{\front@pagestyle}
  }
  \newpage
  \fi
}

% Preamble headings
\newcommand\tochead[1]{%
  \normalfont\centering\uppercase{#1}%
}%

% LOT, LOF, LOA
\newcommand\listhead[2]{%
  \normalfont\centering\uppercase{#1}\\~\\%
  #2\hfill Page
}%


% First page - pagestyle
\def\ps@firstpage{%
  \def\@oddhead{
    \parbox[t]{0.99\linewidth}{%
      \begin{doublespaced}%
        \hfil\thepage\hfil\\%
        \firheadmark%
      \end{doublespaced}%
    }%
  }
  \let\@evenhead\@oddhead
}%

% Continued pages - pagestyle
\def\ps@continued{%
  \def\@oddhead{
    \parbox[t]{0.99\linewidth}{%
      \begin{doublespaced}%
        \hfil\thepage\hfil\\%
        \conheadmark%
      \end{doublespaced}%
    }%
  }
  \let\@evenhead\@oddhead
}%

% Call \contents to get all the lists and tables done. 
\newcommand{\contents}{%
  \typeout{***************** Contents ******************}
  \newpage
  % Set contents title spacing
  \newlinestretch{\@spacing}
  \setlotdepth
  \setlofdepth  %these tell listof table and figures to print output despite what appears in TOC.
  % Make contents pages
  \do@contentspage
  \do@tablespage
  \do@figurespage
  \do@algorithmspage
}



%%%% for numbering figures and tables in sequential order not beginning again at the start of each chapter.
\newcommand{\@removefromreset}[2]{{%
    \expandafter\let\csname c@#1\endcsname\@removefromreset
    \def\@elt##1{%
      \expandafter\ifx\csname c@##1\endcsname\@removefromreset
      \else
      \noexpand\@elt{##1}%
      \fi}%
    \expandafter\xdef\csname cl@#2\endcsname{%
      \csname cl@#2\endcsname}}}

\ifnumreset
\def\thefigure{\thechapter.\@arabic\c@figure}
\def\thetable{\thechapter.\@arabic\c@table}
\def\theequation{\thechapter.\arabic{equation}}
\def\thealgorithm{\thechapter.\arabic{algorithm}}
\else
\@removefromreset{figure}{chapter}
\@removefromreset{table}{chapter}
\@removefromreset{equation}{chapter}
\@removefromreset{algorithm}{chapter}
\def\thefigure{\@arabic\c@figure}
\def\thetable{\@arabic\c@table}
\def\thealgorithm{\@arabic\c@algorithm}
\def\theequation{\arabic{equation}}
\fi




%% Redefine the macro used for floats (including figures and tables)
%% so that single spacing is used.
%% (Note \def\figure{\@float{figure}set single spacing} doesn't work
%% because figure has an optional argument)
%% 
%% This code was copied directly from latex.ltx, but with the
%% \newlinespacing{} macro added to it.
% 
\def\@xfloat #1[#2]{%
  \@nodocument
  \def \@captype {#1}%
  \def \@fps {#2}%
  \@onelevel@sanitize \@fps
  \def \reserved@b {!}%
  \ifx \reserved@b \@fps
  \@fpsadddefault
  \else
  \ifx \@fps \@empty
  \@fpsadddefault
  \fi
  \fi
  \ifhmode
  \@bsphack
  \@floatpenalty -\@Mii
  \else
  \@floatpenalty-\@Miii
  \fi
  \ifinner
  \@parmoderr\@floatpenalty\z@
  \else
  \@next\@currbox\@freelist
  {%
    \@tempcnta \sixt@@n
    \expandafter \@tfor \expandafter \reserved@a
    \expandafter :\expandafter =\@fps
    \do
    {%
      \if \reserved@a h%
      \ifodd \@tempcnta
      \else
      \advance \@tempcnta \@ne
      \fi
      \fi
      \if \reserved@a t%
      \@setfpsbit \tw@
      \fi
      \if \reserved@a b%
      \@setfpsbit 4%
      \fi
      \if \reserved@a p%
      \@setfpsbit 8%
      \fi
      \if \reserved@a !%
      \ifnum \@tempcnta>15
      \advance\@tempcnta -\sixt@@n\relax
      \fi
      \fi
    }%
    \@tempcntb \csname ftype@\@captype \endcsname
    \multiply \@tempcntb \@xxxii
    \advance \@tempcnta \@tempcntb
    \global \count\@currbox \@tempcnta
  }%
  \@fltovf
  \fi
  \global \setbox\@currbox
  \color@vbox
  \normalcolor
  \vbox \bgroup
  \vspace{16pt}			%Space above figures
  % \newlinestretch{1.0}
  \hsize\columnwidth
  \@parboxrestore
  \@floatboxreset
}


%% RW Triple space under figure captions
% \addtolength{\belowcaptionskip}{14pt}


% Do standard figure captions.
% 
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
  #1: #2\par
  \else
  \global \@minipagefalse
  \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}



% 
%% Chapter headings - centered, all caps, chapter number - roman numeral
% 
% 
\def\chapapp@tocdepth{\expandafter\chapter@tocdepth}
% 
%% The following two def's provide the Indirection needed to work 
%% with hyperref package, since hyperref redefines @chapter and
%% @schapter
% 
\def\chapapp@chapter{\chap@chapter}
\def\chapapp@schapter{\chap@schapter}




% 
%% Make @chapter and @schapter wrappers for (chap@chapter or app@chapter)
%% and (chap@schapter or app@schapter).  This indirection is necessary to
%% work well with the hyperref package.
% 
\def\my@empty{}
\def\@chapter[#1]#2{%
  \def\my@temp{#1}%
  \ifx\my@temp\my@empty
  \chapapp@chapter{#2}
  \else
  \chapapp@chapter[#1]{#2}
  \fi
}
\def\@schapter#1{%
  \chapapp@schapter{#1}
}
% 
%% The actual guts of the chapter heading routines

\renewcommand{\chapter}{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \if@tcpage% DO NOT use the \front@pagestyle macro here.
  {\thispagestyle{tcplain}}
  \else
  {\thispagestyle{plain}} %
  \fi 
  \settocdepth{\chapapp@tocdepth}
  \global\@topnum\z@
  \@afterindenttrue
  \secdef\@chapter\@schapter
}

%% TOC chapter headings
\def\chap@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
  \refstepcounter{chapter}%
  \typeout{***************** \space\@chapapp\space\thechapter.\space\texorpdfstring{#1}\space\space\space *****************}%
  \addcontentsline{toc}{chapter}%
  {\texorpdfstring%
    {\protect\numberline{\thechapter.}\MakeUppercase{#1}}%  period after the chapter number before the chapter name
    {Chapter \thechapter\space\textemdash\space#1}}%
  \else
  \addcontentsline{toc}{chapter}%
  {\texorpdfstring{\MakeUppercase{#1}}{#1}}%
  \fi
  \protect{\chaptermark{#1}}%
  \if@twocolumn
  \@topnewpage[\@makechapterhead{#2}]%
  \else
  \@makechapterhead{#2}%
  \@afterheading
  \fi
}

\def\@makechapterhead#1{%
  { \parindent \z@ \raggedright \normalfont
    \interlinepenalty\@M
    \centering  \MakeUppercase{#1}\par\nobreak
    % \vskip 20\p@
    \vskip 18\p@
  }
}

\def\chap@schapter#1{%
  \if@twocolumn
  \@topnewpage[\@makeschapterhead{#1}]%
  \else
  \@makeschapterhead{#1}%
  \@afterheading
  \fi
}

\def\@makeschapterhead#1{%
  { \parindent \z@ \raggedright \normalfont
    \interlinepenalty\@M
    \centering  #1\par\nobreak
    \vskip 10\p@
  }
}

% ================================= %
% Section titles format and spacing %
% ================================= %
\RequirePackage{titlesec}
\RequirePackage[normalem]{ulem}
\RequirePackage{fmtcount}
% \titlespacing{<command>}{left}{before-sep}{after-sep}
% \titleformat{command}[shape]{format}{label}{sep}{before}[after]

\if@altchapter % Alternative titles
  \typeout{Using Alternative Titles}

  \titlespacing{\chapter}{0pt}{0pt}{*3}
  \titlespacing{\section}{0pt}{*3}{*3}
  \titlespacing{\subsection}{0pt}{*3}{0pt}
  \titlespacing{\subsubsection}{0pt}{*3}{1ex}
  \titleformat{\chapter}[display]{\centering}{CHAPTER \NUMBERstringnum{\thechapter}}{2ex}{\uppercase}
  \titleformat{\section}[hang]{\centering}{\uline{\thesection\hspace*{0.5em}}}{0em}{\uline}
  \titleformat{\subsection}[hang]{}{\uline{\thesubsection\hspace*{0.5em}}}{0em}{\uline}
  \titleformat{\subsubsection}[runin]{}{\indent{\uline{\thesubsubsection\hspace*{0.5em}}}}{0em}{\uline}

  % Long subsection title command
  \newcommand{\longsubsection}[3][]{%
    \addtocounter{subsection}{1}%
    \ifthenelse{\equal{#1}{}}%
      {\addcontentsline{toc}{subsection}{\protect\numberline{\thesubsection}#2\\ #3}}
      {\addcontentsline{toc}{subsection}{\protect\numberline{\thesubsection}#1}}
    \begin{singlespace}
      \noindent\thesubsection\hspace*{0.5em}#2\\\uline{#3}\par%
    \end{singlespace}
  }%

  % Long subsubsection title command
  \newcommand{\longsubsubsection}[3][]{%
    \addtocounter{subsubsection}{1}%
    \ifthenelse{\equal{#1}{}}%
      {\addcontentsline{toc}{subsubsection}{\protect\numberline{\thesubsubsection}#2\\ #3}}
      {\addcontentsline{toc}{subsubsection}{\protect\numberline{\thesubsubsection}#1}}
    \begin{singlespace}
      \noindent\thesubsubsection\hspace*{0.5em}#2\\\uline{#3}\par%
    \end{singlespace}
  }%

\else % Standard titles

  \titlespacing*{\chapter}{0pt}{-24pt}{*3}
  \titlespacing{\section}{0pt}{*3}{*3}
  \titlespacing{\subsection}{0pt}{*3}{0pt}
  \titlespacing{\subsubsection}{0pt}{*3}{1ex}
  \titleformat{\chapter}{\centering\uppercase}{}{0pt}{}
  \titleformat{\section}[hang]{\centering}{}{0em}{\uline}
  \titleformat{\subsection}[hang]{}{}{0em}{\uline}[]
  \titleformat{\subsubsection}[runin]{}{}{0em}{\indent\uline}

  % Long subsection title command
  \newcommand{\longsubsection}[3][]{%
    \addtocounter{subsection}{1}%
    \ifthenelse{\equal{#1}{}}%
      {\addcontentsline{toc}{subsection}{#2\\ #3}}
      {\addcontentsline{toc}{subsection}{#1}} 
    \begin{singlespace}
      \noindent#2\\\uline{#3}\par%
    \end{singlespace}
  }%

  % Long subsubsection title command
  \newcommand{\longsubsubsection}[3][]{%
    \addtocounter{subsubsection}{1}%
    \ifthenelse{\equal{#1}{}}%
     {\addcontentsline{toc}{subsubsection}{#2\\ #3}}
     {\addcontentsline{toc}{subsubsection}{#1}} 
    \begin{singlespace}
      \noindent#2\\\uline{#3}\par%
    \end{singlespace}
  }%
\fi

% Indent after titles
\RequirePackage{indentfirst}

%% formatting of items before main body of text
\newenvironment{preliminary}%
{  
  \newlinestretch{1.0}%
  \pagenumbering{alph}%
  \pagestyle{\front@pagestyle}%
  \iftitlepage%
  \maketitle%
  \fi%

  \pagenumbering{roman} 
  \makecopyright


  \ifsignaturepage%
  \makesignature%
  \fi%

  % \makepermission

  \newlinestretch{\@spacing}%
}%
{%
  \if@draft%
  \else%
  \if@twoside%
  \if@openright%
  \cleardoublepage%
  \fi%
  \fi%
  \fi%
  \newpage%
  \pagenumbering{arabic}%
  \pagestyle{\body@pagestyle}%
  \newlinestretch{\@spacing}%
}%


\renewcommand{\maketitle}{%
  \normalfont
  % \pagenumbering{alph} %change numbering to alph from roman so that duplicate page# not created
  \begingroup
  \newlinestretch{1}%
  \begin{titlepage}%
    \phantomsection%
    \pdfbookmark[0]{Titlepage}{title}%
    \title@top%
    \title@text% contains a \vfill between \degree and \department
    \setcounter{page}{1}%
  \end{titlepage}% this has a \newpage
  \endgroup%
  \setcounter{page}{2}%
  % \pagenumbering{roman} %revert back to roman page numbering for rest of front matter
}%maketitle

\newcommand{\title@top}{%
  % make sure that linestretch is already set to 1, and all 
  % grouping/sectioning commands have already been begun.
  \ifstrictmargins
  \vspace*{0.0in} %.5 RW
  \begin{center}%
    \begin{doublespaced}%
      {\expandafter\MakeUppercase{\@title}}\\
    \end{doublespaced}%
  \end{center}%
  \else%
  \vfill
  \begin{center}   
    \begin{doublespaced}
      {\expandafter\MakeUppercase{\@title}}
    \end{doublespaced}
  \end{center}%
  \fi%
}

\newcommand{\title@text}{
  \begin{center}
    by\\
    \ \\
    {{\@author}}\\
    \vfill 
    A {\degreetype} submitted in partial fulfillment \\
    of the requirements for the degree \\
    \quad \\ 
    of \\
    \quad \\ 
    {\degree}\\
    \quad \\ 
    in \\ 
    \quad \\
    {\@degreetitle}

    \vfill

    MONTANA STATE UNIVERSITY \\
    Bozeman, Montana \\ \vspace*{.3in}
    {\@submitdate}%
    % \vfill
  \end{center}
}

% Make an MSU approved copyright page
\newcommand{\makecopyright}{%
  \if@openright\cleardoublepage\else\clearpage\fi 
  \quad \vspace{0.875in}
  \phantomsection%
  \pdfbookmark[1]{Copyright}{copyright}%

  \begin{center}
    \begin{doublespaced}
      \copyright COPYRIGHT 

      by 

      {\@author} 

      {\@copyrightyear} 

      All Rights Reserved
    \end{doublespaced}
  \end{center}
  \vfill
  % reset page counter.
  \setcounter{page}{1}
  \thispagestyle{empty}
}

\newcommand{\makesignature}{%
  \if@openright\cleardoublepage\else\clearpage\fi 
  \phantomsection%
  \pdfbookmark[1]{Approval}{approval}%
  \begin{center}
    APPROVAL \\ \quad \\
    of a {\degreetype} submitted by \\ \quad \\ 
    {\@author}\\ 
  \end{center}

  \vspace*{.5in}

  \begin{singlespaced}
    This {\degreetype} has been read by each member of the {\degreetype} committee
    and has been found to be satisfactory regarding content, English
    usage, format, citations, bibliographic style, and consistency,
    and is ready for submission to The Graduate School.
  \end{singlespaced}
  
  \vspace*{.75in}
  \begin{center}
    {\@committeechair}
  \end{center}
  \vspace*{.3in}

  \begin{center}
    Approved for the Department of {\@department}
  \end{center}

  \begin{center}
    {\@departmentchair}
  \end{center}

  \vspace*{.3in}


  \begin{center}
    Approved for The Graduate School
  \end{center}
  
  \begin{center}
    {\@graduatedean}
  \end{center}

  % \vfill \quad %to center on page
  \thispagestyle{tcplain} 
}


\newcommand{\makepermission}{ %
  \if@openright\cleardoublepage\else\clearpage\fi 
  \phantomsection%
  \pdfbookmark[1]{Permission}{permission}%
  \begin{center}
    STATEMENT OF PERMISSION TO USE \\ \quad 
  \end{center}
  \begin{doublespaced}
    % {\perm}  \\ $~$
    {\perm}  \\ $~$									%My fix for a bad box
  \end{doublespaced}
  % \vspace*{1.2in}
  % {\@author} \\ \\ \quad 
  {\@author} \\ $~$  \\ \quad      %My fix for another bad box
  {\@submitdate}
  \thispagestyle{tcplain} 
}




%% dedication formatting
\newenvironment{dedication}{%
  \typeout{*****************    Dedication    ******************}
  \if@openright\cleardoublepage\else\clearpage\fi 
  \phantomsection%
  \pdfbookmark[1]{Dedication}{dedication}
  % Define headers
  \def\firheadmark{\tochead{Dedication}}
  \def\conheadmark{\tochead{Dedication - Continued}}

  % Set pagestyle to continued
  \pagestyle{continued}

  % Setup header spacing
  \expandafter\newgeometry\expandafter{\marginprel}
  
  % Header on first page
  \thispagestyle{firstpage}

  \begingroup
  \begin{singlespaced}
}{
  \par
  \end{singlespaced}
  \endgroup 
  % End of Dedication
  \clearpage
  
  % Remove header spacing & reset pagestyle
  \restoregeometry
  \pagestyle{\front@pagestyle}
}% end dedication


% 
%% \begin{acknowledgements}...\end{acknowledgements} formats an
%% acknowledgements section
\newenvironment{acknowledgements}{%
  \typeout{***************** Acknowledgements ******************}
  \if@openright\cleardoublepage\else\clearpage\fi 
  \phantomsection%
  \pdfbookmark[1]{Acknowledgements}{acknowledgements}

  % Define headers
  \def\firheadmark{\tochead{Acknowledgements}}
  \def\conheadmark{\tochead{Acknowledgements - Continued}}

  % Set pagestyle to continued
  \pagestyle{continued}

  % Setup header spacing
  \expandafter\newgeometry\expandafter{\marginprel}
  
  % Header on first page
  \thispagestyle{firstpage}

  \begingroup
    
  % \newlinestretch{1.0}
}{\par\endgroup 
  % End of Acknowlegements
  \clearpage
  
  % Remove header spacing & reset pagestyle
  \restoregeometry
  \pagestyle{\front@pagestyle}
}%Acknowledgements


%% \begin{vita}...\end{vita} formats a
%% vita section
\newenvironment{vita}{%
  \typeout{*****************        Vita       ******************}
  \if@openright\cleardoublepage\else\clearpage\fi 
  \phantomsection%
  \pdfbookmark[1]{Cirriculum Vitae}{vita}
  % Define headers
  \def\firheadmark{\tochead{Vita}}
  \def\conheadmark{\tochead{Vita - Continued}}

  % Set pagestyle to continued
  \pagestyle{continued}

  % Setup header spacing
  \expandafter\newgeometry\expandafter{\marginprel}
  
  % Header on first page
  \thispagestyle{firstpage}

  \begingroup
  \begin{singlespaced}
}{
  \par
  \end{singlespaced}
  \endgroup 
  % End of Vita
  \clearpage
  
  % Remove header spacing & reset pagestyle
  \restoregeometry
  \pagestyle{\front@pagestyle}
} %endVita


%% Change \begin{abstract}...\end{abstract} to follow guidelines
%% and put the abstract on a separate page (checking @openright).
\renewenvironment{abstract}{%
  \typeout{*****************      Abstract     ******************}
  \if@openright\cleardoublepage\else\clearpage\fi 
  \phantomsection%
  \pdfbookmark[0]{Abstract}{abstract}
  % Define headers
  \def\firheadmark{\tochead{Abstract}}
  \def\conheadmark{\tochead{Abstract - Continued}}

  % Set pagestyle to continued
  \pagestyle{continued}

  % Setup header spacing
  \expandafter\newgeometry\expandafter{\marginprel}
  
  % Header on first page
  \thispagestyle{firstpage}

  \begingroup
  \begin{singlespaced}
}{
  \par
  \end{singlespaced}
  \endgroup 
  % End of Dedication
  \clearpage
  
  % Remove header spacing & reset pagestyle
  \restoregeometry
  \pagestyle{\front@pagestyle}
}%abstract


%% formatting for stuff after the main body of text
\newenvironment{postliminary}%
{\pagestyle{\back@pagestyle}}%
{\settocdepth{\chapter@tocdepth}%
  \pagestyle{\body@pagestyle}}


%% setup reference page title and TOC entry
\newcommand{\refname}{References Cited}
\newcommand{\references}{%
  \ifbibpage
  \typeout{*****************     \refname    ******************}
  \newlinestretch{1.0}
  \if@openright\cleardoublepage\else\clearpage\fi 
  % must clear page here, so that phantomsection\addcontentsline is on the correct page
  \phantomsection
  \addcontentsline{toc}{chapter}%
  {\texorpdfstring{\MakeUppercase{\refname}}{\refname}}
  \bibliography{\@bibfiles}
  \fi %end if bibpage
}


%%% bibiliography page formatting    ...this is not for bibliography styles
\renewenvironment{thebibliography}[1]{
  {%
    \ifAppend
    \if@openright
    \cleardoublepage
    \else
    \clearpage
    \fi
    \quad \vfill
    \begin{center}
      % \underline{\MakeUppercase{\refname}}
      \MakeUppercase{\refname}
    \end{center}
    \vfill \quad
    \if@openright
    \cleardoublepage
    \else
    \clearpage
    \fi
    \else  %there is no appendix so put \refname on same page
    \centering\underline{\MakeUppercase{\refname}}
    \vskip 30\p@  %\vskip 0.3in
    \fi %end ifAppend

    \pagestyle{\body@pagestyle}% REFERENCES uses BODY pagestyle, not endmatter.
  }
  \list{\@biblabel{\@arabic\c@enumiv}}%
  { \settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \@openbib@code
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}
  }%
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty ``thebibliography'' environment}
    \pagestyle{\back@pagestyle}
  }%
  \endlist
}




