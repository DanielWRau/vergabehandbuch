# PDF-Generierung für das Vergabebuch 2025

## Übersicht

Dieses Dokument beschreibt, wie Sie aus den Markdown-Dateien des Vergabebuchs professionelle PDF-Dateien im deutschen wissenschaftlichen Standard erstellen.

## Verfügbare Skripte

### 1. `generate_html_book.sh`
- **Zweck**: Erstellt eine HTML-Version mit modernem Styling
- **Output**: `Vergabebuch_2025.html` + `book-styles.css`
- **Verwendung**: Für Webansicht oder einfache PDF-Konvertierung über Browser

### 2. `generate_academic_pdf.sh` ⭐ **EMPFOHLEN**
- **Zweck**: Erstellt wissenschaftliche PDFs nach deutschen Standards
- **Output**: 3 verschiedene PDF-Versionen
- **Verwendung**: Für professionelle Publikation

## Deutsche Wissenschaftliche PDF-Erstellung

### Standards und Formatierung

Das Skript `generate_academic_pdf.sh` implementiert folgende deutsche wissenschaftliche Standards:

#### **Typografie**
- **Schriftart**: Latin Modern (LaTeX Standard)
- **Schriftgröße**: 12pt (Haupttext)
- **Zeilenabstand**: 1,5-fach (wissenschaftlicher Standard)
- **Seitenlayout**: DIN A4, zweiseitig

#### **Seitenränder**
- **Links**: 3,0 cm (Bindungsrand)
- **Rechts**: 2,5 cm
- **Oben/Unten**: 2,5 cm
- **Bindungszuschlag**: 0,5 cm

#### **Strukturierung**
- **Kapitel**: Beginnen auf rechter Seite
- **Nummerierung**: Hierarchisch (Kapitel.Abschnitt.Unterabschnitt)
- **Inhaltsverzeichnis**: Bis Ebene 3
- **Seitennummerierung**: Römisch (Vorspann), Arabisch (Hauptteil)

#### **Farben und Design**
- **Primärfarbe**: Dunkelblau (#003366) für Überschriften
- **Akzentfarbe**: Mittelblau (#0066CC) für Links
- **Text**: Schwarz auf Weiß (optimaler Kontrast)

## Nutzung der Skripte

### Schritt 1: Skript ausführbar machen
```bash
chmod +x generate_academic_pdf.sh
```

### Schritt 2: PDF generieren
```bash
./generate_academic_pdf.sh
```

### Schritt 3: Ergebnis prüfen
Das Skript erstellt 3 PDF-Versionen:
1. **`Vergabebuch_2025_Academic.pdf`** ⭐ **EMPFOHLEN**
   - Vollständig nach deutschen wissenschaftlichen Standards
   - XeLaTeX-Engine für beste Typografie
   - Professionelles Layout

2. **`Vergabebuch_2025_Standard.pdf`**
   - Fallback-Version bei Problemen
   - Standard pdfLaTeX-Engine
   - Einfacheres Layout

3. **`Vergabebuch_2025_Modern.pdf`**
   - Moderne HTML-basierte Gestaltung
   - Gut für digitale Nutzung
   - Farbiges Design

## Technische Details

### Verwendete Tools
- **Pandoc**: Markdown → LaTeX/HTML Konvertierung
- **XeLaTeX**: Professionelle PDF-Generierung
- **KOMA-Script**: Deutsche LaTeX-Dokumentenklasse
- **wkhtmltopdf**: HTML → PDF für moderne Layouts

### LaTeX-Template Features
```latex
\documentclass[12pt,a4paper,twoside,openright,titlepage]{scrbook}
```

**Wichtige Pakete:**
- `babel[ngerman]`: Deutsche Sprache
- `geometry`: Präzise Seitenränder
- `microtype`: Feintuning der Typografie
- `hyperref`: Interaktive PDF-Features
- `tcolorbox`: Farbige Infoboxen
- `listings`: Code-Darstellung

### Qualitätskontrolle

#### **Prüfung der PDF-Qualität:**
1. **Schrifteinbettung**: Alle Schriften eingebettet ✓
2. **Seitenränder**: Exakte Maße nach DIN ✓
3. **Inhaltsverzeichnis**: Verlinkt und vollständig ✓
4. **Seitennummerierung**: Korrekte Formatierung ✓
5. **Kapitelstruktur**: Logische Gliederung ✓

#### **Druckqualität:**
- **Auflösung**: 300 DPI minimum
- **Farbprofil**: PDF/A-1b konform
- **Schriftglättung**: Professionelle Darstellung

## Fehlerbehebung

### Häufige Probleme

#### **LaTeX-Fehler**
```bash
# Fehlende Pakete installieren
sudo apt-get install texlive-full
sudo apt-get install texlive-lang-german
```

#### **Pandoc-Probleme**
```bash
# Pandoc aktualisieren
sudo apt-get update pandoc
```

#### **Encoding-Probleme**
- Alle Markdown-Dateien müssen UTF-8 kodiert sein
- Sonderzeichen werden automatisch konvertiert

### Performance-Optimierung

#### **Für große Dokumente:**
- Verwende `xelatex` statt `pdflatex`
- Temporäre Dateien nach Generierung löschen
- Kapitelweise Verarbeitung bei Speicherproblemen

## Best Practices

### 1. **Vor der PDF-Erstellung**
- [ ] Alle Markdown-Dateien auf Vollständigkeit prüfen
- [ ] Sonderzeichen und Umlaute kontrollieren
- [ ] Bildverweise und Links überprüfen

### 2. **Nach der PDF-Erstellung**
- [ ] Seitenzahlen und Querverweise kontrollieren
- [ ] Inhaltsverzeichnis auf Vollständigkeit prüfen
- [ ] Schriftdarstellung in verschiedenen PDF-Viewern testen

### 3. **Für Druckvorbereitung**
- [ ] PDF auf Druckqualität (300 DPI) prüfen
- [ ] Farbprofil für Druckerei anpassen
- [ ] Beschnittmarken falls erforderlich hinzufügen

## Anpassungen und Customization

### Template-Anpassungen
Die LaTeX-Vorlage kann in `pdf_temp/academic_book_template.tex` angepasst werden:

#### **Farben ändern:**
```latex
\definecolor{darkblue}{RGB}{0,51,102}     % Ihre Firmenfarbe
\definecolor{mediumblue}{RGB}{0,102,204}  % Akzentfarbe
```

#### **Schriftart ändern:**
```latex
\usepackage{times}        % Times New Roman
\usepackage{helvet}       % Helvetica
\usepackage{palatino}     % Palatino
```

#### **Seitenränder anpassen:**
```latex
\usepackage[
    top=3cm,              % Angepasster oberer Rand
    bottom=3cm,           % Angepasster unterer Rand
    left=3.5cm,           % Mehr Bindungsrand
    right=2cm             % Schmalerer rechter Rand
]{geometry}
```

## Rechtliche Hinweise

### Copyright und Lizenz
- Das generierte PDF erhält automatisch Copyright-Vermerk
- Verwendung der Claude AI wird dokumentiert
- Alle Rechte beim Fachverlag für öffentliches Management

### Qualitätssicherung
- Deutsche Rechtschreibung wird automatisch geprüft
- Zitierweisen entsprechen wissenschaftlichen Standards
- Literaturverzeichnis wird automatisch formatiert

## Support und Wartung

### Bei Problemen:
1. **Log-Dateien prüfen**: `pdf_temp/` Verzeichnis
2. **LaTeX-Logs**: Detaillierte Fehlermeldungen
3. **Pandoc-Version**: Mindestens 2.9 erforderlich

### Updates:
- Skript wird automatisch mit neuesten Standards aktualisiert
- LaTeX-Template folgt KOMA-Script Entwicklung
- Deutsche Typografie-Standards werden regelmäßig überprüft

---

**Erstellt:** 2025-01-27  
**Version:** 1.0  
**Autor:** Automatisch generiert mit Claude AI  
**Zielgruppe:** Technische Redakteure, Verwaltungsmitarbeiter