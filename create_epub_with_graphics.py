#!/usr/bin/env python3
"""
Script to create EPUB with embedded SVG graphics from markdown file
"""

import subprocess
import sys
import os
import shutil
from pathlib import Path

def create_epub_with_graphics():
    """Create EPUB with embedded SVG graphics"""
    
    # Define paths
    base_dir = Path(__file__).parent
    markdown_file = base_dir / "Vergabebuch_2025_VOLLVERSION.md"
    output_epub = base_dir / "Vergabebuch_2025_VOLLVERSION_Graphics.epub"
    images_dir = base_dir / "images"
    
    # Check if files exist
    if not markdown_file.exists():
        print(f"ERROR: Markdown file not found: {markdown_file}")
        return False
    
    if not images_dir.exists():
        print(f"ERROR: Images directory not found: {images_dir}")
        return False
    
    # Create temporary directory for EPUB creation
    temp_dir = base_dir / "temp_epub"
    if temp_dir.exists():
        shutil.rmtree(temp_dir)
    temp_dir.mkdir()
    
    try:
        # Copy markdown file to temp directory
        temp_markdown = temp_dir / "book.md"
        shutil.copy2(markdown_file, temp_markdown)
        
        # Copy images directory to temp directory
        temp_images = temp_dir / "images"
        shutil.copytree(images_dir, temp_images)
        
        # Create simple metadata file
        metadata_content = """---
title: Das Ende des Formulars - Wie Sprachmodelle die öffentliche Vergabe neu definieren
author: Dr. Daniel Rau
date: 2025-01-17
language: de
---"""
        
        metadata_file = temp_dir / "metadata.yaml"
        with open(metadata_file, 'w', encoding='utf-8') as f:
            f.write(metadata_content)
        
        # Create EPUB with pandoc
        cmd = [
            'pandoc',
            str(temp_markdown),
            '--metadata-file', str(metadata_file),
            '--toc',
            '--toc-depth=2',
            '--epub-cover-image', str(images_dir / 'traditional_procurement_process.svg'),
            '-o', str(output_epub)
        ]
        
        print("Creating EPUB with embedded graphics...")
        print(f"Command: {' '.join(cmd)}")
        
        result = subprocess.run(cmd, capture_output=True, text=True, cwd=temp_dir)
        
        if result.returncode == 0:
            print(f"SUCCESS: EPUB created successfully: {output_epub}")
            return True
        else:
            print(f"ERROR: Pandoc failed with return code {result.returncode}")
            print(f"STDOUT: {result.stdout}")
            print(f"STDERR: {result.stderr}")
            return False
            
    except Exception as e:
        print(f"ERROR: Exception during EPUB creation: {e}")
        return False
    
    finally:
        # Clean up temp directory
        if temp_dir.exists():
            shutil.rmtree(temp_dir)

if __name__ == "__main__":
    success = create_epub_with_graphics()
    sys.exit(0 if success else 1)