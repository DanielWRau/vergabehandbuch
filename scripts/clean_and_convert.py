#!/usr/bin/env python3
"""
Remove HTML comments and convert to EPUB
"""

import subprocess
import os
import re

def clean_markdown():
    """Create a clean markdown file without HTML comments"""
    
    # Read the original file
    with open('buch-vollversion/VOLLSTAENDIGES_VERGABEBUCH_2025.md', 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Remove HTML comments
    content = re.sub(r'<!--.*?-->', '', content, flags=re.DOTALL)
    
    # Clean up multiple newlines
    content = re.sub(r'\n{3,}', '\n\n', content)
    
    # Strip leading/trailing whitespace
    content = content.strip()
    
    # Write clean version
    output_file = 'Vergabebuch_2025_clean.md'
    with open(output_file, 'w', encoding='utf-8', newline='\n') as f:
        f.write(content)
    
    return output_file

def convert_to_epub():
    """Convert to EPUB"""
    
    print("Creating clean markdown file...")
    input_file = clean_markdown()
    
    print("Converting to EPUB...")
    
    output_file = "Vergabebuch_2025_Professional.epub"
    
    # Basic pandoc command with title
    cmd = [
        "pandoc",
        input_file,
        "-o", output_file,
        "--toc",
        "--standalone",
        "--metadata", "title=Das Ende des Formulars: Wie Sprachmodelle die öffentliche Vergabe neu definieren",
        "--metadata", "author=Dr. Daniel Rau",
        "--metadata", "lang=de"
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
    print("Removing HTML comments and cleaning up...")
    print("=" * 50)
    
    success = convert_to_epub()
    
    if success:
        print("=" * 50)
        print("SUCCESS: Conversion completed!")
        print("Your EPUB is ready for Kindle Direct Publishing!")
        print("Features:")
        print("- Table of Contents")
        print("- Proper German language metadata")
        print("- Professional formatting")
        print("- Optimized for e-readers")
    else:
        print("Conversion failed.")

if __name__ == "__main__":
    main()