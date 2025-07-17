# Vergabebausteine Project

## Project Information
- **Repository**: DanielWRau/vergabebausteine  
- **User**: danielrau@gmx.de
- **Purpose**: Collection of vergabe prompts and comprehensive book on AI in public procurement

## Project Structure
- **Main Book**: Complete guide on using language models in public procurement
  - `Vergabebuch_2025_clean.md` - Final clean version of the book
  - `Vergabebuch_2025_FINAL.html` - HTML export for web viewing
  - `buch-vollversion/` - Full version chapters and content
  - `buch-kurzversion/` - Compact version chapters
- **Research**: Prompt research and system prompts in `prompt-research/`
- **Scripts**: Conversion and validation scripts in `scripts/`
- **Legacy**: Historical versions and drafts in `old/`

## Tools and Setup
- **GitHub CLI** for repository management (`gh` commands)
- **Pandoc** for document conversion (MD → HTML/PDF)
- **Python scripts** for EPUB generation and validation
- **Markdown** as primary format for all content

## Key Files
- `Vergabebuch_2025_clean.md` - Main book content (final version)
- `Vergabebuch_2025_FINAL.html` - Web-ready HTML export
- `metadata.yaml` - Book metadata for conversions
- `book_style.css` - Styling for HTML exports

## Commands
- `gh repo view` - View repository status
- `pandoc file.md -o file.html --standalone --toc` - Convert MD to HTML
- `python scripts/convert_to_epub.py` - Generate EPUB version
- `gh pr create` - Create pull requests