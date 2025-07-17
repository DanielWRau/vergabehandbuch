#!/usr/bin/env python3
"""
Simple script to create EPUB with graphics by using only the graphics section
"""

import subprocess
import sys
import os
from pathlib import Path

def create_simple_epub():
    """Create simple EPUB with graphics"""
    
    # Create a simple markdown file with just the graphics section
    content = """---
title: "Vergabebuch 2025 - Mit professionellen Grafiken"
author: "Dr. Daniel Rau"
date: "2025-01-17"
language: "de"
---

# Das Ende des Formulars: Wie Sprachmodelle die öffentliche Vergabe neu definieren

## Zusammenarbeit zwischen Fachbereichen und Vergabestellen

### Traditioneller Beschaffungsprozess

Die traditionelle Zusammenarbeit zwischen Fachbereichen und Vergabestellen folgt einem sequentiellen Muster:

![Traditioneller Beschaffungsprozess](images/traditional_procurement_process.svg)

### KI-Transformation der Zusammenarbeit

Künstliche Intelligenz ermöglicht völlig neue Formen der Kollaboration:

![KI-Transformation](images/ki_transformation_collaboration.svg)

### Optimierter Workflow

Der KI-gestützte Workflow reduziert Durchlaufzeiten erheblich:

![KI-Workflow](images/ki_workflow_example.svg)

### Prozessoptimierung

Von sequentieller zu paralleler Bearbeitung:

![Parallel vs Sequential](images/parallel_vs_sequential_process.svg)

### Agile Arbeitsweisen

Neue Organisationsformen für die digitale Transformation:

![Agiles Squad](images/agile_vergabe_squad.svg)

### Implementierungsroadmap

Strukturierter Ansatz für die Umsetzung:

![Implementierungsroadmap](images/implementation_roadmap.svg)

## Kernvorteile der KI-Transformation

- 70-80% Zeitersparnis bei Routineprozessen
- 30-50% Reduzierung der Durchlaufzeiten  
- 90% weniger manuelle Abstimmungsschleifen
- 5-10% Kosteneinsparungen durch optimierte Prozesse

## Fazit

Die KI-Transformation der Zusammenarbeit zwischen Fachbereichen und Vergabestellen ist eine fundamentale Neugestaltung der öffentlichen Beschaffung. Durch intelligente Kollaboration, parallele Prozesse und agile Arbeitsweisen können Behörden effizienter, transparenter und innovativer agieren.

**Beginnen Sie heute. Die Zukunft der intelligenten Verwaltung wartet auf Sie.**
"""
    
    # Write the content to a file
    base_dir = Path(__file__).parent
    simple_md = base_dir / "simple_graphics_demo.md"
    
    with open(simple_md, 'w', encoding='utf-8') as f:
        f.write(content)
    
    # Create EPUB
    output_epub = base_dir / "Vergabebuch_2025_Graphics_Demo.epub"
    
    cmd = [
        'pandoc',
        str(simple_md),
        '--toc',
        '--toc-depth=2',
        '-o', str(output_epub)
    ]
    
    print("Creating simple EPUB with graphics...")
    
    result = subprocess.run(cmd, capture_output=True, text=True)
    
    if result.returncode == 0:
        print(f"SUCCESS: EPUB created: {output_epub}")
        
        # Also create HTML version
        output_html = base_dir / "Vergabebuch_2025_Graphics_Demo.html"
        cmd_html = [
            'pandoc',
            str(simple_md),
            '--standalone',
            '--toc',
            '--toc-depth=2',
            '-o', str(output_html)
        ]
        
        result_html = subprocess.run(cmd_html, capture_output=True, text=True)
        if result_html.returncode == 0:
            print(f"SUCCESS: HTML created: {output_html}")
        
        return True
    else:
        print(f"ERROR: {result.stderr}")
        return False

if __name__ == "__main__":
    success = create_simple_epub()
    sys.exit(0 if success else 1)