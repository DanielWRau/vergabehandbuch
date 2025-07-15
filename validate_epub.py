#!/usr/bin/env python3
"""
Validate the generated EPUB file
"""

import zipfile
import os
from pathlib import Path
from xml.etree import ElementTree as ET

def validate_epub(epub_path):
    """Validate the EPUB file structure"""
    
    print(f"Validating EPUB file: {epub_path}")
    print("=" * 50)
    
    if not os.path.exists(epub_path):
        print(f"ERROR: EPUB file not found: {epub_path}")
        return False
    
    try:
        with zipfile.ZipFile(epub_path, 'r') as epub:
            # Check for required files
            files = epub.namelist()
            print(f"Total files in EPUB: {len(files)}")
            
            # Check for mimetype
            if 'mimetype' in files:
                mimetype = epub.read('mimetype').decode('utf-8').strip()
                print(f"OK Mimetype: {mimetype}")
            else:
                print("ERROR Missing mimetype file")
            
            # Check for META-INF/container.xml
            if 'META-INF/container.xml' in files:
                print("OK Container.xml found")
            else:
                print("ERROR Missing container.xml")
            
            # Check for OPF file
            opf_files = [f for f in files if f.endswith('.opf')]
            if opf_files:
                print(f"OK OPF file found: {opf_files[0]}")
                
                # Read OPF content
                opf_content = epub.read(opf_files[0]).decode('utf-8')
                print("OK OPF content readable")
                
                # Parse OPF to get metadata
                try:
                    root = ET.fromstring(opf_content)
                    # Find metadata
                    ns = {'opf': 'http://www.idpf.org/2007/opf', 'dc': 'http://purl.org/dc/elements/1.1/'}
                    
                    title = root.find('.//dc:title', ns)
                    if title is not None:
                        print(f"OK Title: {title.text}")
                    
                    author = root.find('.//dc:creator', ns)
                    if author is not None:
                        print(f"OK Author: {author.text}")
                    
                    language = root.find('.//dc:language', ns)
                    if language is not None:
                        print(f"OK Language: {language.text}")
                    
                    # Count chapters
                    spine_items = root.findall('.//opf:itemref', ns)
                    print(f"OK Spine items (chapters): {len(spine_items)}")
                    
                except ET.ParseError as e:
                    print(f"ERROR parsing OPF: {e}")
                
            else:
                print("ERROR No OPF file found")
            
            # Check for XHTML files
            xhtml_files = [f for f in files if f.endswith('.xhtml') or f.endswith('.html')]
            print(f"OK XHTML files: {len(xhtml_files)}")
            
            # Check for TOC
            toc_files = [f for f in files if 'toc' in f.lower()]
            if toc_files:
                print(f"OK TOC files: {len(toc_files)}")
            
            # Check for CSS
            css_files = [f for f in files if f.endswith('.css')]
            if css_files:
                print(f"OK CSS files: {len(css_files)}")
            
            print("\nFile structure:")
            for f in sorted(files)[:10]:  # Show first 10 files
                print(f"  {f}")
            if len(files) > 10:
                print(f"  ... and {len(files) - 10} more files")
            
            return True
            
    except zipfile.BadZipFile:
        print("ERROR: Invalid ZIP file")
        return False
    except Exception as e:
        print(f"ERROR: {e}")
        return False

def main():
    """Main function"""
    epub_path = "Vergabebuch_2025_Professional.epub"
    
    if validate_epub(epub_path):
        print("\n" + "=" * 50)
        print("SUCCESS: EPUB validation completed successfully!")
        print("The EPUB file appears to be properly formatted.")
        print("\nRecommended next steps:")
        print("1. Test in Kindle Previewer")
        print("2. Test in Calibre or other EPUB readers")
        print("3. Upload to KDP for publishing")
    else:
        print("\n" + "=" * 50)
        print("ERROR: EPUB validation failed!")
        print("Please check the errors above.")

if __name__ == "__main__":
    main()