#!/bin/bash

echo "📄 Erstelle Google Docs Import-Datei..."

INPUT_DIR="buch-vollversion"
OUTPUT="Vergabebuch_2025_GoogleDocs.docx"
TEMP_MD="google_docs.md"

# Header für Google Docs optimiert
cat > "$TEMP_MD" << 'EOF'
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

# Einfache Bereinigung für bessere Kompatibilität
clean_for_docs() {
    sed 's/□/ /g' |     # Quadrat-Symbol
    sed 's/≤/<=/g' |    # Kleiner-gleich
    sed 's/≥/>=/g' |    # Größer-gleich
    sed 's/→/->/g' |    # Pfeil rechts
    sed 's/←/<-/g' |    # Pfeil links
    sed 's/✓/[x]/g' |   # Häkchen
    sed 's/✗/[ ]/g'     # Kreuz
}

# Kapitel hinzufügen
count=0
for chapter in "${CHAPTERS[@]}"; do
    if [ -f "$INPUT_DIR/$chapter" ]; then
        echo "✅ $chapter"
        ((count++))
        echo -e "\n\\pagebreak\n" >> "$TEMP_MD"
        echo "# Kapitel $count" >> "$TEMP_MD"
        echo "" >> "$TEMP_MD"
        
        cat "$INPUT_DIR/$chapter" | clean_for_docs >> "$TEMP_MD"
        echo "" >> "$TEMP_MD"
        echo "---" >> "$TEMP_MD"
        echo "" >> "$TEMP_MD"
    fi
done

echo "📊 $count Kapitel verarbeitet"

# Erstelle DOCX für Google Docs
echo "🔄 Erstelle DOCX für Google Docs..."
pandoc "$TEMP_MD" \
    --from=markdown \
    --to=docx \
    --toc \
    --number-sections \
    -o "$OUTPUT"

if [ $? -eq 0 ]; then
    size=$(du -h "$OUTPUT" | cut -f1)
    echo "✅ DOCX erstellt: $OUTPUT ($size)"
    echo "📤 Kann direkt in Google Docs importiert werden!"
    rm "$TEMP_MD"
else
    echo "❌ DOCX-Erstellung fehlgeschlagen"
    echo "📄 Markdown verfügbar: $TEMP_MD"
fi

echo "================================================"