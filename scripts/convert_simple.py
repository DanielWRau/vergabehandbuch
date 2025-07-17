#!/usr/bin/env python3
"""
Simple converter for the Vergabebuch to EPUB format
"""

import subprocess
import os
from pathlib import Path

def create_book_with_metadata():
    """Create a version of the book with YAML metadata at the beginning"""
    
    # Read the original book
    with open('buch-vollversion/VOLLSTAENDIGES_VERGABEBUCH_2025.md', 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Create metadata header
    metadata_header = '''---
title: "Das Ende des Formulars: Wie Sprachmodelle die öffentliche Vergabe neu definieren"
subtitle: "Ein Praxisleitfaden für die Revolution im Beschaffungswesen"
author: "Dr. Daniel Rau"
publisher: "Eigenverlag"
date: "2025-01-15"
language: "de"
rights: "Copyright © 2025 Dr. Daniel Rau. All rights reserved."
description: "Ein umfassender Praxisleitfaden für die Nutzung von Sprachmodellen in der öffentlichen Beschaffung"
subject: "Öffentliche Beschaffung, Künstliche Intelligenz, Vergaberecht, Sprachmodelle, Digitalisierung"
---

'''
    
    # Combine metadata and content
    book_with_metadata = metadata_header + content
    
    # Write the new file
    with open('Vergabebuch_2025_with_metadata.md', 'w', encoding='utf-8') as f:
        f.write(book_with_metadata)
    
    return 'Vergabebuch_2025_with_metadata.md'

def create_css():
    """Create professional CSS for the EPUB"""
    css_content = '''
/* Professional Non-Fiction Book Style */
body {
    font-family: "Georgia", "Times New Roman", serif;
    line-height: 1.6;
    margin: 0 2em;
    padding: 0;
    font-size: 11pt;
    color: #333;
    text-align: justify;
}

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

p {
    margin-bottom: 1em;
    text-indent: 0;
}

ul, ol {
    margin-bottom: 1em;
    padding-left: 1.5em;
}

li {
    margin-bottom: 0.3em;
}

pre {
    background-color: #f8f9fa;
    border: 1px solid #dee2e6;
    border-radius: 4px;
    padding: 1em;
    margin: 1em 0;
    overflow-x: auto;
    font-family: "Consolas", "Monaco", monospace;
    font-size: 0.9em;
    line-height: 1.4;
}

code {
    background-color: #f8f9fa;
    padding: 0.2em 0.4em;
    border-radius: 3px;
    font-family: "Consolas", "Monaco", monospace;
    font-size: 0.9em;
    color: #d63384;
}

blockquote {
    margin: 1em 0;
    padding: 0.5em 1em;
    border-left: 4px solid #3498db;
    background-color: #f8f9fa;
    font-style: italic;
}

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
'''
    
    with open('book_style.css', 'w', encoding='utf-8') as f:
        f.write(css_content)
    
    return 'book_style.css'

def convert_to_epub():
    """Convert the book to EPUB using pandoc"""
    
    print("Creating book with metadata...")
    input_file = create_book_with_metadata()
    
    print("Creating CSS styling...")
    css_file = create_css()
    
    print("Converting to EPUB...")
    
    output_file = "Vergabebuch_2025_Professional.epub"
    
    # Pandoc command
    cmd = [
        "pandoc",
        input_file,
        "-o", output_file,
        "--toc",
        "--toc-depth=3",
        "--standalone",
        "--embed-resources",
        "--number-sections",
        "--top-level-division=chapter",
        "--highlight-style=tango",
        f"--css={css_file}",
        "--epub-title-page",
        "--epub-metadata=metadata.xml" if os.path.exists('metadata.xml') else None
    ]
    
    # Remove None values
    cmd = [arg for arg in cmd if arg is not None]
    
    try:
        result = subprocess.run(cmd, check=True, capture_output=True, text=True)
        
        print(f"SUCCESS: Book converted to {output_file}")
        
        # Show file size
        if os.path.exists(output_file):
            file_size = os.path.getsize(output_file) / (1024 * 1024)
            print(f"File size: {file_size:.2f} MB")
        
        # Clean up temporary files
        if os.path.exists(input_file):
            os.remove(input_file)
        if os.path.exists(css_file):
            os.remove(css_file)
        
        return True
        
    except subprocess.CalledProcessError as e:
        print(f"ERROR: Pandoc failed with exit code {e.returncode}")
        print(f"Error output: {e.stderr}")
        return False

def main():
    """Main function"""
    print("Converting Vergabebuch 2025 to EPUB format...")
    print("Using professional non-fiction book template")
    print("=" * 50)
    
    success = convert_to_epub()
    
    if success:
        print("=" * 50)
        print("SUCCESS: Conversion completed!")
        print("Your EPUB is ready for:")
        print("- Kindle Direct Publishing (KDP)")
        print("- Apple Books")
        print("- Google Play Books")
        print("- Other EPUB readers")
        print("\nNext steps:")
        print("1. Test with Kindle Previewer")
        print("2. Upload to your preferred platform")
    else:
        print("Conversion failed. Please check the error messages.")

if __name__ == "__main__":
    main()