#!/usr/bin/env python3
"""
Fix encoding issues and convert to EPUB
"""

import subprocess
import os
import re

def create_clean_markdown():
    """Create a clean markdown file without any problematic characters"""
    
    # Read the original file
    try:
        with open('buch-vollversion/VOLLSTAENDIGES_VERGABEBUCH_2025.md', 'r', encoding='utf-8') as f:
            content = f.read()
    except UnicodeDecodeError:
        # Try with different encodings
        try:
            with open('buch-vollversion/VOLLSTAENDIGES_VERGABEBUCH_2025.md', 'r', encoding='utf-8-sig') as f:
                content = f.read()
        except UnicodeDecodeError:
            with open('buch-vollversion/VOLLSTAENDIGES_VERGABEBUCH_2025.md', 'r', encoding='latin-1') as f:
                content = f.read()
    
    # Remove BOM if present
    if content.startswith('\ufeff'):
        content = content[1:]
    
    # Clean up the content
    content = content.replace('\r\n', '\n').replace('\r', '\n')
    
    # Remove any control characters except newlines and tabs
    content = re.sub(r'[\x00-\x08\x0b\x0c\x0e-\x1f\x7f-\x9f]', '', content)
    
    # Write clean version
    output_file = 'Vergabebuch_2025_clean.md'
    with open(output_file, 'w', encoding='utf-8', newline='\n') as f:
        f.write(content)
    
    return output_file

def convert_to_epub():
    """Convert to EPUB"""
    
    print("Creating clean markdown file...")
    input_file = create_clean_markdown()
    
    print("Converting to EPUB...")
    
    output_file = "Vergabebuch_2025_Professional.epub"
    
    # Very basic pandoc command
    cmd = [
        "pandoc",
        input_file,
        "-o", output_file,
        "--toc",
        "--standalone"
    ]
    
    try:
        result = subprocess.run(cmd, check=True, capture_output=True, text=True, encoding='utf-8')
        
        print(f"SUCCESS: Book converted to {output_file}")
        
        # Show file size
        if os.path.exists(output_file):
            file_size = os.path.getsize(output_file) / (1024 * 1024)
            print(f"File size: {file_size:.2f} MB")
        
        return True
        
    except subprocess.CalledProcessError as e:
        print(f"ERROR: Pandoc failed with exit code {e.returncode}")
        print(f"Error output: {e.stderr}")
        return False

def main():
    """Main function"""
    print("Converting Vergabebuch 2025 to EPUB format...")
    print("=" * 50)
    
    success = convert_to_epub()
    
    if success:
        print("=" * 50)
        print("SUCCESS: Conversion completed!")
        print("Your EPUB is ready for Kindle Direct Publishing!")
    else:
        print("Conversion failed.")

if __name__ == "__main__":
    main()