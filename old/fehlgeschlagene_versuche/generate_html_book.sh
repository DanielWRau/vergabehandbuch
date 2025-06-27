#!/bin/bash

echo "📚 Generiere HTML-Buch aus Markdown-Dateien..."

# Konfiguration
INPUT_DIR="buch-vollversion"
OUTPUT_FILE="Vergabebuch_2025.html"
CSS_FILE="book-styles.css"

# Erstelle CSS-Datei falls nicht vorhanden
if [ ! -f "$CSS_FILE" ]; then
    echo "🎨 Erstelle CSS-Stylesheet..."
    cat > "$CSS_FILE" << 'CSS'
/* Vergabebuch 2025 - Professional Book Stylesheet */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap');

:root {
    --primary-color: #2563eb;
    --secondary-color: #64748b;
    --accent-color: #f59e0b;
    --text-primary: #1e293b;
    --text-secondary: #64748b;
    --background: #ffffff;
    --background-alt: #f8fafc;
    --border-color: #e2e8f0;
    --code-bg: #f1f5f9;
    --success-color: #10b981;
    --warning-color: #f59e0b;
    --error-color: #ef4444;
}

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
    line-height: 1.7;
    color: var(--text-primary);
    background: var(--background);
    font-size: 16px;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

/* Print-optimized layout */
@page {
    size: A4;
    margin: 2.5cm 2cm;
    @top-center {
        content: "Sprachmodelle in der öffentlichen Auftragsvergabe";
        font-size: 10pt;
        color: var(--text-secondary);
    }
    @bottom-center {
        content: counter(page);
        font-size: 10pt;
    }
}

.container {
    max-width: 210mm;
    margin: 0 auto;
    padding: 20px;
    background: white;
    box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

/* Typography Hierarchy */
h1 {
    font-size: 2.5rem;
    font-weight: 700;
    color: var(--primary-color);
    margin: 3rem 0 1.5rem 0;
    line-height: 1.2;
    page-break-after: avoid;
}

h2 {
    font-size: 2rem;
    font-weight: 600;
    color: var(--text-primary);
    margin: 2.5rem 0 1rem 0;
    line-height: 1.3;
    page-break-after: avoid;
    border-bottom: 3px solid var(--primary-color);
    padding-bottom: 0.5rem;
}

h3 {
    font-size: 1.5rem;
    font-weight: 600;
    color: var(--text-primary);
    margin: 2rem 0 0.8rem 0;
    page-break-after: avoid;
}

h4 {
    font-size: 1.25rem;
    font-weight: 500;
    color: var(--secondary-color);
    margin: 1.5rem 0 0.6rem 0;
    page-break-after: avoid;
}

h5 {
    font-size: 1.1rem;
    font-weight: 500;
    color: var(--text-primary);
    margin: 1.2rem 0 0.5rem 0;
}

h6 {
    font-size: 1rem;
    font-weight: 500;
    color: var(--secondary-color);
    margin: 1rem 0 0.4rem 0;
}

/* Paragraphs and Text */
p {
    margin: 0 0 1.2rem 0;
    text-align: justify;
    orphans: 2;
    widows: 2;
}

/* Lists */
ul, ol {
    margin: 1rem 0 1.5rem 2rem;
}

li {
    margin: 0.3rem 0;
    line-height: 1.6;
}

ul li {
    list-style-type: none;
    position: relative;
}

ul li::before {
    content: "•";
    color: var(--primary-color);
    font-weight: bold;
    position: absolute;
    left: -1.2rem;
}

ol li {
    padding-left: 0.5rem;
}

/* Code Blocks */
pre {
    background: var(--code-bg);
    border: 1px solid var(--border-color);
    border-radius: 6px;
    padding: 1.5rem;
    margin: 1.5rem 0;
    overflow-x: auto;
    font-family: 'JetBrains Mono', 'Consolas', monospace;
    font-size: 0.9rem;
    line-height: 1.5;
    page-break-inside: avoid;
}

code {
    font-family: 'JetBrains Mono', 'Consolas', monospace;
    background: var(--code-bg);
    padding: 0.2rem 0.4rem;
    border-radius: 3px;
    font-size: 0.9em;
}

pre code {
    background: none;
    padding: 0;
}

/* Tables */
table {
    width: 100%;
    border-collapse: collapse;
    margin: 1.5rem 0;
    font-size: 0.95rem;
    page-break-inside: avoid;
}

th, td {
    padding: 0.8rem 1rem;
    text-align: left;
    border-bottom: 1px solid var(--border-color);
}

th {
    background: var(--background-alt);
    font-weight: 600;
    color: var(--text-primary);
    border-bottom: 2px solid var(--primary-color);
}

tr:hover {
    background: var(--background-alt);
}

/* Blockquotes */
blockquote {
    border-left: 4px solid var(--primary-color);
    padding: 1rem 1.5rem;
    margin: 1.5rem 0;
    background: var(--background-alt);
    font-style: italic;
    border-radius: 0 6px 6px 0;
    page-break-inside: avoid;
}

blockquote p {
    margin-bottom: 0;
}

/* Horizontal Rules */
hr {
    border: none;
    height: 2px;
    background: linear-gradient(to right, var(--primary-color), transparent);
    margin: 3rem 0;
    page-break-after: avoid;
}

/* Special Elements */
.toc {
    background: var(--background-alt);
    border: 1px solid var(--border-color);
    border-radius: 8px;
    padding: 2rem;
    margin: 2rem 0;
    page-break-inside: avoid;
}

.toc h2 {
    margin-top: 0;
    color: var(--primary-color);
    border-bottom: 2px solid var(--primary-color);
}

.chapter-break {
    page-break-before: always;
    margin-top: 0;
}

.no-break {
    page-break-inside: avoid;
}

/* Badges and Labels */
.badge {
    display: inline-block;
    padding: 0.3rem 0.8rem;
    background: var(--primary-color);
    color: white;
    border-radius: 20px;
    font-size: 0.8rem;
    font-weight: 500;
    margin: 0.2rem;
}

.badge.success { background: var(--success-color); }
.badge.warning { background: var(--warning-color); color: black; }
.badge.error { background: var(--error-color); }

/* Callout Boxes */
.callout {
    border: 1px solid var(--border-color);
    border-radius: 8px;
    padding: 1.5rem;
    margin: 1.5rem 0;
    page-break-inside: avoid;
}

.callout.info {
    border-left: 4px solid var(--primary-color);
    background: linear-gradient(to right, rgba(37, 99, 235, 0.05), transparent);
}

.callout.warning {
    border-left: 4px solid var(--warning-color);
    background: linear-gradient(to right, rgba(245, 158, 11, 0.05), transparent);
}

.callout.success {
    border-left: 4px solid var(--success-color);
    background: linear-gradient(to right, rgba(16, 185, 129, 0.05), transparent);
}

/* Chapter Headers */
.chapter-header {
    text-align: center;
    padding: 3rem 0;
    border-bottom: 3px solid var(--primary-color);
    margin-bottom: 3rem;
    page-break-after: avoid;
}

.chapter-number {
    font-size: 1.2rem;
    color: var(--secondary-color);
    font-weight: 500;
    text-transform: uppercase;
    letter-spacing: 0.1em;
}

.chapter-title {
    font-size: 2.5rem;
    color: var(--primary-color);
    margin: 0.5rem 0 0 0;
    font-weight: 700;
}

/* Footer */
.book-footer {
    text-align: center;
    padding: 2rem 0;
    margin-top: 4rem;
    border-top: 1px solid var(--border-color);
    color: var(--text-secondary);
    font-size: 0.9rem;
}

/* Print Styles */
@media print {
    body {
        font-size: 12pt;
        line-height: 1.6;
    }
    
    .container {
        box-shadow: none;
        padding: 0;
        max-width: none;
    }
    
    h1 { font-size: 20pt; }
    h2 { font-size: 16pt; }
    h3 { font-size: 14pt; }
    h4 { font-size: 13pt; }
    h5 { font-size: 12pt; }
    h6 { font-size: 11pt; }
    
    pre, code {
        font-size: 10pt;
    }
    
    table {
        font-size: 10pt;
    }
    
    .chapter-break {
        page-break-before: always;
    }
    
    .no-print {
        display: none;
    }
}

/* Links */
a {
    color: var(--primary-color);
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

/* Image styling */
img {
    max-width: 100%;
    height: auto;
    border-radius: 6px;
    margin: 1rem 0;
    page-break-inside: avoid;
}

/* Responsive adjustments */
@media (max-width: 768px) {
    .container {
        padding: 1rem;
    }
    
    h1 { font-size: 2rem; }
    h2 { font-size: 1.5rem; }
    h3 { font-size: 1.25rem; }
}
CSS
    echo "✅ CSS-Stylesheet erstellt: $CSS_FILE"
fi

# HTML-Header generieren
echo "🏗️ Generiere HTML-Struktur..."
cat > "$OUTPUT_FILE" << 'HTML_HEADER'
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sprachmodelle in der öffentlichen Auftragsvergabe - Vollständiger Praxisleitfaden 2025</title>
    <meta name="description" content="Umfassendes Handbuch für KI-gestützte Beschaffung in der öffentlichen Verwaltung">
    <meta name="author" content="Fachverlag für öffentliches Management">
    <link rel="stylesheet" href="book-styles.css">
</head>
<body>
    <div class="container">
        <div class="chapter-header">
            <div class="chapter-number">Fachbuch 2025</div>
            <h1 class="chapter-title">Sprachmodelle in der öffentlichen Auftragsvergabe</h1>
            <p style="font-size: 1.2rem; color: var(--text-secondary); margin-top: 1rem;">
                Vollständiger Praxisleitfaden für die KI-gestützte Beschaffung
            </p>
            <div style="margin-top: 2rem; font-size: 1rem; color: var(--text-secondary);">
                <strong>Verlag:</strong> Fachverlag für öffentliches Management<br>
                <strong>Erscheinungsjahr:</strong> 2025<br>
                <strong>Zielgruppe:</strong> Vergabeverantwortliche, Amtsleiter, IT-Verantwortliche, Führungskräfte
            </div>
        </div>
HTML_HEADER

# Kapitel-Array (basierend auf BUILD_FINAL_BOOK.sh)
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

# Hilfsfunktion für Markdown zu HTML Konvertierung
convert_markdown() {
    local input="$1"
    # Einfache Markdown-zu-HTML-Konvertierung
    # Für komplexere Konvertierung könnte pandoc verwendet werden
    echo "$input" | sed -E '
        # Headers
        s/^### (.*)/\<h3\>\1\<\/h3\>/g
        s/^## (.*)/\<h2\>\1\<\/h2\>/g  
        s/^# (.*)/\<h1\>\1\<\/h1\>/g
        
        # Bold and Italic
        s/\*\*\*([^*]+)\*\*\*/<strong><em>\1<\/em><\/strong>/g
        s/\*\*([^*]+)\*\*/<strong>\1<\/strong>/g
        s/\*([^*]+)\*/<em>\1<\/em>/g
        
        # Code blocks (simplified)
        s/`([^`]+)`/<code>\1<\/code>/g
        
        # Line breaks for paragraphs
        /^$/d
    '
}

# Funktion zum Verarbeiten einer Markdown-Datei
process_chapter() {
    local chapter_file="$1"
    local chapter_num="$2"
    
    if [ -f "$INPUT_DIR/$chapter_file" ]; then
        echo "✅ Verarbeite: $chapter_file"
        
        # Kapitel-Trenner
        if [ $chapter_num -gt 1 ]; then
            echo '<div class="chapter-break"></div>' >> "$OUTPUT_FILE"
        fi
        
        # Kapitel-Header für HTML
        echo "<div class=\"no-break\">" >> "$OUTPUT_FILE"
        echo "<!-- ==================== KAPITEL: $chapter_file ==================== -->" >> "$OUTPUT_FILE"
        
        # Markdown-Inhalt lesen und konvertieren
        while IFS= read -r line; do
            # Einfache Markdown-zu-HTML-Konvertierung
            case "$line" in
                "# "*) echo "<h1>${line#\# }</h1>" ;;
                "## "*) echo "<h2>${line#\#\# }</h2>" ;;
                "### "*) echo "<h3>${line#\#\#\# }</h3>" ;;
                "#### "*) echo "<h4>${line#\#\#\#\# }</h4>" ;;
                "##### "*) echo "<h5>${line#\#\#\#\#\# }</h5>" ;;
                "###### "*) echo "<h6>${line#\#\#\#\#\#\# }</h6>" ;;
                "---"*) echo "<hr>" ;;
                "> "*) echo "<blockquote><p>${line#\> }</p></blockquote>" ;;
                "- "*|"* "*) echo "<li>${line#[\-\*] }</li>" ;;
                "") echo "</p><p>" ;;
                *) echo "$line" ;;
            esac
        done < "$INPUT_DIR/$chapter_file" | sed -E '
            # Weitere HTML-Formatierung
            s/\*\*([^*]+)\*\*/<strong>\1<\/strong>/g
            s/\*([^*]+)\*/<em>\1<\/em>/g
            s/`([^`]+)`/<code>\1<\/code>/g
            # Wrap non-tag lines in paragraphs
            /^[^<]/s/^/<p>/
            /^<p>/s/$/<\/p>/
            # Clean up empty paragraphs
            s/<p><\/p>//g
            s/<\/p><p>/<\/p>\n<p>/g
        ' >> "$OUTPUT_FILE"
        
        echo "</div>" >> "$OUTPUT_FILE"
        echo "<hr>" >> "$OUTPUT_FILE"
        
        return 0
    else
        echo "❌ Datei nicht gefunden: $INPUT_DIR/$chapter_file"
        return 1
    fi
}

# Alle Kapitel verarbeiten
chapter_count=0
for chapter in "${CHAPTERS[@]}"; do
    ((chapter_count++))
    process_chapter "$chapter" $chapter_count
done

# HTML-Footer
cat >> "$OUTPUT_FILE" << 'HTML_FOOTER'
        
        <div class="book-footer">
            <h2>Publikationsangaben</h2>
            <p><strong>Fertigstellung:</strong> <script>document.write(new Date().toLocaleDateString('de-DE'));</script></p>
            <p><strong>Build:</strong> HTML Complete Edition 1.0</p>
            <p><strong>Format:</strong> Optimiert für PDF-Konvertierung</p>
            <hr>
            <p>🤖 <strong>Generated with <a href="https://claude.ai/code">Claude Code</a></strong></p>
            <p><strong>Co-Authored-By:</strong> Claude &lt;noreply@anthropic.com&gt;</p>
        </div>
    </div>
</body>
</html>
HTML_FOOTER

# Statistiken
total_size=$(du -h "$OUTPUT_FILE" 2>/dev/null | cut -f1)
line_count=$(wc -l < "$OUTPUT_FILE" 2>/dev/null)

echo ""
echo "================================================"
echo "📚 HTML-BUCH ERFOLGREICH GENERIERT"
echo "================================================"
echo "📄 Output-Datei: $OUTPUT_FILE"
echo "🎨 CSS-Datei: $CSS_FILE"
echo "📊 Statistiken:"
echo "   • Kapitel verarbeitet: $chapter_count"
echo "   • HTML-Zeilen: $(printf "%'d" $line_count)"
echo "   • Dateigröße: $total_size"
echo ""
echo "🚀 Nächste Schritte:"
echo "   1. HTML in Browser öffnen: file://$(pwd)/$OUTPUT_FILE"
echo "   2. PDF generieren: Browser → Drucken → Als PDF speichern"
echo "   3. Oder mit wkhtmltopdf: wkhtmltopdf $OUTPUT_FILE Vergabebuch_2025.pdf"
echo "   4. Oder mit Puppeteer/Chrome headless für professionelle PDF"
echo ""
echo "✅ HTML-Export abgeschlossen!"
echo "================================================"