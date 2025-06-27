#!/bin/bash

echo "📚 Erstelle UTF-8 PDF mit Umlauten..."

# Konfiguration
INPUT_DIR="buch-vollversion"
OUTPUT="Vergabebuch_2025_UTF8.pdf"
TEMP_MD="utf8_book.md"

# UTF-8 Header mit deutschen Einstellungen
cat > "$TEMP_MD" << 'EOF'
---
title: "Sprachmodelle in der öffentlichen Auftragsvergabe"
subtitle: "Vollständiger Praxisleitfaden für die KI-gestützte Beschaffung"
author: "Fachverlag für öffentliches Management"
date: "2025"
lang: de
fontsize: 12pt
documentclass: book
geometry: a4paper,margin=2.5cm
header-includes:
  - \usepackage[utf8]{inputenc}
  - \usepackage[T1]{fontenc}
  - \usepackage[ngerman]{babel}
  - \usepackage{lmodern}
toc: true
---

# Sprachmodelle in der öffentlichen Auftragsvergabe
## Vollständiger Praxisleitfaden für die KI-gestützte Beschaffung

**Verlag:** Fachverlag für öffentliches Management  
**Erscheinungsjahr:** 2025  
**Zielgruppe:** Vergabeverantwortliche, Amtsleiter, IT-Verantwortliche, Führungskräfte

---

EOF

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

# Sanfte Bereinigung nur für problematische Zeichen (nicht Umlaute!)
clean_problematic_chars() {
    sed 's/□/ /g' |     # Quadrat-Symbol entfernen
    sed 's/≤/<=/g' |    # Kleiner-gleich
    sed 's/≥/>=/g' |    # Größer-gleich
    sed 's/–/-/g' |     # En-dash
    sed 's/—/-/g' |     # Em-dash
    sed 's/…/.../g' |   # Ellipsis
    sed 's/→/->/g' |    # Pfeil rechts
    sed 's/←/<-/g' |    # Pfeil links
    sed 's/✓/[x]/g' |   # Häkchen
    sed 's/✗/[ ]/g'     # Kreuz
}

# Füge alle Kapitel hinzu
count=0
for chapter in "${CHAPTERS[@]}"; do
    if [ -f "$INPUT_DIR/$chapter" ]; then
        echo "✅ Verarbeite: $chapter"
        ((count++))
        echo -e "\\newpage\n" >> "$TEMP_MD"
        echo "# Kapitel $count" >> "$TEMP_MD"
        echo "" >> "$TEMP_MD"
        
        # Sanfte Bereinigung (Umlaute bleiben erhalten!)
        cat "$INPUT_DIR/$chapter" | clean_problematic_chars >> "$TEMP_MD"
        echo "" >> "$TEMP_MD"
        echo "---" >> "$TEMP_MD"
        echo "" >> "$TEMP_MD"
    else
        echo "❌ Nicht gefunden: $chapter"
    fi
done

# Schlusswort
cat >> "$TEMP_MD" << 'EOF'

---

## Publikationsangaben

**Fertigstellung:** 2025  
**Gesamtkapitel:** 17  
**Build:** UTF-8 PDF Edition 1.0  

**Erstellt mit:** Claude AI  
**Verlag:** Fachverlag für öffentliches Management  

---
EOF

echo "📊 $count Kapitel verarbeitet"

# Teste verschiedene PDF-Engines
echo "🔄 Erstelle UTF-8 PDF..."

# Versuch 1: XeLaTeX (beste UTF-8 Unterstützung)
echo "1️⃣ Versuche XeLaTeX..."
pandoc "$TEMP_MD" \
    --pdf-engine=xelatex \
    --from=markdown \
    --to=pdf \
    --toc \
    --number-sections \
    -o "$OUTPUT" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "✅ XeLaTeX erfolgreich!"
else
    echo "❌ XeLaTeX fehlgeschlagen, versuche pdflatex..."
    
    # Versuch 2: pdflatex mit UTF-8 Paketen
    pandoc "$TEMP_MD" \
        --pdf-engine=pdflatex \
        --from=markdown \
        --to=pdf \
        --variable=fontenc:T1 \
        --variable=inputenc:utf8 \
        --variable=babel-lang:german \
        --toc \
        --number-sections \
        -o "$OUTPUT" 2>/dev/null
    
    if [ $? -eq 0 ]; then
        echo "✅ pdflatex erfolgreich!"
    else
        echo "❌ Beide LaTeX-Engines fehlgeschlagen"
        
        # Plan B: HTML für Google Docs
        echo "🔄 Erstelle HTML-Fallback für Google Docs..."
        pandoc "$TEMP_MD" \
            --from=markdown \
            --to=html5 \
            --standalone \
            --toc \
            --number-sections \
            -o "Vergabebuch_2025_GoogleDocs.html"
        
        if [ $? -eq 0 ]; then
            echo "✅ HTML für Google Docs erstellt: Vergabebuch_2025_GoogleDocs.html"
            echo "💡 Diese Datei kann in Google Docs importiert werden!"
        fi
    fi
fi

# Ergebnis prüfen
if [ -f "$OUTPUT" ]; then
    size=$(du -h "$OUTPUT" | cut -f1)
    pages=$(pdfinfo "$OUTPUT" 2>/dev/null | grep "Pages:" | awk '{print $2}')
    echo ""
    echo "✅ PDF erfolgreich erstellt!"
    echo "📄 Datei: $OUTPUT"
    echo "📊 Größe: $size"
    echo "📖 Seiten: ${pages:-'unbekannt'}"
    
    # Test auf Umlaute
    echo "🔍 Teste Umlaute..."
    if pdftotext "$OUTPUT" - 2>/dev/null | grep -q "ä\|ö\|ü\|Ä\|Ö\|Ü\|ß"; then
        echo "✅ Umlaute sind korrekt enthalten!"
    else
        echo "⚠️ Umlaute könnten fehlen - prüfe PDF manuell"
    fi
    
    rm "$TEMP_MD"
    echo "🧹 Temporäre Dateien gelöscht"
else
    echo "❌ PDF-Erstellung komplett fehlgeschlagen"
    echo "📄 Markdown-Datei verfügbar: $TEMP_MD"
    echo "📄 HTML-Alternative verfügbar: Vergabebuch_2025_GoogleDocs.html"
fi

echo "================================================"