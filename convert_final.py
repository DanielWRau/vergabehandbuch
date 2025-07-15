#!/usr/bin/env python3
"""
Final converter for the Vergabebuch to EPUB format
Handles encoding and line ending issues properly
"""

import subprocess
import os
import tempfile
from pathlib import Path

def create_clean_book():
    """Create a clean version of the book with proper encoding"""
    
    # Read the original book
    with open('buch-vollversion/VOLLSTAENDIGES_VERGABEBUCH_2025.md', 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Normalize line endings to Unix style
    content = content.replace('\r\n', '\n').replace('\r', '\n')
    
    # Create metadata header with Unix line endings
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
    
    # Write with UTF-8 encoding and Unix line endings
    output_file = 'Vergabebuch_2025_clean.md'
    with open(output_file, 'w', encoding='utf-8', newline='\n') as f:
        f.write(book_with_metadata)
    
    return output_file

def convert_to_epub():
    """Convert the book to EPUB using pandoc"""
    
    print("Creating clean book file...")
    input_file = create_clean_book()
    
    print("Converting to EPUB...")
    
    output_file = "Vergabebuch_2025_Professional.epub"
    
    # Simple pandoc command with minimal options
    cmd = [
        "pandoc",
        input_file,
        "-o", output_file,
        "--toc",
        "--toc-depth=3",
        "--standalone",
        "--number-sections",
        "--top-level-division=chapter",
        "--highlight-style=tango"
    ]
    
    try:
        result = subprocess.run(cmd, check=True, capture_output=True, text=True, encoding='utf-8')
        
        print(f"SUCCESS: Book converted to {output_file}")
        
        # Show file size
        if os.path.exists(output_file):
            file_size = os.path.getsize(output_file) / (1024 * 1024)
            print(f"File size: {file_size:.2f} MB")
        
        # Clean up temporary file
        if os.path.exists(input_file):
            os.remove(input_file)
        
        return True
        
    except subprocess.CalledProcessError as e:
        print(f"ERROR: Pandoc failed with exit code {e.returncode}")
        print(f"Error output: {e.stderr}")
        print(f"Command: {' '.join(cmd)}")
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
        print("3. Consider adding a custom cover image")
    else:
        print("Conversion failed. Please check the error messages.")

if __name__ == "__main__":
    main()