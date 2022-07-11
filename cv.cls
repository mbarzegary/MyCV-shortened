\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{cv}

\LoadClass{article}

\RequirePackage{titlesec}
\RequirePackage{fontawesome}
\RequirePackage{graphics}
\RequirePackage{color}
\RequirePackage{adjustbox}
\RequirePackage
[
  left=0.65in,
  top=0.65in,
  right=0.65in,
  bottom=0.65in
]
{geometry} 
\RequirePackage{hyperref}

\usepackage{dejavu}
\usepackage[T1]{fontenc}

%\usepackage{setspace}
%\singlespacing
\usepackage{enumitem}


\definecolor{linkcolour}{rgb}{0,0.2,0.6}
\hypersetup{colorlinks,breaklinks,urlcolor=linkcolour, linkcolor=linkcolour}

% The Travis CI has an old version of fontawesome package, so we should define some of the commands in case they are defined
\providecommand{\faInstagram}{}
\providecommand{\faInternetExplorer}{}

\titleformat{\section}  
  {\large\scshape\raggedright} 
  {}{0em}                      
  {}                           
  [\titlerule] 

\titleformat{\subsection}
  {\normalsize\scshape\raggedright}
  {}{0em}
  {}
  
\newcommand{\cvheader}[2]
{
\begin{minipage}{0.08\textwidth}
\hfill
\end{minipage}
\begin{minipage}{0.75\textwidth}
{#1}
\end{minipage}
%\begin{minipage}{.7\textwidth}
%{#1}
%\end{minipage}
%\begin{minipage}{.3\textwidth}
%  \centerline{\includegraphics[width=3.5cm]{{#2}}}
%\end{minipage}
}

\newcommand{\name}[1]
{
  \centerline{\Large{\MakeUppercase{\textbf{#1}}}}
  \bigskip
}

\newcommand{\address}[1]
{
  {\normalsize{\faMapMarker \, \, #1}} 
}

\newcommand{\mail}[1]
{
  {\normalsize{\faEnvelope \,\, #1}} 
}

\newcommand{\mailalt}[1]
{
  {\normalsize{\faEnvelope \,\, #1}} 
}

\newcommand{\phone}[1]
{
  {\normalsize{\faPhone \,\, #1}} 
}

\newcommand{\socialGitHub}[1]
{
  {\normalsize{\faGithub \, \,\, #1}} 
}

\newcommand{\socialLinkedIn}[1]
{
  {\normalsize{\faLinkedin \, \,\, #1}} 
}

\newcommand{\socialTwitter}[1]
{
  {\normalsize{\faTwitter \, \,\, #1}} 
}

\newcommand{\socialYoutube}[1]
{
  {\normalsize{\faYoutubePlay \, \,\, #1}} 
}

\newcommand{\webpage}[1]
{
  {\normalsize{\faInternetExplorer \,\, #1}} 
}

\newcommand{\datedsection}[2]
{
  \section[#1]{#1 \hfill #2}
}

\newcommand{\longdatedsubsection}[4]
{
  \subsection[#1]{{#1} \hfill #2 \\
	  		          {#3} \hfill #4}
}

\newcommand{\datedsubsection}[4]
{
  \subsection[#1]{{#1} \hfill #2} 
}
