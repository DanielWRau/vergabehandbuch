#!/bin/bash

echo "📚 Generiere wissenschaftliche PDF-Publikation..."
echo "=========================================="

# Konfiguration
INPUT_DIR="buch-vollversion"
OUTPUT_BASE="Vergabebuch_2025"
TEMP_DIR="pdf_temp"
LATEX_TEMPLATE="academic_book_template.tex"

# Temporäres Verzeichnis erstellen
mkdir -p "$TEMP_DIR"

# Sammle alle Markdown-Dateien in der richtigen Reihenfolge
CHAPTERS=(
    "00_Einleitung.md"
    "Kapitel_01_Sprachmodelle_verstehen.md"
    "Kapitel_02_Prompting_Methodik.md"
    "Kapitel_03_Vergabeprozess_Grundlagen.md"
    "Kapitel_04_Bedarfsanalyse_Marktrecherche.md"
    "Kapitel_05_Ausschreibung_Leistungsbeschreibung.md"
    "Kapitel_06_Vertragsmanagement.md"
    "Kapitel_07_Rechtliche_Sondersituationen.md"
    "Kapitel_08_Technische_Implementierung.md"
    "Kapitel_09_Rechtliche_Rahmenbedingungen.md"
    "Kapitel_10_Zukunftstrends.md"
    "Legal-Tech-Handbuch-Vergaberecht.md"
    "Technische_Grundlagen_LLM_Report.md"
    "Anhang_A_Prompt_Bibliothek_Verstaendlich.md"
    "Anhang_B_Rechtliche_Checklisten.md"
    "Anhang_C_Technische_Implementierung_Verstaendlich.md"
    "Anhang_D_Glossar_Terminologie.md"
)

# Erstelle LaTeX-Template für deutsche wissenschaftliche Publikation
cat > "$TEMP_DIR/$LATEX_TEMPLATE" << 'LATEX_TEMPLATE'
\documentclass[
    12pt,                    % Schriftgröße
    a4paper,                 % Papierformat
    twoside,                 % Doppelseitig
    openright,               % Kapitel beginnen auf rechter Seite
    titlepage,               % Separate Titelseite
    bibliography=totoc,      % Literaturverzeichnis ins Inhaltsverzeichnis
    listof=totoc,           % Listen ins Inhaltsverzeichnis
    index=totoc,            % Index ins Inhaltsverzeichnis
    captions=tableheading,  % Tabellenbeschriftungen oben
    final                   % Finale Version
]{scrbook}                  % KOMA-Script Buchklasse

% ========================================
% DEUTSCHE PAKETE UND EINSTELLUNGEN
% ========================================
\usepackage[ngerman]{babel}                    % Deutsche Sprache
\usepackage[utf8]{inputenc}                    % UTF-8 Eingabe
\usepackage[T1]{fontenc}                       % Schriftenkodierung
\usepackage{lmodern}                           % Latin Modern Schrift
\usepackage{microtype}                         % Mikrotypografie

% ========================================
% SEITENLAYOUT UND TYPOGRAFIE
% ========================================
\usepackage[
    top=2.5cm,              % Oberer Rand
    bottom=2.5cm,           % Unterer Rand
    left=3cm,               % Linker Rand (Bindungsrand)
    right=2.5cm,            % Rechter Rand
    bindingoffset=0.5cm,    % Zusätzlicher Bindungsrand
    headheight=1.2\baselineskip,
    headsep=0.5cm,
    footskip=1cm
]{geometry}

% Zeilenhöhe für wissenschaftliche Texte
\usepackage{setspace}
\onehalfspacing                                % 1,5-facher Zeilenabstand

% ========================================
% SCHRIFTARTEN UND FARBEN
% ========================================
\usepackage{xcolor}
\definecolor{darkblue}{RGB}{0,51,102}         % Dunkelblau für Überschriften
\definecolor{mediumblue}{RGB}{0,102,204}     % Mittelblau für Akzente
\definecolor{lightgray}{RGB}{245,245,245}    % Hellgrau für Boxen

% ========================================
% ÜBERSCHRIFTEN UND KAPITEL
% ========================================
\usepackage{titlesec}

% Kapitelüberschriften
\titleformat{\chapter}[display]
    {\normalfont\huge\bfseries\color{darkblue}}
    {\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titlespacing*{\chapter}{0pt}{0pt}{40pt}

% Sektionsüberschriften
\titleformat{\section}
    {\normalfont\Large\bfseries\color{darkblue}}
    {\thesection}{1em}{}
\titleformat{\subsection}
    {\normalfont\large\bfseries\color{mediumblue}}
    {\thesubsection}{1em}{}
\titleformat{\subsubsection}
    {\normalfont\normalsize\bfseries}
    {\thesubsubsection}{1em}{}

% ========================================
% KOPF- UND FUSSZEILEN
% ========================================
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE]{\leftmark}
\fancyhead[RO]{\rightmark}
\fancyfoot[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}

% Erste Seite der Kapitel
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

% ========================================
% INHALTSVERZEICHNIS UND LISTEN
% ========================================
\usepackage{tocloft}
\setcounter{tocdepth}{2}                      % Tiefe des Inhaltsverzeichnisses
\setcounter{secnumdepth}{3}                   % Nummerierungstiefe

% ========================================
% TABELLEN UND ABBILDUNGEN
% ========================================
\usepackage{booktabs}                         % Professionelle Tabellen
\usepackage{longtable}                        % Lange Tabellen
\usepackage{array}                            % Erweiterte Tabellenfunktionen
\usepackage{graphicx}                         % Grafiken einbinden
\usepackage{float}                            % Verbesserte Positionierung
\usepackage{subcaption}                       % Untertitel für Abbildungen

% ========================================
% MATHEMATIK UND FORMELN
% ========================================
\usepackage{amsmath}                          % Erweiterte Mathematik
\usepackage{amssymb}                          % Mathematische Symbole
\usepackage{amsthm}                           % Theoreme und Beweise

% ========================================
% VERWEISE UND ZITATE
% ========================================
\usepackage{hyperref}
\hypersetup{
    pdftitle={Sprachmodelle in der öffentlichen Auftragsvergabe},
    pdfauthor={Fachverlag für öffentliches Management},
    pdfsubject={KI-gestützte Beschaffung},
    pdfkeywords={Vergabe, KI, Sprachmodelle, öffentliche Beschaffung},
    colorlinks=true,
    linkcolor=darkblue,
    citecolor=darkblue,
    urlcolor=mediumblue,
    filecolor=mediumblue,
    menucolor=darkblue,
    runcolor=darkblue,
    bookmarksopen=true,
    bookmarksnumbered=true,
    pdfstartview=FitH,
    pdfpagemode=UseOutlines
}

% ========================================
% CODE UND LISTINGS
% ========================================
\usepackage{listings}
\usepackage{xcolor}

\lstdefinestyle{codestyle}{
    backgroundcolor=\color{lightgray},
    commentstyle=\color{darkgreen},
    keywordstyle=\color{blue},
    numberstyle=\tiny\color{gray},
    stringstyle=\color{purple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2,
    frame=single,
    rulecolor=\color{black}
}
\lstset{style=codestyle}

% ========================================
% BESONDERE UMGEBUNGEN
% ========================================
\usepackage{tcolorbox}
\tcbuselibrary{breakable}

% Infobox
\newtcolorbox{infobox}{
    colback=blue!5!white,
    colframe=blue!75!black,
    title=Information,
    breakable
}

% Warnungsbox
\newtcolorbox{warningbox}{
    colback=orange!5!white,
    colframe=orange!75!black,
    title=Achtung,
    breakable
}

% Praxisbox
\newtcolorbox{praxisbox}{
    colback=green!5!white,
    colframe=green!75!black,
    title=Praxistipp,
    breakable
}

% ========================================
% DEUTSCHE BEZEICHNUNGEN
% ========================================
\addto\extrasgerman{
    \def\chapterautorefname{Kapitel}
    \def\sectionautorefname{Abschnitt}
    \def\subsectionautorefname{Abschnitt}
    \def\subsubsectionautorefname{Abschnitt}
    \def\figureautorefname{Abbildung}
    \def\tableautorefname{Tabelle}
    \def\appendixautorefname{Anhang}
}

% ========================================
% METADATEN
% ========================================
\title{Sprachmodelle in der öffentlichen Auftragsvergabe}
\subtitle{Vollständiger Praxisleitfaden für die KI-gestützte Beschaffung}
\author{Fachverlag für öffentliches Management}
\date{\today}
\publishers{Fachverlag für öffentliches Management}

% ========================================
% DOKUMENT BEGINNT HIER
% ========================================
\begin{document}

% Titelseite
\maketitle

% Römische Seitennumerierung für Vorspann
\frontmatter

% Impressum
\chapter*{Impressum}
\thispagestyle{empty}
\begin{flushleft}
\textbf{Sprachmodelle in der öffentlichen Auftragsvergabe}\\
Vollständiger Praxisleitfaden für die KI-gestützte Beschaffung\\[1em]

\textbf{Verlag:} Fachverlag für öffentliches Management\\
\textbf{Erscheinungsjahr:} 2025\\
\textbf{Auflage:} 1. Auflage\\
\textbf{Format:} DIN A4\\
\textbf{Umfang:} ca. 500 Seiten\\[1em]

\textbf{Zielgruppe:}\\
Vergabeverantwortliche, Amtsleiter, IT-Verantwortliche, Führungskräfte der öffentlichen Verwaltung\\[1em]

\textbf{Themenbereich:}\\
Öffentliche Auftragsvergabe, Künstliche Intelligenz, Digitale Transformation, Verwaltungsmodernisierung\\[2em]

Alle Rechte vorbehalten. Das Werk einschließlich aller seiner Teile ist urheberrechtlich geschützt.\\[1em]

\textbf{Technische Angaben:}\\
Generiert mit Pandoc und \LaTeX\\
Optimiert für professionelle Buchproduktion\\[1em]

\textbf{Build-Information:}\\
Erstellt am: \today\\
Version: Academic Edition 1.0\\
\end{flushleft}

\cleardoublepage

% Inhaltsverzeichnis
\tableofcontents
\cleardoublepage

% Abbildungsverzeichnis (falls vorhanden)
\listoffigures
\cleardoublepage

% Tabellenverzeichnis (falls vorhanden)
\listoftables
\cleardoublepage

% Arabische Seitennumerierung für Hauptteil
\mainmatter

% Hier wird der Hauptinhalt eingefügt
$body$

% Anhang
\appendix

% Literaturverzeichnis (falls vorhanden)
\backmatter
\cleardoublepage

% Schlusswort
\chapter*{Über diese Publikation}
\addcontentsline{toc}{chapter}{Über diese Publikation}

Diese Publikation wurde unter Verwendung modernster Technologien erstellt und stellt eine umfassende Zusammenstellung von Fachwissen zur Anwendung von Sprachmodellen in der öffentlichen Auftragsvergabe dar.

\vfill

\begin{center}
\textit{Erstellt mit Unterstützung von Claude AI}\\
\textit{Fachverlag für öffentliches Management, 2025}
\end{center}

\end{document}
LATEX_TEMPLATE

echo "✅ LaTeX-Template erstellt: $TEMP_DIR/$LATEX_TEMPLATE"

# Erstelle eine kombinierte Markdown-Datei
echo "📄 Kombiniere Markdown-Dateien..."
COMBINED_MD="$TEMP_DIR/combined_book.md"

# Header mit Metadaten
cat > "$COMBINED_MD" << 'HEADER'
---
title: "Sprachmodelle in der öffentlichen Auftragsvergabe"
subtitle: "Vollständiger Praxisleitfaden für die KI-gestützte Beschaffung"
author: "Fachverlag für öffentliches Management"
date: "2025"
documentclass: scrbook
classoption: 
  - 12pt
  - a4paper
  - twoside
  - openright
  - titlepage
lang: de-DE
geometry:
  - top=2.5cm
  - bottom=2.5cm
  - left=3cm
  - right=2.5cm
  - bindingoffset=0.5cm
fontsize: 12pt
linestretch: 1.5
toc: true
lof: true
lot: true
bibliography: references.bib
biblio-style: alphabetic
link-citations: true
colorlinks: true
---

HEADER

# Füge alle Kapitel hinzu
chapter_count=0
for chapter in "${CHAPTERS[@]}"; do
    chapter_file="$INPUT_DIR/$chapter"
    if [ -f "$chapter_file" ]; then
        echo "✅ Füge hinzu: $chapter"
        ((chapter_count++))
        
        # Kapitelmarker
        echo -e "\n\\newpage\n" >> "$COMBINED_MD"
        echo -e "<!-- KAPITEL: $chapter -->\n" >> "$COMBINED_MD"
        
        # Kapitelinhalt
        cat "$chapter_file" >> "$COMBINED_MD"
        echo -e "\n" >> "$COMBINED_MD"
    else
        echo "❌ Nicht gefunden: $chapter_file"
    fi
done

echo "📊 Kapitel verarbeitet: $chapter_count"

# Generiere verschiedene PDF-Versionen
echo ""
echo "🔄 Generiere PDF-Versionen..."
echo "================================"

# Option 1: Pandoc mit LaTeX (empfohlen für wissenschaftliche Texte)
echo "1️⃣ Pandoc → LaTeX → PDF (Wissenschaftlicher Standard)"
pandoc "$COMBINED_MD" \
    --template="$TEMP_DIR/$LATEX_TEMPLATE" \
    --pdf-engine=xelatex \
    --from=markdown+yaml_metadata_block \
    --to=pdf \
    --variable=fontsize:12pt \
    --variable=documentclass:scrbook \
    --variable=classoption:12pt,a4paper,twoside,openright,titlepage \
    --variable=geometry:top=2.5cm,bottom=2.5cm,left=3cm,right=2.5cm,bindingoffset=0.5cm \
    --variable=linestretch:1.5 \
    --variable=lang:de-DE \
    --toc \
    --toc-depth=3 \
    --number-sections \
    --highlight-style=tango \
    --listings \
    --output="$OUTPUT_BASE"_Academic.pdf

if [ $? -eq 0 ]; then
    echo "✅ Wissenschaftliche PDF erstellt: $OUTPUT_BASE"_Academic.pdf
else
    echo "❌ Fehler bei der Erstellung der wissenschaftlichen PDF"
fi

# Option 2: Pandoc mit Standard-Engine (als Fallback)
echo ""
echo "2️⃣ Pandoc → Standard PDF (Fallback)"
pandoc "$COMBINED_MD" \
    --pdf-engine=pdflatex \
    --from=markdown+yaml_metadata_block \
    --to=pdf \
    --toc \
    --toc-depth=3 \
    --number-sections \
    --highlight-style=tango \
    --variable=fontsize:12pt \
    --variable=documentclass:book \
    --variable=geometry:a4paper,margin=2.5cm \
    --variable=linestretch:1.5 \
    --output="$OUTPUT_BASE"_Standard.pdf

if [ $? -eq 0 ]; then
    echo "✅ Standard PDF erstellt: $OUTPUT_BASE"_Standard.pdf
else
    echo "❌ Fehler bei der Erstellung der Standard PDF"
fi

# Option 3: HTML → PDF mit wkhtmltopdf (für moderne Layouts)
echo ""
echo "3️⃣ HTML → PDF (Modernes Layout)"
pandoc "$COMBINED_MD" \
    --from=markdown+yaml_metadata_block \
    --to=html5 \
    --standalone \
    --css="book-styles.css" \
    --toc \
    --toc-depth=3 \
    --number-sections \
    --highlight-style=tango \
    --output="$TEMP_DIR/book.html"

if [ -f "$TEMP_DIR/book.html" ]; then
    wkhtmltopdf \
        --page-size A4 \
        --margin-top 25mm \
        --margin-bottom 25mm \
        --margin-left 30mm \
        --margin-right 25mm \
        --enable-toc-back-links \
        --toc \
        --header-center "Sprachmodelle in der öffentlichen Auftragsvergabe" \
        --header-font-size 10 \
        --footer-center "[page] von [topage]" \
        --footer-font-size 10 \
        "$TEMP_DIR/book.html" \
        "$OUTPUT_BASE"_Modern.pdf

    if [ $? -eq 0 ]; then
        echo "✅ Moderne PDF erstellt: $OUTPUT_BASE"_Modern.pdf
    else
        echo "❌ Fehler bei der Erstellung der modernen PDF"
    fi
fi

# Statistiken
echo ""
echo "================================================"
echo "📚 PDF-GENERIERUNG ABGESCHLOSSEN"
echo "================================================"

for pdf in "$OUTPUT_BASE"_*.pdf; do
    if [ -f "$pdf" ]; then
        size=$(du -h "$pdf" | cut -f1)
        pages=$(pdfinfo "$pdf" 2>/dev/null | grep "Pages:" | awk '{print $2}')
        echo "📄 $pdf:"
        echo "   • Größe: $size"
        echo "   • Seiten: ${pages:-'Unbekannt'}"
        echo ""
    fi
done

echo "🔧 Empfehlung: Verwende '$OUTPUT_BASE'_Academic.pdf für wissenschaftliche Zwecke"
echo "🎨 Alternative: '$OUTPUT_BASE'_Modern.pdf für moderne Layouts"
echo ""

# Aufräumen (optional)
read -p "🗑️ Temporäre Dateien löschen? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    rm -rf "$TEMP_DIR"
    echo "✅ Temporäre Dateien gelöscht"
else
    echo "📁 Temporäre Dateien verbleiben in: $TEMP_DIR"
fi

echo "================================================"
echo "✅ Alle PDF-Versionen erfolgreich erstellt!"
echo "================================================"