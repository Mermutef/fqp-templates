% !TeX encoding = UTF-8
%%
%% This is file annotation.cls
%% Class for annotation page of diploma thesis
%%
%% Developed by: Vladislav Kopnin
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{annotation}[2026/06/18 Annotation class for diploma thesis]

% Загружаем базовый класс article
\LoadClass[12pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Подключаем основные пакеты
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{fontspec}
\setmainfont{Times New Roman}[Script=Cyrillic]
\RequirePackage[english,russian]{babel}
\babelprovide[import, onchar=fonts ids]{russian}
\babelfont{rm}{Times New Roman}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{enumitem}
\setlist{noitemsep, leftmargin=\parindent}
\setlist[itemize]{label=--}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Поля страницы
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\geometry{
  a4paper,
  left=3cm,
  right=1.5cm,
  top=2cm,
  bottom=2cm
}

\onehalfspacing

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Команды для заполнения полей
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand*{\Napr}[1]{\gdef\@AnnotationDirection{#1}}
\newcommand*{\Title}[1]{\gdef\@AnnotationTitle{#1}}
\newcommand*{\Author}[2]{\gdef\@AnnotationAuthorStatus{#1}\gdef\@AnnotationAuthorName{#2}}
\newcommand*{\Group}[1]{\gdef\@AnnotationGroup{#1}}
\newcommand*{\Kafedra}[1]{\gdef\@AnnotationDepartment{#1}}
\newcommand*{\Chief}[2]{\gdef\@AnnotationSupervisorName{#1}\gdef\@AnnotationSupervisorTitle{#2}}
\newcommand*{\Actuality}[1]{\gdef\@AnnotationText{#1}}
\newcommand*{\Goal}[1]{\gdef\@AnnotationGoal{#1}}
\newcommand*{\Content}[1]{\gdef\@AnnotationContent{#1}}
\newcommand*{\Result}[1]{\gdef\@AnnotationResult{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Значения по умолчанию
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\Napr{}
\Title{}
\Author{Студент}{}
\Group{}
\Kafedra{}
\Chief{}{}
\Actuality{}
\Goal{}
\Content{}
\Result{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Генерация страницы аннотации
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makeannotation}{%
\thispagestyle{empty}
\begin{center}
\textbf{\large Аннотация}

\textbf{к выпускной квалификационной работе бакалавра}

по направлению \@AnnotationDirection
\end{center}

\begin{center}
\textbf{\large\@AnnotationTitle}
\end{center}

\textbf{\@AnnotationAuthorStatus{} группы \@AnnotationGroup{} \@AnnotationAuthorName{}}

\textbf{Кафедра \@AnnotationDepartment{}}

\textbf{Научный руководитель \@AnnotationSupervisorName{}, \@AnnotationSupervisorTitle{}}

\vspace{1em}

\textbf{Актуальность} \quad \@AnnotationText

\vspace{1em}

\textbf{Цель и задачи работы} \quad \@AnnotationGoal

\vspace{1em}

\textbf{Содержательная часть} \quad \@AnnotationContent

\vspace{1em}

\textbf{Результаты} \quad \@AnnotationResult
\clearpage
}
