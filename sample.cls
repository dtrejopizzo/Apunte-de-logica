\ProvidesFile{sample.cls}
\ProvidesClass{sample}

%% Les options : il n'y en a pas
\newif\if@test
\@testfalse
\DeclareOption{test}{%
  \@testtrue
  \typeout{Ceci est un essai...^^J}}

%% On charge la classe article.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}

\RequirePackage[a4paper]{geometry}
%\RequirePackage{cropmark}

\RequirePackage[latin1]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath,amssymb}
\RequirePackage[frenchb]{babel}

\def\sometext@{Bla bla bla bla. Bla bla bla bla. Bla bla bla bla. Bla
  bla bla bla. Bla bla bla bla. Bla bla bla bla. Bla bla bla bla. }
\def\sometext@@{\sometext@\sometext@\sometext@\sometext@\sometext@\par}
\def\sometext{\sometext@@\sometext@@\sometext@@\sometext@@\sometext@@}
