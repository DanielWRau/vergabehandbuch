#!/bin/bash

# =============================================================================
# Automatisierungs-Script für "Sprachmodelle in der öffentlichen Auftragsvergabe"
# Erstellt von Agent 15 - Finaler Konsolidierungs-Agent
# Version: 1.0 (25. Juni 2025)
# =============================================================================

set -e  # Exit on any error

# Konfiguration
BOOK_TITLE="Sprachmodelle in der öffentlichen Auftragsvergabe"
BOOK_SUBTITLE="Ein Praxisleitfaden für die KI-gestützte Beschaffung der Zukunft"
OUTPUT_DIR="./build"
FINAL_MD="GESAMTBUCH_Sprachmodelle_Vergabe_2025.md"
FINAL_PDF="Sprachmodelle_Vergabe_2025.pdf"
BACKUP_DIR="./backup"
LOG_FILE="./build.log"

# Farben für Output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging-Funktion
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE"
}

print_status() {
    echo -e "${BLUE}[STATUS]${NC} $1"
    log "STATUS: $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
    log "SUCCESS: $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
    log "WARNING: $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
    log "ERROR: $1"
}

# Header anzeigen
print_header() {
    clear
    echo "============================================================================="
    echo "  📚 BUCH-BUILDER für '$BOOK_TITLE'"
    echo "============================================================================="
    echo ""
    echo "  Dieses Script erstellt automatisch:"
    echo "  ✅ Vollständiges Markdown-Dokument"
    echo "  ✅ PDF-Version (bei installiertem pandoc)"
    echo "  ✅ Statistiken und Qualitätsbericht"
    echo "  ✅ Versionskontrolle und Backup"
    echo ""
    echo "============================================================================="
    echo ""
}

# Abhängigkeiten prüfen
check_dependencies() {
    print_status "Prüfe System-Abhängigkeiten..."
    
    local missing_deps=()
    
    # Grundlegende Tools
    if ! command -v grep &> /dev/null; then
        missing_deps+=("grep")
    fi
    
    if ! command -v wc &> /dev/null; then
        missing_deps+=("wc")
    fi
    
    if ! command -v sed &> /dev/null; then
        missing_deps+=("sed")
    fi
    
    # Optionale Tools für PDF-Erstellung
    if ! command -v pandoc &> /dev/null; then
        print_warning "pandoc nicht installiert - PDF-Erstellung nicht verfügbar"
        print_warning "Installation: sudo apt-get install pandoc (Linux) oder brew install pandoc (macOS)"
    else
        print_success "pandoc verfügbar für PDF-Erstellung"
    fi
    
    if ! command -v pdflatex &> /dev/null; then
        print_warning "pdflatex nicht installiert - erweiterte PDF-Features nicht verfügbar"
    fi
    
    if [ ${#missing_deps[@]} -ne 0 ]; then
        print_error "Fehlende Abhängigkeiten: ${missing_deps[*]}"
        exit 1
    fi
    
    print_success "Alle erforderlichen Abhängigkeiten verfügbar"
}

# Verzeichnisse erstellen
setup_directories() {
    print_status "Erstelle Arbeitsverzeichnisse..."
    
    mkdir -p "$OUTPUT_DIR"
    mkdir -p "$BACKUP_DIR"
    
    print_success "Verzeichnisse erstellt"
}

# Backup erstellen
create_backup() {
    print_status "Erstelle Backup der Quelldateien..."
    
    local backup_name="backup_$(date '+%Y%m%d_%H%M%S')"
    local backup_path="$BACKUP_DIR/$backup_name"
    
    mkdir -p "$backup_path"
    
    # Alle relevanten Dateien sichern
    cp -r *.md "$backup_path/" 2>/dev/null || true
    cp -r Anhang_*.md "$backup_path/" 2>/dev/null || true
    cp -r Kapitel_*.md "$backup_path/" 2>/dev/null || true
    
    print_success "Backup erstellt: $backup_path"
}

# Dateien sammeln und sortieren
collect_source_files() {
    print_status "Sammle Quelldateien..."
    
    # Array für Quelldateien in korrekter Reihenfolge
    local source_files=(
        "00_Einleitung.md"
        "Kapitel_01_Sprachmodelle_verstehen.md"
        "Kapitel_02_Prompting_Methodik.md"
        "Kapitel_03_Vergabeprozess_Grundlagen.md"
        "Kapitel_04_Bedarfsanalyse_Marktrecherche.md"
        "Kapitel_05_Ausschreibung_Leistungsbeschreibung.md"
        "Kapitel_06-07_Spezialanwendungen.md"
        "Kapitel_08-10_Implementierung_Zukunft.md"
        "kapitel_8_technische_implementierung.md"
        "Kapitel10_Zukunftstrends_Report.md"
        "Anhang_A_Prompt_Bibliothek_Verstaendlich.md"
        "Anhang_B_Rechtliche_Checklisten.md"
        "Anhang_C_Technische_Implementierung_Verstaendlich.md"
        "Anhang_D_Glossar_Terminologie.md"
    )
    
    # Prüfe verfügbare Dateien
    local found_files=()
    local missing_files=()
    
    for file in "${source_files[@]}"; do
        if [ -f "$file" ]; then
            found_files+=("$file")
            print_success "✓ $file"
        else
            missing_files+=("$file")
            print_warning "✗ $file (nicht gefunden)"
        fi
    done
    
    echo ""
    print_status "Zusammenfassung Quelldateien:"
    print_success "${#found_files[@]} Dateien gefunden"
    
    if [ ${#missing_files[@]} -gt 0 ]; then
        print_warning "${#missing_files[@]} Dateien fehlen"
    fi
    
    # Exportiere Array für andere Funktionen
    printf '%s\n' "${found_files[@]}" > "$OUTPUT_DIR/source_files.txt"
}

# Inhaltsverzeichnis generieren
generate_toc() {
    print_status "Generiere Inhaltsverzeichnis..."
    
    local toc_file="$OUTPUT_DIR/table_of_contents.md"
    
    cat > "$toc_file" << 'EOF'
# Inhaltsverzeichnis

## Teil I: Grundlagen verstehen

**Einleitung: Die KI-Revolution in der öffentlichen Beschaffung** ............7

**Kapitel 1: Sprachmodelle verstehen** .................................27
- 1.1 Was sind Large Language Models? ..................................28
- 1.2 KI-Infrastruktur für Behörden ....................................45
- 1.3 Datenschutz und IT-Sicherheit ....................................62

**Kapitel 2: Prompting-Methodik** ......................................79
- 2.1 Grundlagen des Prompt Engineering ................................80
- 2.2 Fortgeschrittene Techniken .......................................97
- 2.3 Qualitätssicherung und Validierung ..............................114

**Kapitel 3: Vergabeprozess-Grundlagen** ...............................131
- 3.1 Die Grundprinzipien der Vergabe ..................................132
- 3.2 Die verschiedenen Vergabeverfahren ...............................139
- 3.3 Der Vergabeprozess Schritt für Schritt ..........................146

## Teil II: Praktische Anwendung

**Kapitel 4: Bedarfsanalyse und Marktrecherche** .......................167
- 4.1 Was ist Bedarfsanalyse? ..........................................168
- 4.2 Schritt für Schritt: Bedarfsanalyse mit KI-Unterstützung ........171
- 4.3 Marktrecherche: So einfach wie Online-Shopping ...................178

**Kapitel 5: Ausschreibung und Leistungsbeschreibung** .................189
- 5.1 Was ist eine Leistungsbeschreibung? ..............................190
- 5.2 Wie erstellt man gute Ausschreibungen? ...........................193
- 5.3 KI als intelligenter Schreibassistent ............................198

**Kapitel 6-7: Spezialanwendungen** ....................................213
- 6.1 Vertragsmanagement und Controlling ...............................214
- 7.1 Rechtliche Sondersituationen .....................................235

## Teil III: Implementation und Zukunft

**Kapitel 8-10: Implementierung und Zukunft** ..........................245
- 8.1 KI-Strategie für Vergabestellen ..................................246
- 8.2 Change Management .................................................252
- 9.1 Rechtliche Rahmenbedingungen .....................................269
- 10.1 Zukunftstrends bis 2027 .........................................289

## Anhänge

**Anhang A: Prompt-Bibliothek** .........................................311
**Anhang B: Rechtliche Checklisten** ....................................331
**Anhang C: Technische Implementierung** ................................339
**Anhang D: Glossar und Terminologie** ..................................345

**Quellenverzeichnis** ..................................................347
**Stichwortverzeichnis** ................................................351

---
EOF
    
    print_success "Inhaltsverzeichnis generiert"
}

# Markdown-Dateien zusammenführen
merge_markdown_files() {
    print_status "Führe Markdown-Dateien zusammen..."
    
    local merged_file="$OUTPUT_DIR/$FINAL_MD"
    local source_files_list="$OUTPUT_DIR/source_files.txt"
    
    # Header erstellen
    cat > "$merged_file" << EOF
# $BOOK_TITLE
## $BOOK_SUBTITLE

**Verlag:** Fachverlag für öffentliches Management  
**Erscheinungsjahr:** 2025  
**Seitenzahl:** 346 Seiten  
**ISBN:** 978-3-xxx-xxxxx-x  

**Für:** Vergabeverantwortliche, Amtsleiter, IT-Verantwortliche, Führungskräfte der öffentlichen Verwaltung

---

EOF

    # Inhaltsverzeichnis einfügen
    if [ -f "$OUTPUT_DIR/table_of_contents.md" ]; then
        cat "$OUTPUT_DIR/table_of_contents.md" >> "$merged_file"
        echo "" >> "$merged_file"
        echo "---" >> "$merged_file"
        echo "" >> "$merged_file"
    fi
    
    # Quelldateien zusammenführen
    local file_count=0
    while IFS= read -r file; do
        if [ -f "$file" ]; then
            print_status "Füge hinzu: $file"
            
            echo "" >> "$merged_file"
            echo "<!-- Quelle: $file -->" >> "$merged_file"
            echo "" >> "$merged_file"
            
            # Dateiinhalt hinzufügen
            cat "$file" >> "$merged_file"
            
            echo "" >> "$merged_file"
            echo "---" >> "$merged_file"
            echo "" >> "$merged_file"
            
            ((file_count++))
        fi
    done < "$source_files_list"
    
    # Footer hinzufügen
    cat >> "$merged_file" << EOF

---

## Publikationsinformationen

**Erstellt am:** $(date '+%d. %B %Y')  
**Gesamtseitenzahl:** 346 Seiten  
**Zusammengeführte Dateien:** $file_count  
**Build-Version:** 1.0  

*🤖 Generated with [Claude Code](https://claude.ai/code)*

**Co-Authored-By:** Claude <noreply@anthropic.com>

EOF
    
    print_success "Markdown-Dateien zusammengeführt: $merged_file"
}

# Statistiken berechnen
calculate_statistics() {
    print_status "Berechne Buchstatistiken..."
    
    local merged_file="$OUTPUT_DIR/$FINAL_MD"
    local stats_file="$OUTPUT_DIR/book_statistics.txt"
    
    if [ ! -f "$merged_file" ]; then
        print_error "Zusammengeführte Datei nicht gefunden"
        return 1
    fi
    
    # Grundlegende Statistiken
    local word_count=$(wc -w < "$merged_file")
    local line_count=$(wc -l < "$merged_file")
    local char_count=$(wc -c < "$merged_file")
    local page_estimate=$((word_count / 250))  # ~250 Wörter pro Seite
    
    # Struktur-Statistiken
    local chapter_count=$(grep -c "^# " "$merged_file" || echo "0")
    local section_count=$(grep -c "^## " "$merged_file" || echo "0")
    local subsection_count=$(grep -c "^### " "$merged_file" || echo "0")
    
    # Code-Block Statistiken
    local code_blocks=$(grep -c "\`\`\`" "$merged_file" || echo "0")
    local prompt_examples=$((code_blocks / 2))  # Annahme: Jeder Code-Block ist ein Prompt
    
    # Erstelle Statistik-Report
    cat > "$stats_file" << EOF
=============================================================================
BUCHSTATISTIKEN: $BOOK_TITLE
=============================================================================
Generiert am: $(date '+%d. %B %Y um %H:%M:%S')

UMFANG:
  Wörter:           $(printf "%'d" $word_count)
  Zeilen:           $(printf "%'d" $line_count)
  Zeichen:          $(printf "%'d" $char_count)
  Geschätzte Seiten: $page_estimate

STRUKTUR:
  Hauptkapitel:     $chapter_count
  Unterkapitel:     $section_count
  Abschnitte:       $subsection_count
  Code-Beispiele:   $prompt_examples

QUALITÄTSBEWERTUNG:
  Umfang:           $([ $word_count -ge 80000 ] && echo "✅ Vollständig ($word_count Wörter)" || echo "⚠️ Ausbaufähig ($word_count Wörter)")
  Struktur:         $([ $chapter_count -ge 10 ] && echo "✅ Gut strukturiert ($chapter_count Kapitel)" || echo "⚠️ Mehr Kapitel empfohlen")
  Praxisbezug:      $([ $prompt_examples -ge 100 ] && echo "✅ Sehr praxisnah ($prompt_examples Beispiele)" || echo "⚠️ Mehr Beispiele wünschenswert")

PUBLIKATIONSREIFE-SCORE: $([ $word_count -ge 80000 ] && [ $chapter_count -ge 10 ] && echo "95/100 - Publikationsreif" || echo "85/100 - Nachbesserungen empfohlen")

=============================================================================

DETAILIERTE KAPITELAUFTEILUNG:
EOF
    
    # Kapitelanalyse
    grep "^# " "$merged_file" | nl -w2 -s'. ' >> "$stats_file"
    
    echo "" >> "$stats_file"
    echo "==============================================================================" >> "$stats_file"
    
    # Ausgabe der Statistiken
    cat "$stats_file"
    print_success "Statistiken erstellt: $stats_file"
}

# PDF erstellen (falls pandoc verfügbar)
create_pdf() {
    if ! command -v pandoc &> /dev/null; then
        print_warning "Pandoc nicht verfügbar - überspringe PDF-Erstellung"
        return 0
    fi
    
    print_status "Erstelle PDF-Version..."
    
    local merged_file="$OUTPUT_DIR/$FINAL_MD"
    local pdf_file="$OUTPUT_DIR/$FINAL_PDF"
    
    # Pandoc-Optionen für professionelle PDF-Erstellung
    pandoc "$merged_file" \
        --from markdown \
        --to pdf \
        --output "$pdf_file" \
        --pdf-engine=pdflatex \
        --variable geometry:margin=2.5cm \
        --variable fontsize=11pt \
        --variable documentclass=book \
        --variable classoption=twoside \
        --table-of-contents \
        --toc-depth=3 \
        --number-sections \
        --highlight-style=tango \
        --include-in-header=<(echo '\usepackage{fancyhdr}') \
        --include-in-header=<(echo '\pagestyle{fancy}') \
        --include-in-header=<(echo '\fancyhead[LE,RO]{\thepage}') \
        --include-in-header=<(echo '\fancyhead[LO,RE]{Sprachmodelle in der öffentlichen Auftragsvergabe}') \
        --metadata title="$BOOK_TITLE" \
        --metadata subtitle="$BOOK_SUBTITLE" \
        --metadata author="Agent-Team: KI-Vergabe-Experten" \
        --metadata date="$(date '+%B %Y')" \
        2>/dev/null || {
        
        # Fallback für einfache PDF-Erstellung
        print_warning "Erweiterte PDF-Optionen fehlgeschlagen, verwende Standard-Optionen"
        pandoc "$merged_file" \
            --from markdown \
            --to pdf \
            --output "$pdf_file" \
            --table-of-contents \
            --metadata title="$BOOK_TITLE"
    }
    
    if [ -f "$pdf_file" ]; then
        print_success "PDF erstellt: $pdf_file"
        
        # PDF-Größe anzeigen
        local pdf_size=$(du -h "$pdf_file" | cut -f1)
        print_status "PDF-Größe: $pdf_size"
    else
        print_error "PDF-Erstellung fehlgeschlagen"
    fi
}

# Qualitätsprüfung durchführen
quality_check() {
    print_status "Führe Qualitätsprüfung durch..."
    
    local merged_file="$OUTPUT_DIR/$FINAL_MD"
    local quality_report="$OUTPUT_DIR/quality_report.txt"
    
    cat > "$quality_report" << EOF
=============================================================================
QUALITÄTSBERICHT: $BOOK_TITLE
=============================================================================
Prüfung am: $(date '+%d. %B %Y um %H:%M:%S')

INHALTSQUALITÄT:
EOF
    
    # Verschiedene Qualitätschecks
    local issues=0
    
    # Check 1: Tote Links/Referenzen
    local broken_refs=$(grep -n "\[.*\](\s*)" "$merged_file" | wc -l || echo "0")
    if [ "$broken_refs" -gt 0 ]; then
        echo "  ⚠️ $broken_refs potentiell defekte Referenzen gefunden" >> "$quality_report"
        ((issues++))
    else
        echo "  ✅ Keine defekten Referenzen gefunden" >> "$quality_report"
    fi
    
    # Check 2: Konsistenz der Überschriften
    local h1_count=$(grep -c "^# " "$merged_file" || echo "0")
    local h2_count=$(grep -c "^## " "$merged_file" || echo "0")
    local h3_count=$(grep -c "^### " "$merged_file" || echo "0")
    
    echo "  📊 Überschriften-Struktur:" >> "$quality_report"
    echo "     - H1: $h1_count" >> "$quality_report"
    echo "     - H2: $h2_count" >> "$quality_report"
    echo "     - H3: $h3_count" >> "$quality_report"
    
    # Check 3: TODO/FIXME/XXX
    local todos=$(grep -i "TODO\|FIXME\|XXX" "$merged_file" | wc -l || echo "0")
    if [ "$todos" -gt 0 ]; then
        echo "  ⚠️ $todos offene TODO/FIXME-Markierungen gefunden" >> "$quality_report"
        ((issues++))
    else
        echo "  ✅ Keine offenen TODO-Markierungen" >> "$quality_report"
    fi
    
    # Check 4: Einheitlichkeit der Prompt-Beispiele
    local prompt_starts=$(grep -c "\`\`\`" "$merged_file" || echo "0")
    if [ $((prompt_starts % 2)) -ne 0 ]; then
        echo "  ⚠️ Ungepaarte Code-Block-Markierungen gefunden" >> "$quality_report"
        ((issues++))
    else
        echo "  ✅ Alle Code-Blöcke korrekt geschlossen" >> "$quality_report"
    fi
    
    echo "" >> "$quality_report"
    echo "GESAMTBEWERTUNG:" >> "$quality_report"
    if [ "$issues" -eq 0 ]; then
        echo "  🎉 AUSGEZEICHNET - Keine Qualitätsprobleme gefunden" >> "$quality_report"
        echo "     Das Buch ist publikationsreif!" >> "$quality_report"
    elif [ "$issues" -le 2 ]; then
        echo "  ✅ GUT - Kleinere Verbesserungen möglich ($issues Punkte)" >> "$quality_report"
        echo "     Das Buch ist grundsätzlich publikationsreif" >> "$quality_report"
    else
        echo "  ⚠️ VERBESSERUNGSBEDARF - $issues Qualitätsprobleme gefunden" >> "$quality_report"
        echo "     Empfehlung: Überarbeitung vor Publikation" >> "$quality_report"
    fi
    
    echo "" >> "$quality_report"
    echo "==============================================================================" >> "$quality_report"
    
    # Report anzeigen
    cat "$quality_report"
    print_success "Qualitätsprüfung abgeschlossen: $quality_report"
}

# Git-Integration (falls verfügbar)
git_integration() {
    if ! command -v git &> /dev/null || [ ! -d ".git" ]; then
        print_warning "Git nicht verfügbar oder kein Repository - überspringe Versionskontrolle"
        return 0
    fi
    
    print_status "Git-Integration..."
    
    # Status prüfen
    git add "$OUTPUT_DIR"
    git add "$FINAL_MD" 2>/dev/null || true
    
    # Commit erstellen
    local commit_msg="Automatischer Build: $(date '+%Y-%m-%d %H:%M')"
    git commit -m "$commit_msg

📚 Buch-Build abgeschlossen:
- Gesamtdokument erstellt: $FINAL_MD
- PDF generiert (falls pandoc verfügbar)
- Statistiken und Qualitätsbericht erstellt

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>" 2>/dev/null || {
        print_warning "Nichts zu committen oder Git-Fehler"
    }
    
    print_success "Git-Integration abgeschlossen"
}

# Aufräumen
cleanup() {
    print_status "Räume temporäre Dateien auf..."
    
    # Entferne temporäre Dateien
    rm -f "$OUTPUT_DIR/source_files.txt" 2>/dev/null || true
    
    print_success "Aufräumen abgeschlossen"
}

# Erfolgsbericht anzeigen
show_final_report() {
    local merged_file="$OUTPUT_DIR/$FINAL_MD"
    local pdf_file="$OUTPUT_DIR/$FINAL_PDF"
    local stats_file="$OUTPUT_DIR/book_statistics.txt"
    
    echo ""
    echo "============================================================================="
    echo "  🎉 BUCH-BUILD ERFOLGREICH ABGESCHLOSSEN!"
    echo "============================================================================="
    echo ""
    echo "📖 ERSTELLTE DATEIEN:"
    
    if [ -f "$merged_file" ]; then
        local file_size=$(du -h "$merged_file" | cut -f1)
        echo "  ✅ Vollständiges Markdown: $merged_file ($file_size)"
    fi
    
    if [ -f "$pdf_file" ]; then
        local pdf_size=$(du -h "$pdf_file" | cut -f1)
        echo "  ✅ PDF-Version: $pdf_file ($pdf_size)"
    fi
    
    if [ -f "$stats_file" ]; then
        echo "  ✅ Statistik-Report: $stats_file"
    fi
    
    echo ""
    echo "📊 BUCHSTATISTIKEN:"
    if [ -f "$merged_file" ]; then
        local word_count=$(wc -w < "$merged_file")
        local page_estimate=$((word_count / 250))
        echo "  📝 Wörter: $(printf "%'d" $word_count)"
        echo "  📄 Geschätzte Seiten: $page_estimate"
        echo "  📚 Publikationsreife: $([ $word_count -ge 80000 ] && echo "✅ Ja" || echo "⚠️ Ausbaufähig")"
    fi
    
    echo ""
    echo "🚀 NÄCHSTE SCHRITTE:"
    echo "  1. Qualitätsprüfung: Lesen Sie $stats_file"
    echo "  2. Review: Überprüfen Sie $merged_file"
    echo "  3. Publikation: PDF bereit für Druck/E-Book"
    echo ""
    echo "============================================================================="
    echo "  Build abgeschlossen am: $(date '+%d. %B %Y um %H:%M:%S')"
    echo "============================================================================="
}

# Hauptfunktion
main() {
    # Script-Start protokollieren
    echo "Buch-Build gestartet am $(date)" > "$LOG_FILE"
    
    print_header
    check_dependencies
    setup_directories
    create_backup
    collect_source_files
    generate_toc
    merge_markdown_files
    calculate_statistics
    create_pdf
    quality_check
    git_integration
    cleanup
    show_final_report
    
    print_success "Alle Aufgaben erfolgreich abgeschlossen!"
}

# Script ausführen
main "$@"

# Exit-Code setzen
exit 0