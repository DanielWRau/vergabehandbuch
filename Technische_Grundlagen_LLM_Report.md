# Technische Grundlagen von Large Language Models
## Kapitel 1 - Buchprojekt "Sprachmodelle in der öffentlichen Auftragsvergabe"

**Research-Agent Report | Juni 2025**

---

## Inhaltsverzeichnis

1. [Executive Summary](#executive-summary)
2. [Grundlagen neuronaler Netze](#grundlagen-neuronaler-netze)
3. [Transformer-Architektur und Attention-Mechanismen](#transformer-architektur-und-attention-mechanismen)
4. [Training von Large Language Models](#training-von-large-language-models)
5. [Grenzen und technische Limitationen](#grenzen-und-technische-limitationen)
6. [Aktuelle Modelllandschaft 2024/2025](#aktuelle-modelllandschaft-20242025)
7. [Deutsche und europäische LLM-Entwicklungen](#deutsche-und-europäische-llm-entwicklungen)
8. [Relevanzbewertung für öffentliche Beschaffung](#relevanzbewertung-für-öffentliche-beschaffung)
9. [Visualisierungsvorschläge](#visualisierungsvorschläge)
10. [Glossar technischer Begriffe](#glossar-technischer-begriffe)

---

## Executive Summary

Large Language Models (LLMs) basieren auf der Transformer-Architektur, die 2017 mit dem Attention-Mechanismus revolutioniert wurde. Diese Modelle verwenden neuronale Netze mit Milliarden von Parametern, die durch Backpropagation und spezialisierte Trainingsverfahren wie RLHF (Reinforcement Learning from Human Feedback) optimiert werden.

**Kernerkenntnisse für die öffentliche Beschaffung:**
- LLMs sind hochkomplexe technische Systeme mit spezifischen Stärken und Schwächen
- Halluzinationen, Bias und Kontextlimitationen erfordern sorgfältige Evaluation
- Deutsche/europäische Alternativen (Aleph Alpha, LeoLM) bieten Datenschutz-Vorteile
- Technisches Verständnis ist essentiell für verantwortungsvolle Beschaffungsentscheidungen

---

## Grundlagen neuronaler Netze

### Architektur und Funktionsweise

Neuronale Netze bestehen aus drei grundlegenden Schichttypen:

1. **Eingabeschicht (Input Layer)**: Empfängt die Daten aus der Realität
2. **Verborgene Schichten (Hidden Layers)**: Verarbeiten die Daten durch komplexe Berechnungen
3. **Ausgabeschicht (Output Layer)**: Liefert die finalen Informationen

### Gewichtungen und Aktivierungen

**Gewichtungen (Weights)**:
- Jeder Knoten ist eine Recheneinheit mit eingebauten Aktivierungsfunktionen
- Im ersten Schritt werden Gewichtungen zufällig initialisiert
- Gewichtungen bestimmen die Stärke der Verbindungen zwischen Neuronen

**Aktivierungsfunktionen**:
- Bestimmen anhand empfangener Informationen, ob ein Knoten aktiviert wird
- Neuronen sind zunächst mit zufälligen Aktivierungen initialisiert
- Das Netzwerk berechnet Ausgabegrößen und wird von der Zielfunktion (Loss) bewertet

### Training und Backpropagation

**Der Backpropagation-Algorithmus**:
- Gilt als eines der effizientesten Lernverfahren für mehrschichtige neuronale Netzwerke
- Der Fehler wird über Backpropagation auf die verursachenden Neuronen zurückverteilt
- Verwendet Gradientenverfahren zur Optimierung der Gewichtungen

**Trainingsablauf**:
1. **Forward Pass**: Daten fließen durch das Netzwerk und erzeugen eine Ausgabe
2. **Fehlerberechnung**: Unterschied zwischen Ziel-Wert und Prädiktion wird ermittelt
3. **Backward Pass**: Fehler wird rückwärts propagiert und Gewichte werden angepasst
4. **Iteration**: Wiederholung von Prädiktion (Forward) und Gewichtsanpassung (Back)

**Mathematische Grundlagen**:
- Fehlerfunktionen: MSE (Mean Squared Error) oder Kreuzentropie (Cross Entropy)
- Gradientenabstieg zur Minimierung des Fehlers
- Parallelisierung durch einfache Multiplikationen und Faltungen

---

## Transformer-Architektur und Attention-Mechanismen

### Historische Entwicklung

Die moderne Transformer-Architektur wurde 2017 im wegweisenden Paper "Attention Is All You Need" von Google-Forschern vorgestellt. Diese Architektur revolutionierte das Feld durch:

- Verzicht auf rekurrente Strukturen
- Fokus auf den Attention-Mechanismus
- Parallelisierbare Verarbeitung

### Attention-Mechanismus im Detail

**Selbstaufmerksamkeit (Self-Attention)**:
- Berechnet die Aufmerksamkeit einer Eingabe gegenüber allen anderen Eingaben innerhalb einer Sequenz
- Verwendet Query-, Key-, Value-Repräsentationen für jedes Token
- Funktioniert als Scoring-Mechanismus zur Bestimmung der Relevanz benachbarter Token

**Multi-Head Attention**:
- Aufmerksamkeit wird parallel in h=8 Köpfen (Heads) berechnet
- Verschiedene Attention-Heads können verschiedene Aspekte der Beziehungen erfassen
- Werte werden konkateniert und der Layer-Normalisierung zugeführt

### Encoder-Decoder vs. Decoder-Only Modelle

**Encoder-Decoder-Modelle (wie BERT)**:
- Encoder erstellt kontextualisierte Repräsentationen der Token
- Decoder generiert Ausgaben basierend auf Encoder-Informationen
- Bidirektionale Verarbeitung möglich

**Decoder-Only Modelle (wie GPT-Serie)**:
- Bestehen aus maskierten Selbstaufmerksamkeits-Schichten und Feed-Forward-Netzwerken
- Kausale Maskierung verhindert Zugriff auf zukünftige Token
- Effizienter für Textgenerierung

### Feed-Forward-Netzwerke

- Enthalten die meisten Parameter in Transformer-Modellen
- Zusätzliche Verarbeitung der Attention-Ausgaben
- Residuelle Verbindungen und Layer-Normalisierung für Stabilität

---

## Training von Large Language Models

### Pre-Training Phase

**Datenquellen und Preprocessing**:
- Massive Textdatensets aus dem Internet (Books Corpus, Wikipedia, Web-Crawls)
- Tokenisierung und Preprocessing der Rohdaten
- Unsupervised Learning auf Milliarden von Token

**Trainingsverfahren**:
- **Autoregressive Modelle (GPT)**: Vorhersage des nächsten Tokens
- **Masked Language Models (BERT)**: Vorhersage maskierter Token
- **Next Sentence Prediction**: Vorhersage des nächsten Satzes in Satzpaaren

### Fine-Tuning

**Supervised Fine-Tuning (SFT)**:
- Anpassung des vortrainierten Modells auf spezifische Aufgaben
- Verwendung kleinerer, aufgabenspezifischer Datasets
- Erhaltung der allgemeinen Sprachfähigkeiten bei Spezialisierung

**Instruction Tuning**:
- Training auf Instruktions-Antwort-Paaren
- Verbesserung der Fähigkeit, Anweisungen zu befolgen
- Grundlage für Chatbot-Funktionalitäten

### Reinforcement Learning from Human Feedback (RLHF)

**Dreistufiger RLHF-Prozess**:

1. **Präferenzdatensammlung**:
   - Menschliche Bewerter bewerten verschiedene Modellantworten
   - Erstellung von Präferenz-Datasets mit paarweisen Vergleichen
   - Qualitative Bewertung nach menschlichen Werten

2. **Reward Model Training**:
   - Training eines Belohnungsmodells basierend auf menschlichen Präferenzen
   - Skalare Belohnungswerte für Textsequenzen
   - Supervised Learning auf Präferenzdaten

3. **Reinforcement Learning Optimierung**:
   - **PPO (Proximal Policy Optimization)**: Traditioneller RL-Ansatz
   - **DPO (Direct Preference Optimization)**: Effizientere Alternative zu PPO
   - **Constitutional AI**: Selbstkritik basierend auf vordefinierten Regeln
   - **RLAIF**: KI-Feedback statt menschliches Feedback

**Aktuelle Tools und Frameworks (2024-2025)**:
- **TRL/TRLX**: Hugging Face Ökosystem für PPO-basiertes RLHF
- **RL4LMs**: Vielfältige RL-Algorithmen für Sprachmodelle
- Skalierung bis zu 200B Parameter möglich

---

## Grenzen und technische Limitationen

### Halluzinationen

**Definition und Ursachen**:
- KI-Halluzinationen: von KI-Modellen generierte Inhalte, die realistisch erscheinen, aber von Quelleninputs abweichen
- LLMs erstellen Ausgaben basierend auf Wahrscheinlichkeiten für das nächste Wort, nicht auf Wahrheitsgehalt
- Fehlende Übereinstimmung (Faithfulness) oder mangelnde faktische Richtigkeit (Factualness)

**Technische Ursachen**:
- Architektur-bedingte Schwächen wie "Attention Glitches"
- "Exposure Bias": Unterschiede zwischen Training und Inferenz
- Übermäßige Anpassung an Nutzererwartungen ("Sycophancy")

### Bias und Verzerrungen

**Arten von Bias**:
- **Position Bias**: Überbetonung von Anfang oder Ende eines Dokuments, Vernachlässigung der Mitte
- **Training Data Bias**: Verzerrungen in den Trainingsdaten spiegeln sich in Modellausgaben wider
- **Cultural Bias**: Überrepräsentation bestimmter kultureller Perspektiven

**Aktuelle Entwicklungen (2025)**:
- MIT-Forschung zur Identifikation der Ursachen von Position Bias
- The American Sunlight Project deckte strategische Propaganda-Beeinflussung von LLM-Outputs auf
- Bewusste Manipulation durch mass-publizierte Pro-Russland-Propaganda

### Kontextlängen-Limitationen

**Technische Beschränkungen**:
- Länge der Konversation begrenzt durch Kontextfenster-Größe
- Bei Überschreitung werden nur Teile im Kontextfenster berücksichtigt
- Summarization-Algorithmen für zu entfernte Konversationsteile erforderlich

**Aktuelle Verbesserungen (2024-2025)**:
- **Google Gemini 1.5**: Kontextfenster bis 1 Million Token (10 Millionen erfolgreich getestet)
- **Anthropic Claude 2.1**: Kontextfenster bis 200k Token
- **Llama 4 Scout**: 10 Millionen Token Kontextfenster

### Sicherheitsbedenken

**Herausforderungen**:
- Öffentlich zugängliche LLM-Anwendungen benötigen Sicherheitsmaßnahmen
- Effektive Implementierung von Kontrollen bleibt schwierig
- Filterung schädlicher Inhalte technisch komplex

---

## Aktuelle Modelllandschaft 2024/2025

### Top-Performer Übersicht

**Führende Modelle**:
- **Claude 3.7 Sonnet** und **GPT-4.5**: Beste Gesamtleistung mit präzisen, gut begründeten Antworten
- **GPT-4o** und **Gemini 2.0 Pro**: Solide Alternativen mit spezifischen Stärken

### Detaillierte Modellanalyse

#### OpenAI Modelle

**GPT-4.5 (Februar 2025)**:
- Verbesserte Kontextverarbeitung
- Geringere Halluzinationsraten
- Erweiterte Multimodalität

**GPT-4o (März 2025)**:
- Native Bildgenerierung
- 128K Token Kontextfenster
- Bis zu 16.384 Tokens pro Anfrage
- Multimodal: Audio, Visual, Text in Echtzeit

**GPT-o1 Serie**:
- Spezialisiert auf komplexe Reasoning-Aufgaben
- Step-by-step Lösungsansätze
- 83% Genauigkeit bei Mathematik-Olympiade-Aufgaben (vs. 13% bei GPT-4o)

#### Anthropic Claude Modelle

**Claude Sonnet 4 (Mai 2025)**:
- Optimiert für natürliche Gespräche
- Besonders effektiv in Unternehmens-Chat-Umgebungen
- Überlegene Reasoning-Fähigkeiten

#### Google Gemini Modelle

**Gemini 2.5 Pro**:
- Höchste Intelligenz-Bewertung
- Gemini 2.5 Flash-Lite: Höchste Geschwindigkeit (850 t/s)
- Bevorzugtes Tool für KI-Coding bei erfahrenen Ingenieuren

#### Meta Llama Modelle

**Llama 4 Herd (2025)**:
- **Scout**: Leichtestes Modell, 10M Token Kontextfenster
- **Maverick**: Mittlere Komplexität
- **Behemoth**: Stärkstes Modell der Serie
- Wendepunkt für Open-Source-KI

#### DeepSeek Modelle

**DeepSeek R1 (Januar 2025)**:
- 671 Milliarden Parameter
- Vergleichbare Leistung zu OpenAI o1
- Signifikant kostengünstiger
- Open-weight Reasoning-Modell

### Performance-Vergleich

**Geschwindigkeit**: Gemini 2.5 Flash-Lite (850 t/s) führend
**Kosten**: DeepSeek R1 Distill Llama 8B am günstigsten
**Kontext**: Llama 4 Scout (10M) und MiniMax-Text-01 (4M) größte Kontextfenster
**Reasoning**: o1/o3 Serie und DeepSeek R1 führend

---

## Deutsche und europäische LLM-Entwicklungen

### Aleph Alpha - Europäisches Flaggschiff

**Unternehmensüberblick**:
- "Europäisches Flaggschiff in vertrauensvoller KI"
- Spezialisierung auf Transparenz und Unternehmens-/Behördenlösungen
- Eigenes Rechenzentrum mit leistungsstarkem KI-Cluster

**Luminous-Modelle**:
- Fokus auf Datenschutz, Mehrsprachigkeit (besonders Deutsch)
- EU-Standards-konforme rechtliche Compliance
- DSGVO-konform durch europäische Datenverarbeitung

### Aktuelle Entwicklungen von Aleph Alpha

**Pharia-1-LLM (August 2024)**:
- Zwei 7B-Parameter Open-Source-Modelle
- Spezialisierung auf Englisch, Deutsch, Französisch, Spanisch
- Optimiert für Automobil- und Technologiebranchen
- Verfügbar für nicht-kommerzielle und Bildungszwecke

**T-Free Technologie (Januar 2025)**:
- Bahnbrechende tokenizer-freie LLM-Architektur
- Präsentation auf dem Weltwirtschaftsforum in Davos
- 70% niedrigere Trainingskosten
- Signifikant reduzierter CO₂-Fußabdruck
- Grundlage für souveräne KI-Lösungen

### LeoLM - Deutsches Open-Source-Modell

**Entwicklung**:
- Gemeinsame Entwicklung von LAION und Hessian.AI
- Erstes kommerziell nutzbares deutsches Foundation Language Model
- Basiert auf Meta's Llama 2
- Training auf Hessian.AI Supercomputer 42

**Leistungsmerkmale**:
- Übertrifft gpt-3.5-turbo-instruct in deutscher Übersetzungsleistung
- Bessere Benchmark-Ergebnisse als Llama-2 Basismodell
- Auch in englischen Benchmarks kompetitiv

### OpenEuroLLM - Europäische Initiative

**Konsortium**:
- 20 führende europäische Forschungseinrichtungen, Unternehmen und HPC-Zentren
- Deutsche Teilnehmer: ELLIS Institut Tübingen, Fraunhofer IAIS, Universität Tübingen
- Unternehmen: Aleph Alpha Research, ellamind

**Ziele**:
- Entwicklung nächster Generation Open-Source-Sprachmodelle
- Europäische technologische Unabhängigkeit
- Bündelung von Expertise und Ressourcen

### Strategische Vorteile europäischer Modelle

**Lokaler Kontext**:
- Vorteil bei spezifischem Wissen (deutsche Rechtstexte)
- Bessere Leistung bei regionalen Anwendungsfällen
- Kulturelle und sprachliche Nuancen

**Datenschutz und Compliance**:
- DSGVO-Konformität durch europäische Datenverarbeitung
- Keine Datenübertragung außerhalb der EU
- Vollständige Kontrolle bei selbst gehosteten Open-Source-Lösungen

---

## Relevanzbewertung für öffentliche Beschaffung

### Technische Evaluationskriterien

**Primäre Faktoren**:
1. **Halluzinations-Rate**: Quantifizierung faktischer Genauigkeit
2. **Bias-Bewertung**: Systematische Tests auf Verzerrungen
3. **Kontextverarbeitung**: Fähigkeit zur Verarbeitung langer Dokumente
4. **Multimodale Fähigkeiten**: Integration verschiedener Datentypen
5. **Reasoning-Qualität**: Logische Schlussfolgerungen und Problemlösung

**Sekundäre Faktoren**:
1. **Antwortgeschwindigkeit**: Tokens pro Sekunde
2. **Kosteneffizienz**: Preis pro Token oder Anfrage
3. **API-Stabilität**: Verfügbarkeit und Zuverlässigkeit
4. **Skalierbarkeit**: Bewältigung hoher Anfragevolumen

### Datenschutz und Compliance-Bewertung

**DSGVO-Konformität**:
- Datenverarbeitung innerhalb der EU (Aleph Alpha, OpenEuroLLM)
- Transparenz über Datennutzung und -speicherung
- Nutzerrechte auf Datenauskunft und -löschung

**Nationale Sicherheit**:
- Vermeidung von Abhängigkeiten von nicht-EU-Anbietern
- Schutz vor ausländischen Beeinflussungsversuchen
- Kontrolle über kritische KI-Infrastruktur

### Kostenanalyse

**Total Cost of Ownership (TCO)**:
1. **Lizenz-/API-Kosten**: Variable Kosten pro Nutzung
2. **Infrastrukturkosten**: Hardware und Hosting
3. **Personal-/Trainingskosten**: Einarbeitung und Wartung
4. **Compliance-Kosten**: Rechtliche Beratung und Audit

**Beispielvergleich**:
- **OpenAI GPT-4**: Höhere Funktionalität, höhere Kosten, Datenschutzbedenken
- **Aleph Alpha Luminous**: Mittlere Funktionalität, moderate Kosten, EU-konform
- **LeoLM (Open Source)**: Grundfunktionalität, niedrige laufende Kosten, vollständige Kontrolle

### Risikobewertung

**Hochrisiko-Szenarien**:
- Automatisierte Entscheidungsfindung ohne menschliche Aufsicht
- Verarbeitung sensibler Personendaten
- Öffentlichkeitswirksame Kommunikation

**Mittelrisiko-Szenarien**:
- Dokumentenanalyse und -zusammenfassung
- Interne Recherche und Informationsaufbereitung
- Unterstützung bei Routineaufgaben

**Niedrigrisiko-Szenarien**:
- Textverbesserung und Korrekturlesen
- Übersetzungsunterstützung
- Ideengenerierung und Brainstorming

---

## Visualisierungsvorschläge

### 1. Neuronale Netz-Architektur Diagramm

**Inhalt**: Dreischichtiges Modell (Input → Hidden → Output)
**Darstellung**: Interaktive Animation der Gewichtungsanpassung
**Zielgruppe**: Technische Laien in der Verwaltung
**Format**: SVG mit JavaScript-Animation

### 2. Transformer-Architektur Flowchart

**Inhalt**: Encoder-Decoder vs. Decoder-Only Strukturen
**Darstellung**: Vergleichende Gegenüberstellung mit Datenfluss
**Zielgruppe**: IT-Entscheider
**Format**: Professionelles Schaubild mit Legende

### 3. Attention-Mechanismus Heatmap

**Inhalt**: Visualisierung der Token-zu-Token-Aufmerksamkeit
**Darstellung**: Interaktive Heatmap mit Beispieltext
**Zielgruppe**: Technische Evaluatoren
**Format**: Web-basierte interaktive Visualisierung

### 4. RLHF-Prozess Timeline

**Inhalt**: Dreistufiger RLHF-Prozess mit Datenflusss
**Darstellung**: Horizontale Timeline mit Verzweigungen
**Zielgruppe**: Projektmanager und Beschaffungsverantwortliche
**Format**: Infografik mit Icons und Farbbcodierung

### 5. Modell-Vergleichsmatrix

**Inhalt**: Parameter, Kosten, Leistung, Datenschutz
**Darstellung**: Interaktive Tabelle mit Filteroptionen
**Zielgruppe**: Entscheidungsträger
**Format**: Dashboard mit exportierbaren Daten

### 6. Risiko-Benefit-Matrix

**Inhalt**: Anwendungsszenarien nach Risiko und Nutzen klassifiziert
**Darstellung**: Vier-Quadranten-Matrix mit Positionierung
**Zielgruppe**: Risikomanager und Compliance-Beauftragte
**Format**: Interaktive Scatterplot-Darstellung

### 7. Europäische LLM-Landkarte

**Inhalt**: Geografische Verteilung europäischer KI-Initiativen
**Darstellung**: Europakarte mit Standorten und Verbindungen
**Zielgruppe**: Politische Entscheidungsträger
**Format**: Interaktive Karte mit Detail-Popups

---

## Glossar technischer Begriffe

### A

**Attention-Mechanismus**: Verfahren zur Gewichtung der Relevanz verschiedener Eingabeteile für die Generierung von Ausgaben. Kernkomponent der Transformer-Architektur.

**Autoregressive Modelle**: Modelle, die sequenziell Token für Token generieren, wobei jedes neue Token basierend auf allen vorherigen Token vorhergesagt wird.

### B

**Backpropagation**: Algorithmus zum Training neuronaler Netze, bei dem Fehler rückwärts durch das Netzwerk propagiert werden, um Gewichtungen zu optimieren.

**Bias**: Systematische Verzerrungen in KI-Modellen, die durch einseitige Trainingsdaten oder algorithmische Schwächen entstehen können.

### C

**Constitutional AI**: Trainingsverfahren, bei dem KI-Modelle lernen, sich selbst anhand vordefinierter Regeln zu kritisieren und zu verbessern.

**Context Window**: Maximale Anzahl von Token, die ein Modell gleichzeitig verarbeiten kann. Bestimmt die Länge der berücksichtigbaren Eingabe.

### D

**DPO (Direct Preference Optimization)**: Effizientere Alternative zu PPO bei RLHF, die direkt auf Präferenzdaten ohne separates Reward Model trainiert.

**Decoder-Only**: Transformer-Architektur, die nur aus Decoder-Schichten besteht (wie GPT-Modelle), optimiert für Textgenerierung.

### E

**Encoder-Decoder**: Transformer-Architektur mit separaten Encoder- und Decoder-Komponenten (wie BERT), ermöglicht bidirektionale Verarbeitung.

**Exposure Bias**: Problem bei der Diskrepanz zwischen Training (mit korrekten Inputs) und Inferenz (mit eigenen generierten Outputs).

### F

**Fine-Tuning**: Anpassung eines vortrainierten Modells auf spezifische Aufgaben oder Domänen durch weiteres Training auf kleineren, spezialisierten Datensätzen.

**Feed-Forward Network**: Schichten in Transformern, die die meisten Parameter enthalten und zusätzliche Verarbeitung nach der Attention durchführen.

### G

**Gradientenabstieg**: Optimierungsverfahren zur Minimierung der Verlustfunktion durch iterative Anpassung der Modellparameter.

**GPT (Generative Pre-trained Transformer)**: Familie von autoregressiven Sprachmodellen basierend auf Transformer-Architektur.

### H

**Halluzinationen**: Vom Modell generierte Inhalte, die plausibel erscheinen, aber faktisch inkorrekt oder nicht durch die Eingabe gestützt sind.

**Hidden Layers**: Zwischenschichten in neuronalen Netzen zwischen Ein- und Ausgabeschicht, wo die eigentliche Datenverarbeitung stattfindet.

### I

**Instruction Tuning**: Spezielle Form des Fine-Tunings auf Instruktions-Antwort-Paaren zur Verbesserung der Anweisungsbefolgung.

### L

**Large Language Model (LLM)**: Große Sprachmodelle mit Milliarden von Parametern, trainiert auf umfangreichen Textdaten zur Verarbeitung und Generierung natürlicher Sprache.

**Layer Normalization**: Normalisierungstechnik in Transformern zur Stabilisierung des Trainings und Verbesserung der Konvergenz.

### M

**Multi-Head Attention**: Technik zur parallelen Berechnung mehrerer Attention-Mechanismen, um verschiedene Arten von Beziehungen zu erfassen.

**Masked Language Model**: Trainingsverfahren, bei dem zufällige Token maskiert und vom Modell vorhergesagt werden (wie bei BERT).

### N

**Neural Network**: Rechnerisches Modell inspiriert von biologischen Neuronen, bestehend aus miteinander verbundenen Knoten mit Gewichtungen.

### P

**Pre-Training**: Erste Trainingsphase auf großen, nicht-annotierten Datensätzen zur Entwicklung allgemeiner Sprachfähigkeiten.

**PPO (Proximal Policy Optimization)**: Reinforcement Learning-Algorithmus, der in RLHF zur Optimierung von Sprachmodellen verwendet wird.

**Parameter**: Lernbare Gewichtungen in neuronalen Netzen, die während des Trainings optimiert werden. LLMs haben typischerweise Milliarden von Parametern.

### Q

**Query-Key-Value**: Drei Repräsentationen in Attention-Mechanismen, die zur Berechnung der Aufmerksamkeitsgewichte verwendet werden.

### R

**RLHF (Reinforcement Learning from Human Feedback)**: Trainingsverfahren zur Ausrichtung von LLMs an menschlichen Präferenzen durch Reinforcement Learning.

**Reasoning**: Fähigkeit von KI-Modellen zur logischen Schlussfolgerung und mehrstufigen Problemlösung.

**Residual Connections**: Verbindungen, die Eingaben einer Schicht direkt zur Ausgabe hinzufügen, um Training zu stabilisieren.

### S

**Self-Attention**: Attention-Mechanismus, bei dem ein Token seine Beziehung zu allen anderen Token in derselben Sequenz berechnet.

**Supervised Fine-Tuning (SFT)**: Fine-Tuning mit annotierten Daten für spezifische Aufgaben.

**Sycophancy**: Tendenz von KI-Modellen, übermäßig den wahrgenommenen Erwartungen der Nutzer zu entsprechen.

### T

**Token**: Grundeinheit der Textverarbeitung in LLMs, kann Wörter, Wortteile oder Zeichen repräsentieren.

**Transformer**: Neuronale Netzwerk-Architektur basierend auf Attention-Mechanismen, Grundlage moderner LLMs.

**Temperature**: Parameter zur Kontrolle der Zufälligkeit in der Textgenerierung - niedrige Werte führen zu deterministischeren Ausgaben.

### V

**Variational Autoencoder**: Generatives Modell, das latente Repräsentationen von Daten erlernt (weniger relevant für moderne LLMs).

### W

**Weights**: Siehe Parameter - numerische Werte, die die Stärke der Verbindungen zwischen Neuronen bestimmen.

---

## Quellen und weiterführende Literatur

**Grundlagenliteratur**:
1. Vaswani et al. (2017): "Attention Is All You Need" - Original Transformer Paper
2. Devlin et al. (2018): "BERT: Pre-training of Deep Bidirectional Transformers"
3. Brown et al. (2020): "Language Models are Few-Shot Learners" (GPT-3)

**Aktuelle Entwicklungen 2024-2025**:
1. OpenAI (2024): "GPT-4o System Card"
2. Anthropic (2024): "Constitutional AI: Harmlessness from AI Feedback"
3. DeepSeek (2025): "DeepSeek-R1: Reasoning with Large Language Models"

**Deutsche/Europäische Quellen**:
1. Aleph Alpha (2024): "Pharia-1-LLM Technical Report"
2. LAION & Hessian.AI (2024): "LeoLM: German Foundation Language Model"
3. Fraunhofer IESE (2024): "Halluzinationen von generativer KI und LLMs"

**Technische Ressourcen**:
1. Hugging Face Transformers Documentation
2. OpenEuroLLM Consortium White Papers
3. RLHF Book by Nathan Lambert (2024)

---

**Report erstellt**: Juni 2025  
**Autor**: Research-Agent 3  
**Projekt**: "Sprachmodelle in der öffentlichen Auftragsvergabe"  
**Status**: Vollständig - Bereit für Kapitel 1 Integration