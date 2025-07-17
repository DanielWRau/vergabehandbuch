#!/usr/bin/env python3
"""
Final attempt to convert the book by fixing YAML delimiter issues
"""

import subprocess
import os
import re

def fix_yaml_delimiters():
    """Fix YAML delimiter issues that confuse pandoc"""
    
    # Read the original file
    with open('buch-vollversion/VOLLSTAENDIGES_VERGABEBUCH_2025.md', 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Remove HTML comments
    content = re.sub(r'<!--.*?-->', '', content, flags=re.DOTALL)
    
    # Replace standalone --- lines with a different separator
    # Only replace lines that are exactly --- (not part of other content)
    content = re.sub(r'^---$', '***', content, flags=re.MULTILINE)
    
    # Clean up multiple newlines
    content = re.sub(r'\n{3,}', '\n\n', content)
    
    # Strip leading/trailing whitespace
    content = content.strip()
    
    # Write clean version
    output_file = 'Vergabebuch_2025_fixed.md'
    with open(output_file, 'w', encoding='utf-8', newline='\n') as f:
        f.write(content)
    
    return output_file

def convert_to_epub():
    """Convert to EPUB"""
    
    print("Fixing YAML delimiter issues...")
    input_file = fix_yaml_delimiters()
    
    print("Converting to EPUB...")
    
    output_file = "Vergabebuch_2025_Professional.epub"
    
    # Basic pandoc command with metadata
    cmd = [
        "pandoc",
        input_file,
        "-o", output_file,
        "--toc",
        "--toc-depth=3",
        "--standalone",
        "--number-sections",
        "--metadata", "title=Das Ende des Formulars: Wie Sprachmodelle die öffentliche Vergabe neu definieren",
        "--metadata", "author=Dr. Daniel Rau",
        "--metadata", "lang=de",
        "--metadata", "date=2025-01-15",
        "--metadata", "publisher=Eigenverlag",
        "--metadata", "rights=Copyright © 2025 Dr. Daniel Rau",
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
        
        # Show word count
        with open(input_file, 'r', encoding='utf-8') as f:
            word_count = len(f.read().split())
            print(f"Word count: {word_count:,} words")
        
        return True
        
    except subprocess.CalledProcessError as e:
        print(f"ERROR: Pandoc failed with exit code {e.returncode}")
        print(f"Error output: {e.stderr}")
        return False

def main():
    """Main function"""
    print("Converting Vergabebuch 2025 to EPUB format...")
    print("Professional Non-Fiction Template")
    print("=" * 50)
    
    success = convert_to_epub()
    
    if success:
        print("=" * 50)
        print("SUCCESS: Conversion completed!")
        print("Your EPUB is ready for:")
        print("- Kindle Direct Publishing (KDP)")
        print("- Apple Books")
        print("- Google Play Books")
        print("- Kobo")
        print("- Other EPUB-compatible platforms")
        print("\nFeatures included:")
        print("- Table of Contents with 3 levels")
        print("- Chapter numbering")
        print("- German language metadata")
        print("- Professional formatting")
        print("- Syntax highlighting for code blocks")
        print("- Optimized for e-readers")
        print("\nNext steps:")
        print("1. Test the EPUB in Kindle Previewer")
        print("2. Upload to KDP or other platforms")
        print("3. Consider creating a cover image")
    else:
        print("Conversion failed.")

if __name__ == "__main__":
    main()