# Angebotsbewertung

## Prompts für die Angebotsbewertung

### Prompt: Formale Prüfung
```
Führe eine systematische formale Prüfung der eingegangenen Angebote durch:

**EINGABE:** [Angebotsdokumente]

**PRÜFSCHEMA:**
1. **Vollständigkeit**
   - Angebotschreiben
   - Leistungsbeschreibung
   - Preisblatt
   - Nachweise

2. **Formanforderungen**
   - Unterschrift
   - Stempel
   - Format
   - Fristwahrung

3. **Eignungsnachweise**
   - Fachkunde
   - Leistungsfähigkeit
   - Zuverlässigkeit
   - Wirtschaftliche Leistungsfähigkeit

4. **Ausschlussgründe prüfen**
   - Zwingende Ausschlussgründe
   - Fakultätive Ausschlussgründe
   - Interessenskonflikte

**ERGEBNIS:** 
- Liste der formal zugelassenen Angebote
- Ausschlussliste mit Begründung
- Nachforderungsempfehlungen
```

### Prompt: Preisprüfung durchführen
```
Prüfe die Preisangaben systematisch:

**PREISANALYSE:**
1. **Rechnerische Prüfung**
   - Kalkulation prüfen
   - Summenbildung
   - Einheitspreise
   - Nebenkosten

2. **Vollständigkeit**
   - Alle Positionen bepreist
   - Umsatzsteuer
   - Nebenkosten
   - Optionale Leistungen

3. **Plausibilitätsprüfung**
   - Marktübliche Preise
   - Auffällig niedrige Preise
   - Auffällig hohe Preise
   - Vergleich zwischen Bietern

4. **Preisbewertung**
   - Bewertungsmethode anwenden
   - Punkte berechnen
   - Ranking erstellen

**FORMAT:** Tabelle mit Bieter, Preis, Bewertung, Rang
```

### Prompt: Qualitätsbewertung
```
Bewerte die Qualitätsaspekte der Angebote:

**EINGABE:** 
- Angebotsinhalte
- Bewertungsmatrix
- Bewertungskriterien

**BEWERTUNGSPROZESS:**
Für jedes Kriterium:

1. **Kriterium:** [Name]
   **Gewichtung:** [X%]
   **Bewertungsmaßstab:** [0-5 Punkte]
   
2. **Angebotsinhalte analysieren**
   - Vollständigkeit
   - Detaillierungsgrad
   - Qualität der Ausführung
   - Innovation

3. **Punktvergabe begründen**
   - Positive Aspekte
   - Negative Aspekte
   - Verbesserungsvorschläge
   - Risiken

4. **Gesamtbewertung**
   - Gewichtete Punkte
   - Rang
   - Stärken/Schwächen

**DOKUMENTATION:** Nachvollziehbare Bewertungsbögen pro Bieter
```

### Prompt: Vergabevorschlag erstellen
```
Erstelle einen fundierten Vergabevorschlag:

**ZUSAMMENFASSUNG:**
- Verfahrensablauf
- Anzahl Angebote
- Bewertungsergebnis

**BIETERRANKING:**
1. **Bieter 1**: [Name]
   - Preis: [EUR] ([X] Punkte)
   - Qualität: [Y] Punkte
   - Gesamt: [Z] Punkte

2. **Bieter 2**: [Name]
   - [analog]

**VERGABEEMPFEHLUNG:**
1. **Zuschlagsempfehlung**
   - Bieter
   - Begründung
   - Vertragsvolumen

2. **Risikobewertung**
   - Identifizierte Risiken
   - Mitigationsmaßnahmen
   - Empfehlungen

3. **Vertragsverhandlungen**
   - Verhandlungspunkte
   - Präzisierungen
   - Anpassungen

**RECHTLICHE PRÜFUNG:** Vergaberechtskonformität bestätigen
```