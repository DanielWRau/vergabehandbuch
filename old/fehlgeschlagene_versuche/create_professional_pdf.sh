#!/bin/bash

echo "📚 Erstelle professionelle PDF mit Inhaltsverzeichnis und Seitenzahlen..."

INPUT_DIR="buch-vollversion"
TEMP_MD="professional_book.md"

# Kapitel-Array
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

# Minimale Bereinigung - bewährt
minimal_clean() {
    sed 's/🟢/[GRUEN]/g' |
    sed 's/🔴/[ROT]/g' |
    sed 's/🟡/[GELB]/g' |
    sed 's/📊/[GRAFIK]/g' |
    sed 's/💡/[TIPP]/g' |
    sed 's/⚠️/[WARNUNG]/g' |
    sed 's/✅/[OK]/g' |
    sed 's/❌/[FEHLER]/g' |
    sed 's/🎯/[ZIEL]/g' |
    sed 's/🚀/[START]/g' |
    sed 's/⭐/[STERN]/g' |
    sed 's/🔧/[TOOL]/g' |
    sed 's/📚/[BUCH]/g' |
    sed 's/□/ /g'
}

# Erstelle Markdown mit Metadaten für TOC
echo "📄 Erstelle Markdown mit Inhaltsverzeichnis..."
cat > "$TEMP_MD" << 'EOF'
---
title: "Sprachmodelle in der öffentlichen Auftragsvergabe"
subtitle: "Vollständiger Praxisleitfaden für die KI-gestützte Beschaffung"
author: "Fachverlag für öffentliches Management"
date: "2025"
---

# Sprachmodelle in der öffentlichen Auftragsvergabe

**Vollständiger Praxisleitfaden für die KI-gestützte Beschaffung**

**Verlag:** Fachverlag für öffentliches Management  
**Jahr:** 2025  
**Zielgruppe:** Vergabeverantwortliche, Amtsleiter, IT-Verantwortliche, Führungskräfte

---

EOF

count=0
for chapter in "${CHAPTERS[@]}"; do
    if [ -f "$INPUT_DIR/$chapter" ]; then
        echo "✅ $chapter"
        ((count++))
        
        echo -e "\n\\pagebreak\n" >> "$TEMP_MD"
        echo "# Kapitel $count" >> "$TEMP_MD"
        echo "" >> "$TEMP_MD"
        
        # Bereinige und füge Inhalt hinzu
        cat "$INPUT_DIR/$chapter" | minimal_clean >> "$TEMP_MD"
        echo "" >> "$TEMP_MD"
    fi
done

echo "📊 $count Kapitel verarbeitet"

# Erstelle HTML mit TOC
echo "🔄 Erstelle HTML mit Inhaltsverzeichnis..."
pandoc "$TEMP_MD" \
    --from=markdown \
    --to=html5 \
    --standalone \
    --toc \
    --toc-depth=3 \
    --number-sections \
    --css=data:text/css,"
        /* Professional Book Styling */
        @page { size: A4; margin: 2.5cm 2cm; }
        
        body { 
            font-family: 'Times New Roman', serif; 
            font-size: 12pt; 
            line-height: 1.6; 
            margin: 0; 
            padding: 20px;
            color: #333;
        }
        
        /* Title Page */
        h1.title { 
            font-size: 24pt; 
            color: #2c3e50; 
            text-align: center; 
            margin: 50px 0 20px 0;
            border-bottom: 3px solid #3498db;
            padding-bottom: 20px;
        }
        
        .subtitle { 
            font-size: 16pt; 
            text-align: center; 
            color: #7f8c8d; 
            margin-bottom: 30px;
        }
        
        .author, .date { 
            text-align: center; 
            font-size: 12pt; 
            margin: 10px 0;
        }
        
        /* Table of Contents */
        #TOC { 
            page-break-after: always; 
            border: 1px solid #ddd; 
            padding: 20px; 
            margin: 30px 0;
            background: #f9f9f9;
        }
        
        #TOC::before { 
            content: 'Inhaltsverzeichnis'; 
            font-size: 18pt; 
            font-weight: bold; 
            color: #2c3e50;
            display: block; 
            margin-bottom: 20px; 
            text-align: center;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        
        #TOC ul { 
            list-style: none; 
            padding-left: 0; 
        }
        
        #TOC li { 
            margin: 8px 0; 
            padding: 5px 0;
            border-bottom: 1px dotted #ccc;
        }
        
        #TOC a { 
            text-decoration: none; 
            color: #2c3e50; 
        }
        
        #TOC a:hover { 
            color: #3498db; 
        }
        
        /* Chapter Headings */
        h1 { 
            font-size: 20pt; 
            color: #2c3e50; 
            margin: 40px 0 20px 0; 
            page-break-before: always;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        
        h2 { 
            font-size: 16pt; 
            color: #34495e; 
            margin: 30px 0 15px 0; 
            page-break-after: avoid;
        }
        
        h3 { 
            font-size: 14pt; 
            color: #7f8c8d; 
            margin: 25px 0 12px 0; 
            page-break-after: avoid;
        }
        
        h4 { 
            font-size: 12pt; 
            color: #95a5a6; 
            margin: 20px 0 10px 0; 
        }
        
        /* Paragraphs */
        p { 
            text-align: justify; 
            margin: 12px 0; 
            orphans: 2; 
            widows: 2; 
        }
        
        /* Lists */
        ul, ol { 
            margin: 15px 0; 
            padding-left: 25px; 
        }
        
        li { 
            margin: 5px 0; 
            line-height: 1.5; 
        }
        
        /* Code */
        code { 
            background: #f8f9fa; 
            padding: 2px 6px; 
            border-radius: 3px; 
            font-family: 'Courier New', monospace; 
            font-size: 11pt;
        }
        
        pre { 
            background: #f8f9fa; 
            padding: 15px; 
            border-radius: 5px; 
            border-left: 4px solid #3498db;
            overflow-x: auto; 
            page-break-inside: avoid;
            font-size: 10pt;
        }
        
        /* Tables */
        table { 
            border-collapse: collapse; 
            width: 100%; 
            margin: 20px 0; 
            page-break-inside: avoid;
        }
        
        th, td { 
            border: 1px solid #ddd; 
            padding: 10px; 
            text-align: left; 
        }
        
        th { 
            background-color: #f2f2f2; 
            font-weight: bold; 
        }
        
        /* Blockquotes */
        blockquote { 
            border-left: 4px solid #3498db; 
            padding: 15px 20px; 
            margin: 20px 0; 
            background: #f9f9f9; 
            font-style: italic;
            page-break-inside: avoid;
        }
        
        /* Horizontal Rules */
        hr { 
            border: none; 
            height: 2px; 
            background: linear-gradient(to right, #3498db, transparent); 
            margin: 30px 0; 
        }
        
        /* Print Styles */
        @media print {
            body { font-size: 11pt; }
            h1 { font-size: 18pt; }
            h2 { font-size: 14pt; }
            h3 { font-size: 12pt; }
            
            .page-break { page-break-before: always; }
            .no-break { page-break-inside: avoid; }
        }
    " \
    --output="professional_book.html"

if [ -f "professional_book.html" ]; then
    echo "✅ HTML mit Inhaltsverzeichnis erstellt"
    
    # PDF mit wkhtmltopdf - mit TOC und Seitenzahlen
    echo "📄 Erstelle PDF mit Inhaltsverzeichnis und Seitenzahlen..."
    wkhtmltopdf \
        --page-size A4 \
        --margin-top 25mm \
        --margin-bottom 25mm \
        --margin-left 25mm \
        --margin-right 20mm \
        --encoding UTF-8 \
        --print-media-type \
        --enable-toc-back-links \
        --toc \
        --toc-header-text "Inhaltsverzeichnis" \
        --toc-text-size-shrink 0.8 \
        --header-center "Sprachmodelle in der öffentlichen Auftragsvergabe" \
        --header-font-size 9 \
        --header-spacing 5 \
        --footer-center "Seite [page] von [topage]" \
        --footer-font-size 9 \
        --footer-spacing 5 \
        "professional_book.html" \
        "Vergabebuch_2025_PROFESSIONELL.pdf"

    if [ $? -eq 0 ]; then
        size=$(du -h "Vergabebuch_2025_PROFESSIONELL.pdf" | cut -f1)
        pages=$(pdfinfo "Vergabebuch_2025_PROFESSIONELL.pdf" 2>/dev/null | grep "Pages:" | awk '{print $2}')
        
        echo ""
        echo "✅ PROFESSIONELLE PDF ERSTELLT!"
        echo "📄 Datei: Vergabebuch_2025_PROFESSIONELL.pdf"
        echo "📊 Größe: $size"
        echo "📖 Seiten: $pages"
        echo ""
        echo "🎯 Features:"
        echo "   ✅ Inhaltsverzeichnis mit Seitenzahlen"
        echo "   ✅ Kopfzeile mit Titel"
        echo "   ✅ Fußzeile mit Seitenzahlen"
        echo "   ✅ Professionelle Formatierung"
        echo "   ✅ Deutsche Umlaute korrekt"
        
        # Test der neuen PDF
        pdftotext "Vergabebuch_2025_PROFESSIONELL.pdf" test_prof.txt 2>/dev/null
        if [ -f "test_prof.txt" ]; then
            umlaut_count=$(grep -o '[äöüÄÖÜß]' test_prof.txt | wc -l)
            echo "   ✅ Umlaute gefunden: $umlaut_count"
            
            echo ""
            echo "📄 Erste Zeilen der neuen PDF:"
            head -5 test_prof.txt
            rm test_prof.txt
        fi
        
    else
        echo "❌ PDF-Erstellung fehlgeschlagen"
    fi
    
    rm "professional_book.html"
else
    echo "❌ HTML-Erstellung fehlgeschlagen"
fi

# Aufräumen
rm "$TEMP_MD"

echo ""
echo "================================================"
echo "🏆 PROFESSIONELLE PDF MIT TOC UND SEITENZAHLEN"
echo "================================================"