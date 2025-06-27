# Kapitel 3-5: Anwendung im Vergabeprozess

**Kompakte Version für das Buchprojekt "Sprachmodelle in der öffentlichen Auftragsvergabe"**

*Erstellt von Agent 8 (Content-Agent) am 25. Juni 2025*

---

## Kapitel 3: Bedarfsermittlung und Marktanalyse

### 3.1 Strukturierte Bedarfsanalyse

Die systematische Bedarfsermittlung bildet das Fundament jeden Vergabeverfahrens. Sprachmodelle können hier durch strukturierte Analyse und automatisierte Dokumentation erhebliche Effizienzgewinne ermöglichen.

#### Traditioneller vs. KI-gestützter Ansatz

**Traditioneller Prozess:**
- Manuelle Bedarfsidentifikation durch Fachbereiche
- Zeitaufwändige Abstimmungsprozesse
- Inkonsistente Dokumentation
- Subjektive Bewertung von Alternativen

**KI-Unterstützung ermöglicht:**
- Predictive Analytics für Bedarfsprognosen
- Strukturierte Fragenkataloge
- Automatisierte Dokumentation
- Datenbasierte Alternativenbewertung

#### Praktische Prompts für die Bedarfsanalyse

**Prompt 1: Strukturierte Bedarfsermittlung**
```
Du bist ein erfahrener Vergabeexperte. Hilf mir bei der strukturierten Bedarfsanalyse für ein öffentliches Beschaffungsvorhaben.

Beschaffungsbedarf: [EINGABE]

Erstelle eine umfassende Bedarfsanalyse mit folgender Struktur:
1. Beschreibung des Ist-Zustands
2. Definition des Soll-Zustands
3. Identifizierung der Bedarfslücken
4. Priorisierung der Anforderungen
5. Alternativen-Bewertung

Berücksichtige dabei:
- Wirtschaftlichkeitsgrundsatz (§ 7 HGrG)
- Technische Standards und Normen
- Rechtliche Vorgaben (DSGVO, IT-Sicherheit)
- Nachhaltigkeitskriterien (§ 67 VgV)
```

**Prompt 2: Fachbereichs-Fragebogen generieren**
```
Erstelle eine strukturierte Liste von Fragen an den Fachbereich zur Bedarfsklärung:

ZIEL: Alle relevanten Informationen für eine präzise Leistungsbeschreibung sammeln

STRUKTUR:
1. Grundsätzliche Anforderungen
2. Technische Spezifikationen
3. Funktionale Anforderungen
4. Schnittstellen und Integration
5. Mengen und Zeitrahmen
6. Qualitäts- und Sicherheitsanforderungen
7. Budget und Wirtschaftlichkeit

Formuliere konkrete, verständliche Fragen, die auch Nicht-Vergabeexperten beantworten können.
```

#### Rechtliche Hinweise

- **Bedarfsdeckungsgrundsatz (§ 7 HGrG)**: Beschaffung nur bei nachgewiesenem Bedarf
- **Wirtschaftlichkeitsgrundsatz**: Kosten-Nutzen-Analyse erforderlich
- **Haushaltsgrundsätze**: Sparsamkeit und Wirtschaftlichkeit beachten

### 3.2 Marktrecherche automatisieren

Die KI-gestützte Marktanalyse ermöglicht eine systematische und objektive Bewertung des Beschaffungsmarktes unter Berücksichtigung vergaberechtlicher Anforderungen.

#### Systematische Marktanalyse mit KI

**Prompt 3: Umfassende Marktanalyse**
```
Führe eine strukturierte Marktanalyse für folgenden Beschaffungsbedarf durch:

[BESCHAFFUNGSGEGENSTAND]

Analysiere:
1. Marktstruktur
   - Anzahl potentieller Anbieter
   - Marktkonzentration
   - Regionale Verfügbarkeit

2. Produktvielfalt
   - Standardlösungen vs. Individuallösungen
   - Technologievarianten
   - Qualitätsstufen

3. Preisniveau
   - Preisspannen
   - Kostentreiber
   - Markttrends

4. Vergaberechtliche Einschätzung
   - Schwellenwerte (aktuell: €221.000/€143.000/€5.538.000)
   - Geeignete Verfahrensarten
   - Besondere Anforderungen

Liefere eine Empfehlung für das weitere Vorgehen.
```

#### Praktische Tipps

- **Datenquellen nutzen**: Vergabeplattformen, Branchenverzeichnisse, öffentliche Ausschreibungen
- **CPV-Codes systematisch verwenden**: Für bessere Vergleichbarkeit
- **Regionale Märkte berücksichtigen**: Besonders bei Dienstleistungen wichtig

### 3.3 Risikoanalyse

Die frühzeitige Identifikation von Beschaffungsrisiken ist essentiell für erfolgreiche Vergabeverfahren.

#### KI-unterstützte Risikobewertung

- **Anbieterrisiken**: Automatisierte Bewertung von Bieterhistorien
- **Technologierisiken**: Obsoleszenz-Prognosen
- **Marktrisiken**: Preisvolatilität und Verfügbarkeit
- **Verfahrensrisiken**: Compliance-Checks

---

## Kapitel 4: Ausschreibungserstellung

### 4.1 Leistungsbeschreibung

Die funktionale Leistungsbeschreibung ist Kernstück jeder Ausschreibung. KI kann dabei helfen, präzise, diskriminierungsfreie und vergaberechts-konforme Beschreibungen zu erstellen.

#### Funktionale vs. technische Spezifikation

**Rechtlicher Grundsatz (§ 7a VgV):**
- Funktionale Beschreibung bevorzugt
- Technologieneutralität anstreben
- Diskriminierungsverbot beachten
- Nachvollziehbare Bewertungskriterien

**Prompt 4: Funktionale Leistungsbeschreibung**
```
Erstelle eine funktionale Leistungsbeschreibung für folgendes Vorhaben:

[BESCHAFFUNGSGEGENSTAND]

STRUKTUR:
1. Ausgangslage und Zielsetzung
   - Ist-Situation
   - Soll-Zustand
   - Projektziele

2. Funktionale Anforderungen
   - Kernfunktionen (MUSS-Kriterien)
   - Erweiterte Funktionen (SOLL-Kriterien)
   - Performance-Anforderungen

3. Nicht-funktionale Anforderungen
   - Qualitätsanforderungen
   - Sicherheitsanforderungen (IT-Grundschutz)
   - Usability-Anforderungen

4. Schnittstellen und Integration
   - Systemlandschaft
   - Datenformate (offene Standards bevorzugen)
   - Protokolle

5. Rechtliche und normative Vorgaben
   - DSGVO-Compliance
   - Standards und Normen
   - Compliance-Vorgaben

FORMULIERUNG: Ergebnisorientiert, technologieneutral, prüfbar
```

#### Qualitätskriterien definieren

**Prompt 5: Messbare Qualitätskriterien**
```
Definiere umfassende Qualitätskriterien für:

[LEISTUNGSGEGENSTAND]

QUALITÄTSDIMENSIONEN:
1. Funktionale Qualität
   - Vollständigkeit (100% der Anforderungen erfüllt)
   - Korrektheit (Fehlerrate < 0,1%)
   - Zuverlässigkeit (Verfügbarkeit > 99,5%)

2. Technische Qualität
   - Performance (Antwortzeiten < 2 Sek.)
   - Skalierbarkeit (bis 1000 Nutzer)
   - Wartbarkeit (Modularer Aufbau)

3. Benutzerqualität
   - Usability (ISO 9241 konform)
   - Accessibility (BITV 2.0 konform)
   - Mehrsprachigkeit (DE/EN)

4. Betriebsqualität
   - Verfügbarkeit (24/7 Betrieb)
   - Monitoring (Real-time Dashboard)
   - Support (Reaktionszeit < 4h)

FORMAT: Pro Kriterium: Definition, Messverfahren, Zielwert, Mindestanforderung
```

### 4.2 Vergabeunterlagen

Vollständige und rechtssichere Vergabeunterlagen sind Voraussetzung für einen erfolgreichen Vergabeprozess.

#### Essenzielle Dokumente

- **Bekanntmachung**: EU-weite Veröffentlichung erforderlich
- **Vergabeunterlagen**: Vollständige Leistungsbeschreibung
- **Bewertungsmatrix**: Transparente Zuschlagskriterien
- **Vertragsbedingungen**: Rechtssichere Vertragsgestaltung

**Prompt 6: EU-Bekanntmachung erstellen**
```
Erstelle eine EU-Bekanntmachung für folgendes Vergabeverfahren:

EINGABEN:
- Auftraggeber: [NAME]
- Beschaffungsgegenstand: [LEISTUNG]
- Geschätzter Auftragswert: [WERT]
- Verfahrensart: [VERFAHREN]

STRUKTUR:
1. Auftraggeber-Informationen
   - Vollständige Anschrift
   - Kontaktdaten
   - Vergabestelle

2. Auftragsbeschreibung
   - CPV-Code
   - Kurzbeschreibung
   - Leistungsort
   - Vertragslaufzeit

3. Verfahrensinformationen
   - Verfahrensart (Offen/Nicht-offen/Verhandlung)
   - Zuschlagskriterien
   - Fristen (Mindestens 35 Tage bei offenem Verfahren)

4. Teilnahmebedingungen
   - Eignungskriterien
   - Nachweise
   - Ausschlussgründe (§ 123-125 GWB)

FORMULIERUNG: Präzise, vollständig, rechtssicher
```

### 4.3 Bewertungsmatrizen

Transparente und objektive Bewertungskriterien sind vergaberechtlich zwingend erforderlich.

#### Rechtliche Anforderungen

- **Bekanntgabe vor Angebotsabgabe**: Alle Kriterien müssen vorab festgelegt sein
- **Gewichtung transparent**: Prozentuale Verteilung angeben
- **Messbarkeit**: Objektive Bewertungsmaßstäbe definieren
- **Diskriminierungsfreiheit**: Keine versteckten Präferenzen

**Prompt 7: Bewertungsmatrix entwickeln**
```
Entwickle eine umfassende Bewertungsmatrix für:

[BESCHAFFUNGSVORHABEN]

BEWERTUNGSSTRUKTUR:
1. Preisbewertung (60%)
   - Bewertungsmethode: Richtwertmethode
   - Formel: (günstigstes Angebot / zu bewertendes Angebot) × 100
   - Maximalpunktzahl: 60 Punkte

2. Qualitätsbewertung (40%)
   - Technische Qualität (20%)
   - Methodische Qualität (10%)
   - Umweltkriterien (5%)
   - Soziale Nachhaltigkeit (5%)

PRO KRITERIUM ANGEBEN:
- Gewichtung
- Bewertungsmaßstab (0-5 Punkte)
- Beispiele für Punktvergabe
- Mindestanforderungen

RECHTLICHE PRÜFUNG: Vergaberechtskonformität sicherstellen
```

---

## Kapitel 5: Angebotsbewertung und Zuschlag

### 5.1 Formale Prüfung

Die systematische Prüfung der Angebote auf formale Anforderungen ist der erste Schritt der Angebotswertung.

#### Automatisierbare Prüfschritte

- **Vollständigkeitsprüfung**: Alle geforderten Dokumente vorhanden
- **Fristprüfung**: Rechtzeitige Angebotsabgabe
- **Formatprüfung**: Entsprechung der Vorgaben
- **Eignungsprüfung**: Qualifikationsnachweise vollständig

**Prompt 8: Systematische Formalprüfung**
```
Führe eine systematische formale Prüfung der eingegangenen Angebote durch:

EINGABE: [Angebotsdokumente]

PRÜFSCHEMA:
1. Vollständigkeit
   - Angebotschreiben
   - Leistungsbeschreibung
   - Preisblatt
   - Eignungsnachweise

2. Formanforderungen
   - Unterschrift
   - Stempel
   - Format (PDF, max. 50 MB)
   - Fristwahrung

3. Eignungsnachweise
   - Fachkunde (3 vergleichbare Referenzen)
   - Leistungsfähigkeit (Personal, Ausstattung)
   - Zuverlässigkeit (Führungszeugnis)
   - Wirtschaftliche Leistungsfähigkeit (Jahresabschluss)

4. Ausschlussgründe prüfen
   - Zwingende Ausschlussgründe (§ 123 GWB)
   - Fakultätive Ausschlussgründe (§ 124 GWB)
   - Interessenskonflikte

ERGEBNIS: 
- Liste der formal zugelassenen Angebote
- Ausschlussliste mit Begründung
- Nachforderungsempfehlungen
```

### 5.2 Preisanalyse

Die systematische Preisprüfung umfasst rechnerische Korrektheit und Plausibilitätsprüfung.

#### KI-unterstützte Preisbewertung

**Prompt 9: Umfassende Preisprüfung**
```
Prüfe die Preisangaben systematisch:

PREISANALYSE:
1. Rechnerische Prüfung
   - Kalkulation prüfen
   - Summenbildung
   - Einheitspreise
   - Nebenkosten

2. Vollständigkeit
   - Alle Positionen bepreist
   - Umsatzsteuer (19%)
   - Nebenkosten
   - Optionale Leistungen

3. Plausibilitätsprüfung
   - Marktübliche Preise
   - Auffällig niedrige Preise (< 80% Durchschnitt)
   - Auffällig hohe Preise (> 120% Durchschnitt)
   - Vergleich zwischen Bietern

4. Preisbewertung
   - Richtwertmethode anwenden
   - Punkte berechnen
   - Ranking erstellen

FORMAT: Tabelle mit Bieter, Preis, Bewertung, Rang
```

### 5.3 Qualitätsbewertung

Die Bewertung qualitativer Aspekte erfordert weiterhin menschliche Expertise, kann aber durch KI strukturiert und dokumentiert werden.

#### Strukturierte Qualitätsbewertung

**Prompt 10: Qualitätsbewertung dokumentieren**
```
Bewerte die Qualitätsaspekte der Angebote:

EINGABE: 
- Angebotsinhalte
- Bewertungsmatrix
- Bewertungskriterien

BEWERTUNGSPROZESS:
Für jedes Kriterium:

1. Kriterium: [Name]
   Gewichtung: [X%]
   Bewertungsmaßstab: [0-5 Punkte]
   
2. Angebotsinhalte analysieren
   - Vollständigkeit
   - Detaillierungsgrad
   - Qualität der Ausführung
   - Innovation

3. Punktvergabe begründen
   - Positive Aspekte
   - Negative Aspekte
   - Verbesserungsvorschläge
   - Risiken

4. Gesamtbewertung
   - Gewichtete Punkte
   - Rang
   - Stärken/Schwächen

DOKUMENTATION: Nachvollziehbare Bewertungsbögen pro Bieter
```

### 5.4 Vergabeentscheidung

Die finale Zuschlagsentscheidung muss nachvollziehbar dokumentiert und rechtlich geprüft werden.

#### Vergabevorschlag erstellen

**Prompt 11: Fundierter Vergabevorschlag**
```
Erstelle einen fundierten Vergabevorschlag:

ZUSAMMENFASSUNG:
- Verfahrensablauf
- Anzahl Angebote
- Bewertungsergebnis

BIETERRANKING:
1. Bieter 1: [Name]
   - Preis: [EUR] ([X] Punkte)
   - Qualität: [Y] Punkte
   - Gesamt: [Z] Punkte

VERGABEEMPFEHLUNG:
1. Zuschlagsempfehlung
   - Bieter
   - Begründung (wirtschaftlichstes Angebot)
   - Vertragsvolumen

2. Risikobewertung
   - Identifizierte Risiken
   - Mitigationsmaßnahmen
   - Empfehlungen

3. Vertragsverhandlungen
   - Verhandlungspunkte
   - Präzisierungen
   - Anpassungen

RECHTLICHE PRÜFUNG: Vergaberechtskonformität bestätigen
```

---

## Rechtliche Compliance und Best Practices

### KI-spezifische Anforderungen

#### EU AI Act Compliance (seit 1. August 2024)

- **Risikoklassifizierung**: KI-Systeme in Vergabe als "Limited Risk"
- **Transparenzpflichten**: Kennzeichnung KI-generierter Inhalte
- **Menschliche Aufsicht**: Finale Entscheidungen durch Menschen
- **Dokumentationspflichten**: Algorithmus-Beschreibung erforderlich

#### Vergaberechtliche Grundprinzipien

**Unverändert gültig:**
- **Transparenz**: Nachvollziehbarkeit aller Entscheidungen
- **Nichtdiskriminierung**: Gleichbehandlung aller Bieter
- **Verhältnismäßigkeit**: Angemessenheit der Anforderungen
- **Wettbewerb**: Förderung des Bieterwettbewerbs

**KI-spezifische Ergänzungen:**
- **Erklärbarkeit**: KI-Entscheidungen müssen nachvollziehbar sein
- **Bias-Vermeidung**: Diskriminierungsfreie Algorithmen
- **Datenschutz**: DSGVO-konforme Datenverarbeitung

### Praktische Umsetzungsempfehlungen

#### Implementierungs-Roadmap

**Phase 1: Vorbereitung (3-6 Monate)**
- Rechtliche Analyse der geplanten KI-Anwendung
- Datenschutz-Folgenabschätzung
- Mitarbeiterschulung
- Pilotprojekt-Definition

**Phase 2: Pilotierung (6-12 Monate)**
- Kontrollierte Testung an wenigen Verfahren
- Kontinuierliches Monitoring
- Anpassung der Prozesse
- Dokumentation der Erfahrungen

**Phase 3: Skalierung (12+ Monate)**
- Ausweitung auf weitere Vergabeverfahren
- Standardisierung der Prozesse
- Regelmäßige Compliance-Audits
- Kontinuierliche Verbesserung

#### Risikomanagement

**Hohe Risiken vermeiden:**
- Diskriminierung durch verzerrte Algorithmen
- Intransparente "Black Box"-Entscheidungen
- Datenschutzverletzungen
- Lock-in-Effekte bei Anbietern

**Erfolgsfaktoren:**
- Gradueller Ansatz bei der Einführung
- Transparenz vor Effizienz priorisieren
- Kontinuierliches Lernen und Anpassung
- Enge Abstimmung mit Rechtsberatung

---

## Zusammenfassung

Die Anwendung von Sprachmodellen im Vergabeprozess bietet erhebliche Potentiale zur Effizienzsteigerung und Qualitätsverbesserung. Entscheidend ist dabei die Einhaltung vergaberechtlicher Grundprinzipien und die Berücksichtigung neuer KI-spezifischer Anforderungen.

**Kernerkenntnisse:**
1. **Strukturierte Anwendung**: Sprachmodelle am effektivsten bei klar definierten, wiederholbaren Aufgaben
2. **Menschliche Kontrolle**: Finale Entscheidungen bleiben bei Menschen
3. **Rechtssicherheit**: Compliance mit Vergaberecht und AI Act essentiell
4. **Dokumentation**: Lückenlose Nachvollziehbarkeit aller KI-Entscheidungen
5. **Gradueller Ansatz**: Schrittweise Einführung mit kontinuierlicher Evaluation

Die vorgestellten Prompts und Methoden ermöglichen eine rechtssichere und effiziente Digitalisierung von Vergabeprozessen unter Wahrung aller vergaberechtlichen Grundsätze.

---

*Dieses Kapitel basiert auf dem vergaberechtlichen Leitfaden von Agent 7 und den bewährten Prompt-Sammlungen für Vergabeverfahren. Alle rechtlichen Hinweise entsprechen dem Stand Juni 2025 und sollten regelmäßig auf Aktualität geprüft werden.*