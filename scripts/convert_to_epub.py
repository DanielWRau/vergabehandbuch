#!/usr/bin/env python3
"""
Convert Markdown book to EPUB with professional non-fiction template
Similar to "For Dummies" or technical handbook style
"""

import pypandoc
import os
import yaml
from pathlib import Path
from datetime import datetime

def create_metadata_file():
    """Create YAML metadata file for the book"""
    metadata_content = """---
title: "Das Ende des Formulars: Wie Sprachmodelle die öffentliche Vergabe neu definieren"
subtitle: "Ein Praxisleitfaden für die Revolution im Beschaffungswesen"
author: "Dr. Daniel Rau"
publisher: "Eigenverlag"
date: "2025-01-15"
language: "de"
rights: "Copyright © 2025 Dr. Daniel Rau. All rights reserved."
description: "Ein umfassender Praxisleitfaden für die Nutzung von Sprachmodellen in der öffentlichen Beschaffung. Dieses Handbuch zeigt Vergabeverantwortlichen, wie sie KI-Tools sicher und effektiv für die Modernisierung ihrer Prozesse einsetzen können."
subject: "Öffentliche Beschaffung, Künstliche Intelligenz, Vergaberecht, Sprachmodelle, Digitalisierung"
identifier: "urn:uuid:vergabebuch2025"
---"""
    
    with open('metadata.yaml', 'w', encoding='utf-8') as f:
        f.write(metadata_content)
    
    return {
        'title': 'Das Ende des Formulars: Wie Sprachmodelle die öffentliche Vergabe neu definieren',
        'author': 'Dr. Daniel Rau',
        'date': '2025-01-15'
    }

def create_custom_css():
    """Create professional CSS styling for the EPUB"""
    css_content = """
/* Professional Non-Fiction Book Style */
/* Similar to technical handbooks and "For Dummies" series */

body {
    font-family: "Times New Roman", serif;
    line-height: 1.6;
    margin: 0;
    padding: 0;
    font-size: 11pt;
    color: #333;
}

/* Headings */
h1 {
    font-size: 1.8em;
    font-weight: bold;
    color: #2c3e50;
    margin-top: 2em;
    margin-bottom: 1em;
    border-bottom: 2px solid #3498db;
    padding-bottom: 0.5em;
    page-break-before: always;
}

h2 {
    font-size: 1.5em;
    font-weight: bold;
    color: #34495e;
    margin-top: 1.5em;
    margin-bottom: 0.8em;
    border-left: 4px solid #3498db;
    padding-left: 0.5em;
}

h3 {
    font-size: 1.3em;
    font-weight: bold;
    color: #2c3e50;
    margin-top: 1.2em;
    margin-bottom: 0.6em;
}

h4 {
    font-size: 1.1em;
    font-weight: bold;
    color: #34495e;
    margin-top: 1em;
    margin-bottom: 0.5em;
}

/* Paragraphs */
p {
    margin-bottom: 1em;
    text-align: justify;
    text-indent: 0;
}

/* Lists */
ul, ol {
    margin-bottom: 1em;
    padding-left: 1.5em;
}

li {
    margin-bottom: 0.3em;
}

/* Code blocks */
pre {
    background-color: #f8f9fa;
    border: 1px solid #dee2e6;
    border-radius: 4px;
    padding: 1em;
    margin: 1em 0;
    overflow-x: auto;
    font-family: "Courier New", monospace;
    font-size: 0.9em;
    line-height: 1.4;
}

code {
    background-color: #f8f9fa;
    padding: 0.2em 0.4em;
    border-radius: 3px;
    font-family: "Courier New", monospace;
    font-size: 0.9em;
    color: #e74c3c;
}

/* Blockquotes */
blockquote {
    margin: 1em 0;
    padding: 0.5em 1em;
    border-left: 4px solid #3498db;
    background-color: #f8f9fa;
    font-style: italic;
}

/* Tables */
table {
    border-collapse: collapse;
    width: 100%;
    margin: 1em 0;
    font-size: 0.9em;
}

th, td {
    border: 1px solid #dee2e6;
    padding: 0.5em;
    text-align: left;
}

th {
    background-color: #3498db;
    color: white;
    font-weight: bold;
}

/* Special elements */
.chapter-intro {
    font-style: italic;
    color: #7f8c8d;
    margin-bottom: 2em;
    border-top: 1px solid #bdc3c7;
    border-bottom: 1px solid #bdc3c7;
    padding: 1em 0;
}

.tip-box {
    background-color: #e8f5e8;
    border: 1px solid #27ae60;
    border-left: 4px solid #27ae60;
    padding: 1em;
    margin: 1em 0;
    border-radius: 4px;
}

.warning-box {
    background-color: #fdf2e8;
    border: 1px solid #f39c12;
    border-left: 4px solid #f39c12;
    padding: 1em;
    margin: 1em 0;
    border-radius: 4px;
}

.example-box {
    background-color: #e8f4f8;
    border: 1px solid #3498db;
    border-left: 4px solid #3498db;
    padding: 1em;
    margin: 1em 0;
    border-radius: 4px;
}

/* Page breaks */
.page-break {
    page-break-before: always;
}

/* Navigation */
.toc {
    margin-bottom: 2em;
}

.toc ul {
    list-style-type: none;
    padding-left: 0;
}

.toc li {
    margin-bottom: 0.5em;
}

.toc a {
    text-decoration: none;
    color: #3498db;
}

.toc a:hover {
    text-decoration: underline;
}

/* Professional spacing */
.chapter-end {
    margin-bottom: 3em;
    border-bottom: 1px solid #bdc3c7;
    padding-bottom: 1em;
}

/* Responsive design for different screen sizes */
@media (max-width: 600px) {
    body {
        font-size: 10pt;
        line-height: 1.5;
    }
    
    h1 {
        font-size: 1.6em;
    }
    
    h2 {
        font-size: 1.3em;
    }
    
    pre {
        font-size: 0.8em;
    }
}
"""
    
    with open('book_style.css', 'w', encoding='utf-8') as f:
        f.write(css_content)
    
    return 'book_style.css'

def convert_book_to_epub(input_file, output_file):
    """Convert the markdown book to EPUB format"""
    
    print("Creating metadata file...")
    metadata = create_metadata_file()
    
    print("Creating custom CSS styling...")
    css_file = create_custom_css()
    
    print("Converting to EPUB format...")
    
    # Pandoc extra arguments for professional book formatting
    extra_args = [
        '--metadata-file=metadata.yaml',
        f'--css={css_file}',
        '--toc',  # Table of contents
        '--toc-depth=3',  # 3 levels of TOC
        '--split-level=1',  # Treat H1 as chapter breaks (replaces --epub-chapter-level)
        '--standalone',
        '--embed-resources',  # Replaces --self-contained
        '--number-sections',  # Number sections
        '--top-level-division=chapter',  # Organize by chapters
        '--highlight-style=tango',  # Syntax highlighting for code
    ]
    
    # Remove empty arguments
    extra_args = [arg for arg in extra_args if arg]
    
    try:
        # Convert using pypandoc
        output = pypandoc.convert_file(
            input_file,
            'epub',
            outputfile=output_file,
            extra_args=extra_args
        )
        
        print(f"SUCCESS: Successfully converted to EPUB: {output_file}")
        print(f"Book title: {metadata['title']}")
        print(f"Author: {metadata['author']}")
        print(f"Date: {metadata['date']}")
        
        # Show file size
        file_size = os.path.getsize(output_file) / (1024 * 1024)  # Convert to MB
        print(f"File size: {file_size:.2f} MB")
        
    except Exception as e:
        print(f"ERROR: Error converting to EPUB: {e}")
        return False
    
    return True

def main():
    """Main function to convert the book"""
    input_file = "buch-vollversion/VOLLSTAENDIGES_VERGABEBUCH_2025.md"
    output_file = "Vergabebuch_2025_Professional.epub"
    
    if not os.path.exists(input_file):
        print(f"ERROR: Input file not found: {input_file}")
        return
    
    print("Converting Vergabebuch 2025 to professional EPUB format...")
    print("Template: Professional Non-Fiction Handbook Style")
    print("=" * 60)
    
    success = convert_book_to_epub(input_file, output_file)
    
    if success:
        print("=" * 60)
        print("SUCCESS: Conversion completed successfully!")
        print(f"Your book is ready: {output_file}")
        print("This EPUB is optimized for:")
        print("   - Kindle Direct Publishing (KDP)")
        print("   - Professional e-readers")
        print("   - Mobile devices")
        print("   - Desktop reading applications")
        print("\nNext steps:")
        print("   1. Test the EPUB in Kindle Previewer")
        print("   2. Upload to KDP or other platforms")
        print("   3. Consider adding a custom cover image")
    else:
        print("ERROR: Conversion failed. Please check the error messages above.")

if __name__ == "__main__":
    main()