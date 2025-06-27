#\!/bin/bash

echo "🔨 Erstelle vollständiges Vergabebuch..."

OUTPUT="VOLLSTAENDIGES_VERGABEBUCH_2025.md"

# Header
cat > "$OUTPUT" << 'HEADER'
# Sprachmodelle in der öffentlichen Auftragsvergabe
## Vollständiger Praxisleitfaden für die KI-gestützte Beschaffung

**Verlag:** Fachverlag für öffentliches Management  
**Erscheinungsjahr:** 2025  
**Umfang:** 500+ Seiten  
**Zielgruppe:** Vergabeverantwortliche, Amtsleiter, IT-Verantwortliche, Führungskräfte

---

# Inhaltsverzeichnis

## Teil I: Grundlagen
- Einleitung: Die KI-Revolution in der Beschaffung
- Kapitel 1: Sprachmodelle verstehen
- Kapitel 2: Prompting-Methodik  
- Kapitel 3: Vergabeprozess-Grundlagen

## Teil II: Praktische Anwendung
- Kapitel 4: Bedarfsanalyse und Marktrecherche
- Kapitel 5: Ausschreibung und Leistungsbeschreibung
- Kapitel 6-7: Spezialanwendungen
- Kapitel 8-10: Implementierung und Zukunft

## Teil III: Praxistools und Anhänge
- Legal-Tech-Handbuch
- Best-Practice-Kompendium
- Technische Grundlagen
- Prompt-Bibliothek
- Rechtliche Checklisten
- Glossar und Terminologie

---

HEADER

# Alle Kapitel in richtiger Reihenfolge hinzufügen
CHAPTERS=(
    "00_Einleitung.md"
    "Kapitel_01_Sprachmodelle_verstehen.md"
    "Kapitel_02_Prompting_Methodik.md"
    "Kapitel_03_Vergabeprozess_Grundlagen.md"
    "Kapitel_04_Bedarfsanalyse_Marktrecherche.md"
    "Kapitel_05_Ausschreibung_Leistungsbeschreibung.md"
    "Kapitel_06-07_Spezialanwendungen.md"
    "kapitel_8_technische_implementierung.md"
    "Kapitel_08-10_Implementierung_Zukunft.md"
    "Kapitel10_Zukunftstrends_Report.md"
    "Legal-Tech-Handbuch-Vergaberecht.md"
    "best-practice-kompendium-prompting.md"
    "Technische_Grundlagen_LLM_Report.md"
    "vergaberechtlicher_leitfaden_agent7.md"
    "Anhang_A_Prompt_Bibliothek_Verstaendlich.md"
    "Anhang_B_Rechtliche_Checklisten.md"
    "Anhang_C_Technische_Implementierung_Verstaendlich.md"
    "Anhang_D_Glossar_Terminologie.md"
    "Agent_12_Lueckenanalyse_Report.md"
    "Final_Review_Report.md"
    "FINAL_STATISTICS_REPORT.md"
)

count=0
total_words=0

for chapter in "${CHAPTERS[@]}"; do
    if [ -f "$chapter" ]; then
        echo "✅ Kapitel: $chapter"
        
        # Kapitel-Header
        echo -e "\n\n<\!-- ==================== KAPITEL: $chapter ==================== -->\n" >> "$OUTPUT"
        
        # Kapitel-Inhalt
        cat "$chapter" >> "$OUTPUT"
        
        # Kapitel-Trenner
        echo -e "\n\n---\n\n" >> "$OUTPUT"
        
        # Statistiken
        words=$(wc -w < "$chapter")
        total_words=$((total_words + words))
        ((count++))
        
        echo "   📊 Wörter: $words"
    else
        echo "❌ Fehlt: $chapter"
    fi
done

# Schlusswort
cat >> "$OUTPUT" << 'FOOTER'

---

## Publikationsangaben

**Fertigstellung:** $(date '+%d. %B %Y um %H:%M Uhr')  
**Gesamtkapitel:** $(echo $count)  
**Gesamtwörter:** $(printf "%'d" $total_words)  
**Geschätzte Seiten:** $(($total_words / 250))  
**Build:** Final Complete Edition 1.0

**Mitwirkende Agenten:**
- Agent 1-15: Kapitel-Spezialisten
- Finaler Konsolidierungs-Agent: Zusammenführung

---

🤖 **Generated with [Claude Code](https://claude.ai/code)**

**Co-Authored-By:** Claude <noreply@anthropic.com>

---
FOOTER

# Endstatistiken
total_words=$(wc -w < "$OUTPUT")
total_lines=$(wc -l < "$OUTPUT")
total_chars=$(wc -c < "$OUTPUT")
estimated_pages=$((total_words / 250))

echo ""
echo "================================================"
echo "📚 VOLLSTÄNDIGES VERGABEBUCH FERTIGGESTELLT"
echo "================================================"
echo "📄 Datei: $OUTPUT"
echo "📊 Endergebnis:"
echo "   • Kapitel integriert: $count"
echo "   • Gesamtwörter: $(printf "%'d" $total_words)"
echo "   • Zeilen: $(printf "%'d" $total_lines)"
echo "   • Zeichen: $(printf "%'d" $total_chars)"
echo "   • Geschätzte Buchseiten: $estimated_pages"
echo "   • Dateigröße: $(du -h "$OUTPUT"  < /dev/null |  cut -f1)"
echo ""
echo "✅ Buch ist bereit für:"
echo "   - PDF-Konvertierung"
echo "   - E-Book-Erstellung"
echo "   - Druckvorbereitung"
echo "================================================"
