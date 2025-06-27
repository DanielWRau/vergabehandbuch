# Export-Tools für Vergabeprompts

## PDF-Export mit Pandoc

### Installation
```bash
# Ubuntu/Debian
sudo apt-get install pandoc texlive-latex-base texlive-fonts-recommended

# macOS
brew install pandoc basictex

# Windows
# Download von https://pandoc.org/installing.html
```

### Einzelne MD-Dateien zu PDF
```bash
# Einzelne Datei
pandoc 01_Bedarfsanalyse.md -o 01_Bedarfsanalyse.pdf

# Mit Layout-Optionen
pandoc 01_Bedarfsanalyse.md -o 01_Bedarfsanalyse.pdf \
  --pdf-engine=pdflatex \
  --variable geometry:margin=2cm \
  --variable fontsize=11pt
```

### Alle Dateien zusammen zu einem PDF
```bash
# Alle MD-Dateien kombinieren
pandoc README.md 01_*.md 02_*.md 03_*.md 04_*.md 05_*.md 06_*.md 07_*.md \
  -o Vergabeprompts_Komplett.pdf \
  --pdf-engine=pdflatex \
  --toc \
  --variable geometry:margin=2cm \
  --variable fontsize=11pt \
  --variable documentclass=article
```

## PNG-Export mit wkhtmltopdf

### Installation
```bash
# Ubuntu/Debian
sudo apt-get install wkhtmltopdf

# macOS
brew install wkhtmltopdf

# Windows
# Download von https://wkhtmltopdf.org/downloads.html
```

### MD zu HTML zu PNG
```bash
# 1. MD zu HTML
pandoc 01_Bedarfsanalyse.md -o temp.html --standalone

# 2. HTML zu PNG
wkhtmltoimage --width 1200 temp.html 01_Bedarfsanalyse.png

# 3. Cleanup
rm temp.html
```

### Automatisiertes Script
```bash
#!/bin/bash
# export_all.sh

for file in *.md; do
    if [[ "$file" != "README.md" ]]; then
        base=$(basename "$file" .md)
        
        # PDF Export
        pandoc "$file" -o "${base}.pdf" \
          --pdf-engine=pdflatex \
          --variable geometry:margin=2cm
        
        # PNG Export
        pandoc "$file" -o "temp_${base}.html" --standalone
        wkhtmltoimage --width 1200 "temp_${base}.html" "${base}.png"
        rm "temp_${base}.html"
        
        echo "Exported: ${base}.pdf and ${base}.png"
    fi
done
```

## HTML-Export für Web

### Einzelne Dateien
```bash
# Mit CSS-Styling
pandoc 01_Bedarfsanalyse.md -o 01_Bedarfsanalyse.html \
  --standalone \
  --css=styles.css \
  --metadata title="Bedarfsanalyse Prompts"
```

### CSS für besseres Styling
```css
/* styles.css */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    line-height: 1.6;
}

h1, h2, h3 {
    color: #2c3e50;
    border-bottom: 2px solid #3498db;
    padding-bottom: 5px;
}

pre {
    background-color: #f8f9fa;
    border: 1px solid #e9ecef;
    border-radius: 4px;
    padding: 15px;
    overflow-x: auto;
}

code {
    background-color: #f8f9fa;
    padding: 2px 4px;
    border-radius: 3px;
    font-family: 'Consolas', 'Monaco', monospace;
}

blockquote {
    border-left: 4px solid #3498db;
    margin-left: 0;
    padding-left: 20px;
    color: #7f8c8d;
}
```

## Automatisierung mit GitHub Actions

```yaml
# .github/workflows/export.yml
name: Export Documentation

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  export:
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Install Pandoc
      run: |
        sudo apt-get update
        sudo apt-get install -y pandoc texlive-latex-base texlive-fonts-recommended wkhtmltopdf
    
    - name: Export to PDF
      run: |
        pandoc README.md 0*.md -o Vergabeprompts.pdf \
          --pdf-engine=pdflatex \
          --toc \
          --variable geometry:margin=2cm
    
    - name: Export to HTML
      run: |
        pandoc README.md 0*.md -o index.html \
          --standalone \
          --toc \
          --css=styles.css
    
    - name: Upload artifacts
      uses: actions/upload-artifact@v3
      with:
        name: exported-docs
        path: |
          *.pdf
          *.html
```

## N8N Workflow Integration

### Webhook für automatischen Export
```json
{
  "nodes": [
    {
      "name": "GitHub Webhook",
      "type": "n8n-nodes-base.webhook",
      "parameters": {
        "httpMethod": "POST",
        "path": "vergabe-export"
      }
    },
    {
      "name": "Export PDFs",
      "type": "n8n-nodes-base.executeCommand",
      "parameters": {
        "command": "cd /path/to/repo && ./export_all.sh"
      }
    },
    {
      "name": "Upload to Cloud",
      "type": "n8n-nodes-base.googleDrive",
      "parameters": {
        "operation": "upload",
        "folderId": "your-folder-id"
      }
    }
  ]
}
```

## Confluence Integration

### Python Script für Confluence Upload
```python
#!/usr/bin/env python3
# confluence_upload.py

from atlassian import Confluence
import os
import markdown

confluence = Confluence(
    url='https://your-company.atlassian.net/wiki',
    username='your-email@company.com',
    password='your-api-token'
)

def upload_md_to_confluence(md_file, space_key, parent_page_id=None):
    with open(md_file, 'r', encoding='utf-8') as f:
        md_content = f.read()
    
    # Convert MD to HTML
    html_content = markdown.markdown(md_content, extensions=['codehilite', 'tables'])
    
    # Extract title from filename
    title = os.path.splitext(os.path.basename(md_file))[0].replace('_', ' ').title()
    
    # Create or update page
    try:
        confluence.create_page(
            space=space_key,
            title=title,
            body=html_content,
            parent_id=parent_page_id
        )
        print(f"Created page: {title}")
    except:
        # Page exists, update it
        page = confluence.get_page_by_title(space_key, title)
        confluence.update_page(
            page_id=page['id'],
            title=title,
            body=html_content
        )
        print(f"Updated page: {title}")

# Upload all MD files
for file in os.listdir('.'):
    if file.endswith('.md') and file != 'README.md':
        upload_md_to_confluence(file, 'VERGABE')  # Replace with your space key
```