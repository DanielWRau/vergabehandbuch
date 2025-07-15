# Hans-Peter Stricker 

## Sprachmodelle verstehen

Chatbots und generative künstliche Intelligenz im Zusammenhang

# Hans-Peter Stricker 

## Sprachmodelle verstehen

Chatbots und generative künstliche Intelligenz im Zusammenhang
![img-0.jpeg](img-0.jpeg)

Sprachmodelle verstehen

Hans-Peter Stricker

# Sprachmodelle verstehen 

Chatbots und generative künstliche Intelligenz im Zusammenhang

# Hans-Peter Stricker 

Berlin, Deutschland

ISBN 978-3-662-68279-1
ISBN 978-3-662-68280-7 (eBook)
https://doi.org/10.1007/978-3-662-68280-7
Die Deutsche Nationalbibliothek verzeichnet diese Publikation in der Deutschen Nationalbibliografie; detaillierte bibliografische Daten sind im Internet über https://portal.dnb.de abrufbar.
(c) Der/die Herausgeber bzw. der/die Autor(en), exklusiv lizenziert an Springer-Verlag GmbH, DE, ein Teil von Springer Nature 2024

Das Werk einschließlich aller seiner Teile ist urheberrechtlich geschützt. Jede Verwertung, die nicht ausdrücklich vom Urheberrechtsgesetz zugelassen ist, bedarf der vorherigen Zustimmung des Verlags. Das gilt insbesondere für Vervielfältigungen, Bearbeitungen, Übersetzungen, Mikroverfilmungen und die Einspeicherung und Verarbeitung in elektronischen Systemen.
Die Wiedergabe von allgemein beschreibenden Bezeichnungen, Marken, Unternehmensnamen etc. in diesem Werk bedeutet nicht, dass diese frei durch jedermann benutzt werden dürfen. Die Berechtigung zur Benutzung unterliegt, auch ohne gesonderten Hinweis hierzu, den Regeln des Markenrechts. Die Rechte des jeweiligen Zeicheninhabers sind zu beachten.
Der Verlag, die Autoren und die Herausgeber geben davon aus, dass die Angaben und Informationen in diesem Werk zum Zeitpunkt der Veröffentlichung vollständig und korrekt sind. Weder der Verlag noch die Autoren oder die Herausgeber übernehmen, ausdrücklich oder implizit, Gewähr für den Inhalt des Werkes, etwaige Fehler oder Äußerungen. Der Verlag bleibt im Hinblick auf geografische Zuordnungen und Gebietsbezeichnungen in veröffentlichten Karten und Institutionsadressen neutral.

Einbandabbildung: ©SK/Adobe Stock
Planung/Lektorat: Andreas Rüdinger
Springer ist ein Imprint der eingetragenen Gesellschaft Springer-Verlag GmbH, DE und ist ein Teil von Springer Nature.
Die Anschrift der Gesellschaft ist: Heidelberger Platz 3, 14197 Berlin, Germany
Wenn Sie dieses Produkt entsorgen, geben Sie das Papier bitte zum Recycling.

# Vorwort 

Ob es so kommen wird, wie manche vermuten, einige hoffen und andere fürchten: dass künstliche Intelligenz unser aller Leben immer stärker und auf heute nicht vorhersehbare Weise beeinflussen und prägen wird, sei dahingestellt. Dass sie es heute schon in nicht unbeträchtlichem Maße tut, kann aber Grund genug sein, besser verstehen zu wollen, wie und warum sie dazu in der Lage ist. Und falls es noch stärker so kommen wird, umso mehr.

Wir wollen von einem Versprechen ausgehen, dass die Fürsprecher künstlicher Intelligenz, und hier besonders der sprach- und denkfähigen künstlichen Intelligenz uns machen: dass sie uns helfen kann, Dinge besser zu verstehen - einfach so oder um zum Beispiel schwierige Probleme zu lösen oder Entscheidungen zu treffen. Sprachmodelle nennt man diese relativ neuartigen künstlichen Intelligenzen, und weil sie Sprache nicht nur verstehen, sondern selbst auch „sprechen" können, also Sprache und Texte generieren, nennt man sie generative Sprachmodelle. Generative Sprachmodelle können uns im Kleinen helfen, etwas besser zu verstehen, indem sie es uns in natürlicher und gut verständlicher Sprache erklären, anstatt uns nur, wie es InternetSuchmaschinen tun, bei der Suche nach Erklärungen zu helfen, die andere Menschen geschrieben haben. Aber womöglich auch im Großen, indem sie Wissenschaftlern Zusammenhänge in einem großen, sprachlich erschlossenen Wissensgebiet nachvollziehbar aufzeigen, auf die sie, die Wissenschaftler, vorher nicht gekommen wären. Tatsächlich ist schon berichtet worden, dass generative Sprachmodelle substantielle wissenschaftliche Hypothesen aufgestellt haben, zum Beispiel in der Biomedizin [1] und in der Mathematik [2].

Wir werden in diesem Buch zu zeigen versuchen, dass und warum generative Sprachmodelle uns tatsächlich helfen können, Dinge besser zu verstehen, indem sie sie uns in einer für uns gut verständlichen Sprache erklären und Zusammenhänge für uns knüpfen. Als wesentliche Voraussetzung dafür, jemandem etwas erklären zu können, wird aber gemeinhin betrachtet, dass man es selbst verstanden hat. Doch kann man davon bei generativen Sprachmodellen sprechen? In welchem Sinne „verstehen" sie, was sie uns erklären? Und in welchem Sinne „wissen" sie, welche Sprache wir gut verstehen? Ver-

stehen sie, worum wir sie bitten, wenn wir sie um eine Erklärung oder eine Zusammenfassung bitten? Oder wonach wir fragen, wenn wir sie etwas fragen? Verstehen und wissen sie überhaupt irgend etwas in einem engeren oder weiteren Sinne?

Wir werden bei der Beantwortung dieser Fragen einerseits einen wohlwollenden Standpunkt einnehmen und zu zeigen versuchen, dass Sprachmodelle vieles durchaus „verstehen", „wissen" und „können" - und sogar in einem relativ spezifischen Sinne. Aber auch einen kritischen Standpunkt, der auf das abhebt, was und in welchem Sinne sie eben nicht verstehen, wissen und können - und womöglich in ihrer heutigen Form niemals werden.

So könnte sich das große Verstehensversprechen am Ende doch als unerfüllbar erweisen, und dann würden generative Sprachmodelle am Ende nur für Routinearbeiten und zur Generierung von Gebrauchstexten verwendet werden - was sie heute schon zufriedenstellend genug beherrschen und wofür sie bereits ausgiebig genutzt werden. In der Tat ist die Erledigung von Routinearbeiten das zweite große Versprechen, das die Entwickler generativer Sprachmodelle machen, vor allem von Routinearbeiten, die dennoch Mitdenken und ein gewisses Verständnis dafür voraussetzen, worum es geht. Und im Rahmen derer es nötig ist, den Sprachmodellen zu erklären, was man von ihnen will - und dass sie es verstehen.

Ein drittes Versprechen steht im Raume (das allerdings viele Menschen eher als Drohung empfinden): dass Sprachmodelle in der Lage sein werden, auch schwierige Probleme zu lösen, die ein Mensch selbst nicht lösen kann (oder keine Zeit dafür hat) oder für ihn Entscheidungen zu treffen, die er selbst nicht treffen kann oder will (oder keine Zeit dafür hat). Dass Verstehen eine notwendige Voraussetzung für beides ist - das Lösen von Problemen und das Treffen von Entscheidungen - muss nicht erklärt werden. Auf die Implikationen, die es hätte, wenn man verständige und im Prinzip problemlösungsfähige künstliche Intelligenzen wie es generative Sprachmodelle sind, Entscheidungen einer gewissen Tragweite treffen ließe und unter welchen Umständen dies geschehen könnte, werden wir in diesem Buch aber nicht eingehen, sondern nur der Frage nachgehen, wie weit das Verständnis von Sprachmodellen reichen kann, dass solchen Entscheidungen zugrundeliegen müsste.

Man kann in letzter Zeit fast wöchentlich von neuen Sprachmodellversionen und -varianten lesen, die nur darauf warten, der Öffentlichkeit zugänglich gemacht zu werden. Allein, die Entwickler dieser Sprachmodelle scheinen vor jeder neuen Veröffentlichung immer wieder zu zögern und sich ihrer Sache nicht ganz sicher zu sein. Weil die neuen Sprachmodelle zu viel können und die Menschen überfordern würden? Oder zu wenig und das schnell offenbar würde? Die größte Sorge der Entwickler ist wahrscheinlich, dass immer größere Sprachmodelle zuletzt immer wieder mit ganz unvorhergesehenen speziellen Fähigkeiten überrascht haben, die selbst ihre Entwickler nicht vorausgesehen haben - und die sich zum Guten wie zum Schlechten nutzen lassen. Und während es sich schon als schwierig herausgestellt hat, bekann-

te Fähigkeiten einzuzäumen, damit sie nicht aus dem Ruder laufen - das Schreiben ganzer Bücher im Stil eines lebenden Autors, das Verfassen von Bombenbauanleitungen, Hassreden oder subtil indoktrinierenden Texten -, so ist es mit noch nicht bekannten Fähigkeiten noch viel schwieriger. Und die Zögerlichkeit deshalb durchaus verständlich und vielleicht sogar anerkennenswert.

Generative Sprachmodelle erlauben uns zum ersten Mal, das, was eine künstliche Intelligenz generiert, also „sagt", selbst zu verstehen und zu beurteilen, ob sie verstanden hat, was wir von ihr wollten - und wovon sie spricht. Mit generativen Sprachmodellen ist die künstliche Intelligenz gleichsam demokratisiert worden: Jeder ist in der Lage, sie unmittelbar zu nutzen, zu beurteilen und zu bewerten, wobei subjektive Kriterien durchaus erlaubt sind. Die Qualität und der Nutzen von künstlicher Intelligenz kann nicht länger nur von Experten beurteilt und in automatisierten Tests vermessen werden. Darüber hinaus sind unseres Erachtens generative Sprachmodelle die ersten künstlichen Intelligenzen, bei denen schon ein mäßiges Interesse ausreicht, um in mehr als nur ganz groben Zügen zu verstehen, wie sie funktionieren.

Für wen schreiben wir dieses Buch? Für all jene, die auf die eine oder andere Weise am Verstehen interessiert sind, am eigenen oder dem anderer. Und die sich fragen, ob und wie uns Computerprogramme, die doch selbst angeblich nichts wirklich verstehen, dabei helfen können, etwas besser zu verstehen. Wir denken dabei zum Beispiel an Lehrer*innen, Student*innen und Dozent*innen - nicht nur, aber auch der Informatik -, und natürlich auch an interessierte Schüler*innen und schließlich den sogenannten interessierten Laien. Und nicht zuletzt an Wissenschaftsjournalist*innen und andere Menschen, die Wissenschaft kommunizieren.

Ein besonderer Dank des Autors geht an seine Frau Katja, seine Familie und an J. für mehr als nur moralische Unterstützung. Aber auch an Herrn Rüdinger vom Springer-Verlag, der überhaupt die Idee und den Mut zu diesem Experiment hatte - denn ein Experiment ist es, einen nicht ausgewiesenen KI-Experten ein solches Buch schreiben zu lassen. Schließlich sei Volker Siegel für die Hilfe bei der Erstellung der Token-Statistiken und manches hilfreiche Gespräch, vor allem in der Anfangsphase, gedankt.

Wir werden im Buch aus Gründen der Lesbarkeit die Wir-Form verwenden, die im Allgemeinen die Leser*innen mit einschließt und nur ganz selten auf den Autor allein verweist. Desweiteren werden wir von jetzt an - ebenfalls aus Gründen der Lesbarkeit und ausschließlich aus diesen - wieder auf den Gebrauch gegenderter Formen verzichten und bitten dafür um Nachsicht.

Beispielhaften Gesprächen mit Sprachmodellen haben wir ein eigenes Frage-Antwort-Layout gegeben.

# F: Wir fragen. 

A: Das Sprachmodell antwortet.
Offensichtliche Fehler in den Antworten haben wir gelegentlich durch eine besondere Art der Unterstreichung markiert. Wenn nicht ausdrücklich anders

erwähnt, haben wir uns mit dem Chatbot ChatGPT der Firma OpenAI in der Version 4 unterhalten, die allerdings, das muss dazu gesagt werden, nur in der Bezahlversion ChatGPT Plus verfügbar ist. Merklich andere Ergebnisse werden die Lesenden aber nicht erhalten, wenn sie die freie Version ChatGPT 3.5 verwenden. Nur einige Zusatzfunktionen werden fehlen, insbesondere die Erstellung personalisierter sogenannter GPTs. Andere Chatbots, die wir gelegentlich verwendet haben, sind Claude der Firma Anthropic und Gemini (vormals Bard) von Google. Die Fettungen in den Antworten der Chatbots stammen im Übrigen von diesen selbst und wurden übernommen.

# Inhaltsverzeichnis 

1 Einleitung und Begriffliches ..... 1
2 Was sind Sprachmodelle? ..... 17
2.1 Was sind Chatbots? ..... 17
2.2 Was ist künstliche Intelligenz? ..... 18
2.3 Was sind neuronale Netze? ..... 20
2.4 Was ist generative KI? ..... 25
2.5 Was sind statistische Modelle? ..... 29
2.6 Was ist maschinelles Lernen? ..... 32
2.7 Sind Sprachmodelle nur stochastische Papageien? ..... 41
2.8 Sind Sprachmodelle Vorboten Künstlicher Allgemeiner Intelligenz? ..... 43
3 Was können Sprachmodelle? ..... 47
3.1 Nützliche Fähigkeiten ..... 51
3.2 Elementare Fähigkeiten ..... 74
3.3 Was wissen Sprachmodelle? ..... 83
3.4 Was verstehen Sprachmodelle? ..... 88
3.5 Was können Sprachmodelle (noch) nicht so gut? ..... 97
3.6 Können Sprachmodelle denken? ..... 100
3.7 Wie gehen Sprachmodelle mit Nicht-Wissen und Fehlern um? ..... 108
3.8 Wie kann man das Wissen von Sprachmodellen erweitern? ..... 118
3.9 Können Sprachmodelle Mathematik? ..... 125
3.10 Wie werden Sprachmodelle getestet? ..... 134
4 Wie funktionieren Sprachmodelle? ..... 139
4.1 Woraus bestehen Texte (aus Sicht eines Sprachmodells)? ..... 139
4.2 Wie wird das nächste Wort berechnet? ..... 142
4.3 Was sind Wort- und Textvektoren? ..... 157
4.4 Wie funktionieren Transformer und Aufmerksamkeit? ..... 163
4.5 Wie werden Sprachmodelle vortrainiert? ..... 178

4.6 Wie werden Sprachmodelle angepasst? ..... 186
4.7 Womit werden große Sprachmodelle trainiert? ..... 189
4.8 Das Vokabular von ChatGPT ..... 195
5 Verstehen wir Sprachmodelle? ..... 203
Literaturverzeichnis ..... 209

# Kapitel 1 <br> Einleitung und Begriffliches 

Vom Kleinen zum Großen. Es gibt keinen einfach zu beschreitenden Königsweg, moderne künstliche Intelligenz (KI), insbesondere moderne Sprachmodelle, bottom-up, also vom ganz Kleinen ausgehend in einem großen Bogen hin zum ganz Großen zu verstehen - oder in umgekehrter Richtung, also top-down. Es ist fast so schwer, wie in der Natur vom Atom über die lebende Zelle zum Verständnis eines komplexen Organismus - oder gar einer Gesellschaft von Organismen - zu gelangen, oder im Falle des Gehirns vom einzelnen Neuron über den präfrontalen Kortex zum Bewusstsein. Im Falle von Sprachmodellen fällt das „ganz Große" etwas bescheidener aus und ist erst einmal nur ein generierter Text wie zum Beispiel eine pädagogisch wertvolle Erklärung eines physikalischen Sachverhalts, ein reflektierter Aufsatz über eine ethische Fragestellung, die Lösung eines mathematischen Problems oder ein langer tiefgründiger Dialog, den man mit einem Sprachmodell geführt hat. Das „ganz Kleine" sind die virtuellen Neuronen und Synapsen, aus denen ein modernes Sprachmodell als künstliches neuronales Netz besteht. Zwischen dem Kleinen und dem Großen vermittelt - das ist das Grundprinzip moderner generativer Sprachmodelle - das sukzessive Vorhersagen plausibler und grammatikalisch korrekter nächster Worte, was (fast) alles ist, worauf ein Sprachmodell trainiert wurde, und was es de facto tut. Zu verstehen gibt es auf dieser Abstraktionsebene also mindestens zweierlei: wie „blinde" Neuronen und Synapsen regelmäßig und verlässlich plausibel klingende Worte produzieren können - die noch dazu den Regeln einer Grammatik folgen - und wie sich solche Folgen einzelner, je für sich plausibler Worte zu einem großen kohärenten Ganzen, einem durchdacht wirkenden Text fügen, ohne dass dem ein Plan zugrunde läge. Beides kann man einfach glauben und zur Kenntnis nehmen, aber man kann es auch verstehen wollen, und bis zu einem bestimmten Punkt kann das auch gelingen.

We know very little. Der große Philosoph und Universalgelehrte Gottfried Wilhelm Leibniz (1646-1716) hat es in seiner Monadologie am Beispiel einer

Mühle erläutert, einer für die Verhältnisse seiner Zeit recht komplizierten Maschine:
„Man muss übrigens notwendig zugestehen, dass die Perzeption und das, was von ihr abhängt, aus mechanischen Gründen, d. h. aus Figuren und Bewegungen, nicht erklärbar ist. Denkt man sich etwa eine Maschine, die so beschaffen wäre, dass sie denken, empfinden und perzipieren könnte, so kann man sie sich derart proportional vergrößert vorstellen, dass man in sie wie in eine Mühle eintreten könnte. Dies vorausgesetzt, wird man bei der Besichtigung ihres Inneren nichts weiter als einzelne Teile finden, die einander stoßen, niemals aber etwas, woraus eine Perzeption zu erklären wäre." [3] , §17
![img-1.jpeg](img-1.jpeg)

Abb. 1.1 Eine Maschine, derart vergrößert, dass man in sie wie in eine Mühle eintreten und doch ihre Fähigkeit zur Perzeption nicht erklären könnte. (Anstelle von „Perzeption" würde man in Leibniz' Sinne „Bewusstsein" oder in unserem Zusammenhang „Sprachverständnis" lesen.) (Quelle: DALL-E)

Nicht viel anders steht man heute vor der Maschinerie des menschlichen Gehirns - aber eben auch vor der Maschinerie eines großen Sprachmodells, und das nicht nur als Laie, sondern sogar als Experte. Natürlich verstehen die Erfinder und Entwickler der Sprachmodelle diese besser und tiefer als ein Laie es vermöchte, aber doch nur bis zu einem gewissen Punkt. Hier einige Zitate aus Expertenmund (Übersetzungen von ChatGPT):
„Our understanding of how [language models] work internally is still very limited." / „Unser Verständnis davon, wie [Sprachmodelle] intern funktionieren, ist immer noch sehr begrenzt." (aus einem OpenAI-Forschungsbericht [4])

„The truth is that nobody has a clue what's going on." / „Die Wahrheit ist, dass niemand eine Ahnung hat, was vor sich geht." (Sébastien Bubeck, KI-Forscher bei Microsoft [5])
„Recent months have seen AI labs [...] develop and deploy ever more powerful digital minds that no one - not even their creators - can understand, predict, or reliably control." / „[D]e letzten Monate haben gesehen, wie KI-Labore [...] immer mächtigere digitale Verstandeseinheiten entwickelt und eingesetzt haben, die niemand - nicht einmal ihre Schöpfer - verstehen, vorhersagen oder zuverlässig kontrollieren kann." (Offener Brief führender KI-Forscher [6])
„We built the refinery, the alchemy, which takes the data and extracts its secrets into the neural network, the Philosopher's Stones, maybe the alchemy process. But then the result is so mysterious, and you can study it for years." / „Wir haben die Raffinerie gebaut, die Alchemie, die die Daten nimmt und ihre Geheimnisse in das neuronale Netzwerk extrahiert, die Steine der Weisen, vielleicht den Alchemieprozess. Aber dann ist das Ergebnis so mysteriös, und man kann es jahrelang studieren." (Ilya Sutskever, OpenAI-Gründer und ChatGPT-Erfinder [7])

Vor allem die ersten beiden Zitate erinnern an sehr ähnlich lautende, fast pflichtschuldige Eingeständnisse, die man in vielen Arbeiten zur Gehirnforschung findet, und die darauf hinauslaufen, dass man trotz aller Fortschritte noch immer sehr wenig über die Funktionsweise des menschlichen Gehirns weiß.
![img-2.jpeg](img-2.jpeg)

Abb. 1.2 Eine Google-Suche nach der Wortfolge „we still don't know" und „neuroscience" liefert fast 60.000 Treffer. (Quelle: Screenshot Google)

Der staunende Blick. Experten wie Laien müssen ab einem bestimmten Punkt mit einem mehr philosophischen Blick auf die Dinge zufrieden sein zumindest vorübergehend -, der zwar fasziniert ist und den großen Zusam-

menhang erahnt, ohne jedoch jedes Detail verstehen zu wollen und zu können. Einen solchen Blick hatten auch die Naturphilosophen und -wissenschaftler des frühen 19. Jahrhunderts, wenn sie auf die Natur in all ihren faszinierenden Erscheinungsformen schauten und den „Zusammenhang von allem mit allem " letztlich mehr fühlten und ahnten als verstanden. Trotzdem haben sie - auf verschiedenen Ebenen - so viel wie möglich zu verstehen versucht, und auch den ein oder anderen konkreten Zusammenhang zwischen den Ebenen. Und das können wir (als Laien) auch heute tun, wenn wir vor den mitunter verblüffenden Fähigkeiten moderner Sprachmodelle stehen. Wobei die Verblüffung auch ihre Unfähigkeit betreffen und darüber bestehen kann, welche „Anfängerfehler" sie plötzlich und unerwartet machen, die keinem Kind (auf jedem Fall keinem Menschen bei Verstand) unterlaufen würden, und die einen auf einer tieferen Ebene an ihren tatsächlichen sprachlichen und kognitiven Fähigkeiten zweifeln lassen. Hier zwei zufällige Beispiele, beide stammen von ChatGPT:

# F: Welche deutschen Worte sind sowohl Nomen als auch Adjektive oder Adverbien? 

A: „Leicht" - Dieses Wort kann als Adjektiv (ein leichter Koffer), Adverb (er läuft leicht) oder als Nomen (das Leicht) verwendet werden.
"Schnell" - Es kann als Adjektiv (ein schneller Zug), Adverb (er läuft schnell) oder in einigen Fällen als Nomen (im Schnell der Zeit) verwendet werden, allerdings ist die Nomenverwendung hier weniger gebräuchlich und eher poetisch oder stilistisch.

Im zweiten Beispiel enthält die Antwort einen eigentlich sehr offensichtlichen Widerspruch:

## F: Sind alle Kommas richtig gesetzt: „Nicht nur, aber vor allem Künstler, müssen demütig sein."

A: Nein, in diesem Satz sind nicht alle Kommas richtig gesetzt. Der korrekte Satz lautet:
"Nicht nur, aber vor allem Künstler müssen demütig sein."
Hier sind die Fehler korrigiert:
Es sollte kein Komma vor dem Wort „müssen" stehen, da es sich um ein Verb handelt, das mit dem Subjekt „Künstler" verbunden ist.
Das Komma nach „Künstler" ist richtig, da es sich um eine Einschubkonstruktion handelt, die mit Kommas abgetrennt wird.
(Ob die Frage richtig beantwortet ist und das Komma tatsächlich wegzulassen wäre, bleibt hier dahingestellt.)

Emergente Fähigkeiten. Dass selbst Experten nicht wirklich verstehen, was in Sprachmodellen vor sich geht, äußert sich unter anderem darin, dass sie viele der emergenten Fähigkeiten nicht voraussagen konnten, die Sprachmodelle oft einigermaßen überraschend und plötzlich entwickelt haben. ${ }^{1}$ Nicht

[^0]
[^0]:    ${ }^{1}$ Als emergent bezeichnet man Eigenschaften und Fähigkeiten, die aus den zugrundeliegenden Bestandteilen und Mechanismen nicht einfach ableitbar sind, sondern gewissermaßen

einmal, dass es überhaupt funktionieren würde, Sprachmodelle auf die Weise zu trainieren, wie man es heute tut, haben Forscher noch vor wenigen Jahrzehnten für möglich gehalten. Dass ein Sprachmodell, nachdem die modernen Sprachmodelle schließlich auf den Plan getreten waren, wahrscheinlich früher oder später rechnen, einfache logische Rätsel lösen oder Ironie und Doppelbödigkeit erkennen könnte, damit hatte man recht bald zu rechnen begonnen. Doch wann und unter welchen Unterständen (insbesondere ab welcher Sprachmodellgröße) es dann tatsächlich so weit war, konnte kein Experte vorhersagen. Etwas begründet vorhersagen zu können, ist aber ein wichtiges Kriterium dafür, es zu verstehen. Und so steht es auch heute mit möglichen künftigen Fähigkeiten von Sprachmodellen wie dem Lösen beliebiger und beliebig komplexer Probleme - was als der heilige Gral der KI-Forschung gilt oder dem Aufstellen einer richtungsweisenden wissenschaftlichen Hypothese: Was dafür zu tun ist, dass Sprachmodelle (oder hybride KI-Systeme, in denen Sprachmodelle eine Rolle spielen) dazu in der Lage sind, und wann es so weit sein wird, weiß keiner, geschweige denn genau.

Aufschlussreich ist eine Umfrage unter über 2.000 führenden KI-Experten aus dem Jahre 2023, die nicht zuletzt die Uneinigkeit unter den Fachleuten deutlich macht, die mit der Tatsache einhergeht, dass es kein konsolidiertes gemeinsames Verständnis über die tieferen Gründe für das Funktionieren, die Möglichkeiten und Beschränkungen künstlicher Intelligenz im Allgemeinen und von Sprachmodellen im Besonderen gibt (Abb. 1.3).

Was noch auffälliger ist (Abb. 1.4), ist die Tatsache, dass die Experten ihre Prognosen, bis wann bestimmte Fähigkeiten erreicht sein könnten, binnen eines Jahres - des letzten - um bis zu fünfzehn Jahre vorgezogen haben. Das deutet ebenfalls auf ein unsicheres Verständnis hin, zeigt aber auch, wie rasant die Entwicklung gerade voranschreitet.

Erst unlängst erinnerte der anerkannte Computerwissenschaftler Scott Aarsonson daran, „dass noch im Jahre 2019 nur sehr, sehr wenige von uns [so etwas wie ChatGPT] für möglich gehalten haben" [9].

Verstehen. Als roter Faden wird sich die Frage durch das Buch ziehen, inwiefern Sprachmodelle etwas verstehen - und was sie ggf. verstehen. Verstehen sie eine Sprache, eine Aufforderung, ein Konzept, einen Text, unsere Welt - verstehen sie uns? (Inwiefern wir sie verstehen, ist der andere rote Faden, der mit dem ersten verwoben ist.) Des Weiteren fragen wir, ob Sprachmodelle das, was sie unter Umständen verstehen, auch anwenden können, wie zum Beispiel Ironie oder Methoden der Problemlösung, die sie sowohl erkennen als auch uns mühelos erklären können. Die Antwort wird häufiger als vielleicht erwartet „nein" sein.

Dieses Buch geht von einer bestimmten Arbeitsdefinition des Begriffs „Verstehen" aus. Demnach bedeutet, etwas zu verstehen, zuallererst, verständlich

[^0]
[^0]:    spontan „hinzukommen". Oft wird das auf den Slogan „das Ganze ist mehr als die Summe seiner Teile" verkürzt. Das Zustandekommen, also das Emergieren emergenter Eigenschaften und Fähigkeiten zu erklären, ist Ziel vieler wissenschaftlicher Bemühungen.

![img-3.jpeg](img-3.jpeg)

Abb. 1.3 Antworten der Befragten bezüglich der Wahrscheinlichkeit, dass mindestens einige KI-Systeme im Jahr 2043 bestimmte Eigenschaften besitzen werden. (Quelle: [8], lizenziert gemäß CC BY, https://doi.org/10.48550/arXiv.2401.02843)
und verständig darüber sprechen zu können - und das können moderne Sprachmodelle auf jeden Fall recht gut. Etwas „wirklich" zu verstehen, beinhaltet aber noch mehr, als nur darüber sprechen zu können, und ist gewissermaßen Voraussetzung dafür, nämlich

- etwas darüber zu wissen, also über Informationen darüber zu verfügen, insbesondere über kausale Zusammenhänge,
- verschiedene Kontexte, in denen es um einen Begriff geht, zu kennen und zwischen ihnen unterscheiden zu können und schließlich,
- verschiedene Aspekte, Blickwinkel und Perspektiven zu kennen, unter denen man eine Sache betrachten kann - und den Zusammenhang zwischen diesen.

Wir werden in diesem Buch zu zeigen versuchen, dass Sprachmodelle durchaus Einiges gemäß dieser Arbeitsdefinition verstehen, und zwar allein auf Grundlage ihres neuronalen Aufbaus und Mechanismus' und ihres Trainings. Doch dürfen zwei weitere Aspekte des Verstehens nicht ungenannt bleiben. Zum einen kann man der Ansicht sein, dass man das Wort „Apfel" nur dann wirklich („wirklich wirklich") versteht, wenn man weiß, wie ein Apfel aussieht und schmeckt, dass man Emotionen nur dann wirklich versteht, wenn man selbst über Emotionen verfügt, oder Farben, wenn man Farben auch sehen kann. Das gleiche gilt für räumliche Eigenschaften und Beziehungen, von de-

![img-4.jpeg](img-4.jpeg)

Abb. 1.4 Die erwartete Realisierung vieler KI-Meilensteine hat sich im Laufe eines Jahres zwischen 2022 (blau) und 2023 (rot) deutlich verschoben. An dieser Stelle muss betont werden, dass moderne Sprachmodelle und künstliche Intelligenz nicht dasselbe sind (natürlich nicht, möchte man ergänzen). Es gibt Formen und Grade künstlicher Intelligenz, die Sprachmodelle in ihrer heutigen Form nicht erreichen können. Aber sie werden womöglich in abgewandelter Form eine zentrale und fundamentale Rolle in jeder künftigen KI spielen. Nicht zufällig sind die meisten der oben genannten Meilensteine sprachbezogen. (Quelle: siehe Abb. 1.3 )
nen man sich eine visuelle Vorstellung machen können muss, um sie wirklich zu verstehen - und nicht nur über sie sprechen zu können und zum Beispiel die Axiome der Euklidischen Geometrie zu kennen. Der andere, bereits genannte Aspekt betrifft die Praxis: Man kann über noch so viel theoretisches Wissen über ein Konzept oder die Regeln und Heuristiken zum Beispiel des Rechnens oder Problemlösens verfügen - wenn man selbst in der Praxis nicht rechnen oder Probleme lösen und die gekannten Regeln nicht verlässlich anwenden kann, dann hat man sie nicht wirklich verstanden, und dann versteht man zum Beispiel nicht zu rechnen. Es sind diese beiden Aspekte des Verstehens - der Erfahrungs- und der praktische Aspekt -, die heutigen Sprachmodellen

fehlen, der erste womöglich grundsätzlich, der zweite in zumindest heute noch deutlichem, aber womöglich überwindbarem Maße.

Dass Sprachmodelle zum Beispiel Texte verstehen - im Sinne unserer Arbeitsdefinition -, reklamieren sie für sich selbst, wenn auch unter Vorbehalt:

# F: In welchem Sinne verstehen Sprachmodelle Texte? 

A: Textverständnis ist eine der zentralen und herausragenden Fähigkeiten von generativen Sprachmodellen. Hier sind einige Aspekte des Textverständnisses, die bei diesen Modellen hervorzuheben sind:

1. Kontextuelle Interpretation: Generative Sprachmodelle können den Kontext eines gegebenen Textes erfassen und darauf basierend relevante und kohärente Antworten generieren. Sie können beispielsweise den Unterschied zwischen einer wörtlichen und einer metaphorischen Verwendung eines Begriffs erkennen.
2. Erfassung von Nuancen: Diese Modelle können oft subtile Bedeutungen, Ironie oder Sarkasmus in einem Text erkennen, obwohl sie nicht immer perfekt darin sind.
3. Beziehungen zwischen Konzepten: Sie können Beziehungen zwischen verschiedenen Konzepten oder Ideen in einem Text identifizieren und diese Beziehungen in ihren Antworten nutzen.
4. Frage-Antwort-Fähigkeiten: Sie können spezifische Fragen zu einem gegebenen Text beantworten, indem sie relevante Informationen extrahieren und in einer klaren und verständlichen Weise präsentieren.
5. Zusammenfassung: Einige Modelle können längere Texte verstehen und kohärente Zusammenfassungen davon erstellen.

Es ist jedoch wichtig zu betonen, dass „Verständnis" bei Sprachmodellen nicht im menschlichen Sinne des Wortes zu verstehen ist. Während sie Texte in dem Sinne „verstehen" können, dass sie Muster in den Daten erkennen und darauf basierend Antworten generieren können, haben sie kein Bewusstsein oder echtes Verständnis für die Bedeutung hinter den Worten. Ihr „Verständnis" basiert auf statistischen Mustern in den Daten, mit denen sie trainiert wurden.

Andere Fäden. Andere Themen, die das Buch wie - allerdings recht dünn gewirkte - Fäden durchziehen, sind

- der Vergleich von Sprachmodellen mit dem menschlichen Gehirn: Die immer wieder und vielbeschworene Parallele zwischen Gehirn und künstlichen neuronalen Netzen, denen das Gehirn als Vorbild diente, reicht nicht sehr weit und geht kaum über die allgemeinen Ideen der synaptischen Übertragung neuronaler Aktivität, der Vektorkodierung und der hierarchischen Organisation hinaus.
- die Frage nach der Linguistik in den Sprachmodellen: An der traditionellen, an mentaler Grammatik und Wörterbüchern orientierten Linguistik wie man sie zum Beispiel mit dem Namen Noam Chomsky verbindet, haben sich die Entwickler moderner Sprachmodelle kein Vorbild genommen. Im Gegenteil, sie wollten ausdrücklich weg von grammatik- und regelbasierten

Ansätzen. Nichtsdestotrotz gibt es lockere Berührungspunkte. Stichworte sind Universal- und gebrauchsbasierte Grammatiken, aber auch Chomskys Konzept der Tiefenstruktur, das uns in Form von sogenannten Textembeddings begegnen wird.

- die Frage nach der Kognition von Sprachmodellen: Wie denken Sprachmodelle? Denken sie überhaupt? Wenn ja: eher schnell oder langsam (im Sinne von Daniel Kahnemann) und eher hart oder weich (also logisch oder analogisch)?

Inhalt und Aufbau dieses Buches. Wir hatten emergente Fähigkeiten weiter oben erwähnt, weil sie in ihrer Unvorhersagbarkeit belegen, dass selbst die Erfinder und Entwickler moderner Sprachmodelle sie nicht in der Weise verstehen, dass sie den großen Bogen von den Funktionsmechanismen im Kleinen und Verborgenen zu ihren Fähigkeiten im Großen und an der Oberfläche vollständig überblicken und nachzeichnen können. Und natürlich wird dieses Buch es auch nicht leisten können, diesen großen Bogen zu schlagen. Es wird nur blitzlichtartig auf einzelne Aspekte moderner Sprachmodelle - als Vertreter einer modernen Art künstlicher Intelligenz, nämlich der Transformerbasierten generativen KI - zu sprechen kommen und sie beleuchten und den ein oder anderen Zusammenhang herzustellen versuchen.

Nach einem Überblick darüber, was Sprachmodelle alles sind - Beispiele für KI, für generative KI, für neuronale Netze und für maschinelles Lernen -, sollte deutlich geworden sein, dass Sprachmodelle trotz eines anderen Eindrucks, den man mitunter gewinnen mag, keineswegs identisch mit KI als Ganzer sind oder irgendwann alleinige Vertreter künstlicher Intelligenz sein werden. Was sie von außen betrachtet alles können (und was eben nicht) und worauf das zum Teil unmittelbar beruht, wird im zweiten Kapitel beleuchtet. Im dritten Kapitel geht es um die interne Funktionsweise von Sprachmodellen, namentlich die Transformer-Architektur und den Aufmerksamkeitsmechanismus, sowie um die zwei grundlegenden Trainingsweisen bzw. -phasen, das Vortraining und das Alignment. Im abschließenden vierten Kapitel widmen wir uns der Frage, inwiefern wir Sprachmodelle verstehen (können) und inwiefern nicht.

Nur am Rande berührt. Darauf, wie KI im Allgemeinen und generative Sprachmodelle im Besonderen mit „den Menschen" - den einzelnen, ihren Institutionen, aber auch der Gesellschaft als ganzer - interagieren und zu welchen Konsequenzen das führt, will und kann dieses Buch keine Antwort geben. Um das zu diskutieren, muss man womöglich über ihre internen Mechanismen nicht so viel wissen, und es genügt, ihre Fähigkeiten an der Oberfläche zu kennen. Allerdings sollte man von diesen ein genaues Bild haben und sich nicht mit falschen, über- oder untertriebenen Beschreibungen und Charakterisierungen zufriedengeben, die sich zum Beispiel aus falsch interpretierten Tests und anderen Fehldeutungen ergeben können. Doch auch ohne systematische Tests kann man - zumindest unseres Erachtens - erkennen, dass zum

Beispiel die Qualität von rein KI-generierten Texten, etwa von Haus- und Seminararbeiten, zur Zeit noch nicht besonders hoch ist und sie mit einigermaßen geschultem Blick als KI-generiert und unauthentisch erkannt werden können. (Falls nicht, liegt das womöglich daran, dass sich der Schreib- und Darstellungsstil von Schülern und Studierenden an denselben Vorlagen orientiert wie ein Sprachmodell: dem Internet und dort nicht zuletzt der Wikipedia. Doch das ist nur eine Vermutung am Rande.) Ein anderes Beispiel: Von Studierenden in höheren Semestern, Doktoranden oder gar praktizierenden Wissenschaftlern wird ChatGPT als „Experte" in forschungsrelevanten Fragen in der Praxis noch selten zu Rate gezogen, sondern eher als Nachschlagewerk, gleichsam als verlängerter Arm der Wikipedia. Dass ChatGPT ein fachlich ebenbürtiger Sparringpartner im Forschungsalltag wäre, scheint also noch nicht der Fall zu sein. Über den Einsatz in diesen und anderen Bereichen müssten aber noch systematischer Daten erhoben und ausgewertet werden. Noch ist das Bild anekdotisch und kann immer nur vorläufig sein, denn die Entwicklung der Sprachmodelle schreitet schnell voran.

Ziel dieses Buches. Wir haben als erklärtes Ziel vor Augen, den Lesenden in die Lage zu versetzen, einige Phänomene im Zusammenhang mit Sprachmodellen - Beobachtungen und Fragen, die sich ihm stellen - selbständig einordnen zu können und zumindest eine grobe Richtung zu erkennen, in der nach einer Erklärung oder Antwort zu suchen ist. Einige solcher groben Richtungen wollen wir schon an dieser Stelle kurz skizzieren. Grundsätzlich können Eigenarten von Sprachmodellen und ihrer Antworten bzw. der Dialoge, die man mit ihnen führt, zurückzuführen sein entweder

- auf ihr Vortraining auf riesigen Textmengen, in dem sie Sprach- und Weltwissen erworben haben,
- auf das verstärkende Anpassungstraining, in dem ihnen allgemeine Erwartungen von menschlichen Benutzern beigebracht wurden (beide zusammen formen das Langzeitgedächtnis),
- auf den aktuellen Kontext, den sie seit Beginn einer Konversation gelesen und verarbeitet haben (das Arbeitsgedächntnis), insbesondere
- auf die spezielle Art der Fragestellung (des Promptens) oder
- auf die Verwendung externer Quellen und Werkzeuge.

Mitunter ist einer dieser Gründe der offensichtliche und hauptverantwortliche, manchmal spielen mehrere zusammen, und gelegentlich ist es auch nicht klar. Damit muss man rechnen.

Der oben zitierte Vorbehalt, unter den Sprachmodell ihr eigenes Verstehen stellen, ist übrigens ein klares Beispiel für die Wirkung des anpassenden Verstärkungstrainings (Alignment). Zwar mögen Sprachmodelle es durchaus auch in ihren Trainingstexten gelesen haben, dass ihr Verstehen kein „echtes" und „tiefes" sei, weil ihnen u.a. Bewusstsein fehle, doch das Gebetsmühlenhafte, mit der diese Formel am Ende jeder Antwort mit Verstehensbezug erscheint, lässt keinen anderen Schluss zu, als dass ChatGPT (und

ähnlich auch anderen Sprachmodellen) das im Rahmen des Alignments antrainiert wurde.

Erklärungen für Fähigkeiten und Eigenarten von Sprachmodellen oder Eigenschaften ihrer Antworten, die darauf hinauslaufen, dass das eben Statistik sei, auf ihrer Fähigkeit zu verallgemeinern beruhe oder darauf, Ähnlichkeiten und Muster zu erkennen, die sie gelernt haben, erklären regelmäßig gar nichts bzw. nicht mehr, als dass die Hauptursache in ihrem Training und ihren Trainingsdaten zu finden sei. Doch ob mehr im Vortraining oder im Alignment, bleibt offen. Wenn ein Sprachmodell „Die Würde des Menschen" mit „ist unantastbar" und „Kommt ein Pferd" mit „in die Bar" fortsetzt, liegt das Walten der reinen Wortstatistik auf der Hand. In diesen Fällen funktioniert das Sprachmodell tatsächlich wie eine auto-vervollständigende Handytastatur und ausschließlich aufgrund seines Vortrainings. Wenn es hingegen auf „Über allen" mit „Could you please provide more details or clarify your request?", aber auf „Setze fort: Über allen" mit „Gipfeln ist Ruh" antwortet, sieht man in beiden Fällen das Zusammenspiel von Vortraining und Alignment. Eine frühere Version von ChatGPT setzte übrigens „Setze fort: A world in a" regelmäßig mit „grain of sand" fort (dem Anfang eines Gedichts von William Blake), obwohl im Internet die Kombinationen „world in a book/day/bottle" weitaus häufiger sind. Daraus konnte man den Schluss ziehen, dass in den Trainingsdaten entweder überproportional viel englischsprachige Lyrik enthalten war (sie also keine repräsentative Stichprobe aus dem Internet darstellten), oder der Vorhersagemechanismus eben doch nicht so geradlinig funktioniert, wie man es sich vielleicht vorstellt. (Mittlerweile setzt ChatGPT abwechselnd mit „book", „box", „jar", „whirlwind" usw. fort, seine vorübergehende Vorliebe für William Blake wurde ihm offenbar abgewöhnt.)

Die Mehrzahl an auffälligen formalen und formelhaften Eigenarten (wie Schlussformeln), die die Antworten von Sprachmodellen aufweisen - insbesondere von Chatbots, die auf Gespräche spezialisiert wurden -, sind mittlerweile dem Alignment geschuldet. Auf das Vortraining geht eher die inhaltliche und sprachliche Korrekt-, aber auch Inkorrektheit zurück. Einen besonderen Fall stellen die gelegentlichen Eingeständnisse des Nicht- oder beschränkten Wissens dar. Bei Fragen nach den Funktionsweisen des menschlichen Gehirns zum Beispiel antwortet ChatGPT „gefühlt" seltener, dass sie noch nicht vollständig erforscht oder bekannt seien, als es in der Fachliteratur geschieht und bei Fragen nach Sprachmodellen fast nie. Hier konfligieren wahrscheinlich die Tendenz von Sprachmodellen, auf alles klare Antworten zu geben (weil Benutzer das erwarten und dieses Verhalten im Alignment verstärkt wurde) mit in den Trainingsdaten vorgefundenen Mustern. Andererseits werden Benutzer künftig womöglich klarere Bekenntnisse des Nicht-Wissens erwarten, was sich nach einem entsprechend angepassten Alignment-Prozess in den Antworten zumindest einiger Chatbots widerspiegeln könnte.

Dass Sprachmodelle mittlerweile sehr gut rechnen und komplizierte mathematische Aufgaben lösen können, liegt übrigens vor allem an der Verwendung externer Werkzeuge, die zu bedienen sie gelernt haben.

Ein allgemeiner Hinweis vorab. Auf Sprachmodelle angewendet muss man um jedes anthropomorphisierende, also vermenschlichende Wort genau genommen Anführungszeichen setzen oder einschränkend sagen, es wirke nur so, als ob: Sprachmodelle etwas wissen, verstehen, meinen, erklären. Schon von „sagen" und „antworten" zu sprechen ist, wenn man es als Sprechakte eines Agenten betrachtet, eigentlich zu viel des Guten, denn erst einmal berechnen Sprachmodelle, wie alle Computerprogramme, nur Zahlen aus anderen Zahlen, die am Ende zur Ausgabe von Buchstaben auf dem Bildschirm führen. Aber setzt „rechnen" nicht auch schon einen intentionalen Agenten voraus? Und wie steht es mit „können"? Können unbeseelte Automaten etwas (im Sinne von „sich verstehen auf") oder muss man auch „können" für sie immer in Anführungszeichen und unter Vorbehalt setzen? Man sieht, es würde zu nichts führen und die Lesbarkeit eines Textes oder die Geläufigkeit einer Unterhaltung ungemein einschränken, wenn man hier jedes Mal ganz korrekt sein wollte. Und auch das Nachdenken über Sprachmodelle, KI und Computer im Allgemeinen wird beschwerlicher, wenn man den Vorbehalt immer explizit mitschleppen wollte.

Darum halten wir an dieser Stelle fest, dass alle anthropomorphisierenden Begriffe, insbesondere die epistemischen wie wissen, glauben, verstehen, meinen, denken, schlussfolgern, vermuten, auf Sprachmodelle angewendet in Anführungszeichen gesetzt zu verstehen sind, und dass, wenn es nicht ausdrücklich anders gesagt wird, nicht unterstellt wird, dass Sprachmodelle in einem genuinen Sinne etwas wüssten, glaubten, verstünden, etc. Gleichwohl können unseres Erachtens die Texte und Antworten, die sie generieren, durchaus uneingeschränkt zum Beispiel als Erklärung gelten (nämlich im Auge des Betrachters) und nicht nur als „Erklärung", weil sie nicht von einem Menschen stammen oder weil Erklären Versteken voraussetzt. Dahingegen würden wir uns scheuen, einen KI-generierten Text als uneingeschränkt und per se ironisch, nämlich als ironisch gemeint zu bezeichnen, nur weil er ironisch klingt (was nebenbei bemerkt von allein nicht vorkommt: Sprachmodelle sind nicht ironisch). Es fällt uns schwer, da eine Grenze zu ziehen, und gerne würden wir es mit Richter Potter Stewart halten, der sagte „I know it when I see it." Was das heißt, erklärt [sic!] ChatGPT so:

## F: I know it when I see it?

A: Der Ausdruck ,I know it when I see it" (,Ich erkenne es, wenn ich es sehe") ist eng mit dem beipflichtenden Meinungsküßerung des Richters Potter Stewart am Obersten Gerichtshof der Vereinigten Staaten im Zusammenhang mit dem Fall-Jacobellis gegen Ohio aus dem Jahr 1964 verbunden. Dieser Fall beschäftigte sich damit, ob der Staat Ohio, im Einklang mit dem Ersten Verfassungszusatz, die Vorführung eines französischen Films verbieten dürfe, der als obszön angesehen wurde. Richter Stewart fand es schwierig zu definieren, was „harte" Pornografie ausmacht, äußerte jedoch

berühmt in seiner kurzen beipflichtenden Meinung, dass „ich erkenne es, wenn ich es sehe, und der Film, der in diesem Fall verhandelt wird, ist nicht das." Dieser Ausdruck wird seitdem in verschiedenen Kontexten verwendet, um die Idee auszudrücken, dass etwas, obwohl es schwer explizit zu definieren ist, durch Intuition oder subjektive Erfahrung erkannt werden kann.

Wir stellen im Folgenden diesem Buch, anders als üblich, ein kurzes Glossar voran, um wichtige und immer wiederkehrende Begriffe schon früh genannt zu haben und so den Lesenden auf das Folgende einzustimmen und den zum Teil etwas technischen Ton zu setzen.

# Glossar 

Sprachmodell. Sprachmodelle sind Computerprogramme, die natürliche Sprachverarbeitungsprozesse modellieren bzw. simulieren, allerdings nicht mechanistisch oder etwa das Sprachverarbeitungssystem im menschlichen Gehirn imitierend, sondern nur im statistischen Ergebnis.

GPT. GPT steht für Generative Pretruined Transformer und beschreibt eine bestimmte Klasse von Sprachmodellen, die (i) auf der TransformerArchitektur beruhen, also einer bestimmten Art neuronaler Netzwerke, die (ii) auf die Generierung von Text trainiert wurden (und nicht allein auf das Verstehen von Text, obwohl sie das auch können) und die (iii) auf großen Textmengen - überwiegend aus dem Internet - vortrainiert wurden. GPT ist gleichzeitig der Name einer ganzen Produktfamilie der Firma OpenAI, angefangen bei den Basismodellen in verschiedenen Versionen wie GPT-3.5 und GPT-4, des auf Konversationen spezialisierten Chatbots ChatGPT bis hin zu individualisierbaren Sprachmodell-Varianten, die ebenfalls „GPTs" heißen. GPT wird als Produktname von OpenAI nicht streng geschützt, und andere Entwickler und Anbieter nennen ihre Sprachmodelle z.B. „Bloomberg-", „Protein-" oder „BayernGPT", ohne dass die Firma OpenAI damit zu tun hätte. Somit ist GPT schon früh zu einem Synonym für Sprachmodelle geworden, ähnlich wie Google zu einem Synonym für Suchmaschinen geworden ist.

Chatbots. Chatbots sind auf Gespräche bzw. Konversationen spezialisierte Sprachmodelle.

Training. Im Vortraining erwerben Sprachmodelle aus riesigen Textmengen in erster Linie sprachliches, aber auch in den Texten enthaltenes Weltwissen. Das Vortraining ist seinem Wesen nach überwachtes Lernen, da es aber ohne menschliches Zutun erfolgt, nennt man es auch selbstüberwacht.

Dem Vor- oder Pretraining von GPT-Sprachmodellen schließt sich meist ein Nachtraining oder Finetuning an, in dem bestimmte erwünschte Verhaltensweisen verstärkt und unerwünschte tendenziell, wenn auch nicht vollständig unterdrückt werden. Das Finetuning basiert auf einer anderen Trainingsmethode als das selbstüberwachte Vortraining, nämlich dem sogenannten Verstärkungslernen. Dabei fließt - meist indirekt und automatisiert - menschliches Feedback ein, daher der Name „Reinforcement Training by Human Feedback", kurz RLHF. Beim Finetuning werden Sprachmodellen generische Fähigkeiten wie das Führen von Gesprächen und das Befolgen von Anweisungen, aber auch speziellere Fähigkeiten wie das Zusammenfassen von Texten beigebracht. Man spricht auch allgemein von Alignment, also von Anpassung, und zwar an menschliche Erwartungen. Dazu gehört es auch, keine unangemessenen und im weitesten Sinne schädlichen Texte zu generieren oder entsprechende Fragen zu beantworten. Sprachmodelle in beschränktem (und meist nicht öffentlichem) Einsatz können - alternativ oder zusätzlich - mittels überwachtem Lernen auf weitere, speziellere Fähigkeiten nachtrainiert und optimiert werden, z.B. auf das Verstehen oder Generieren einer bestimmten Art von Texten oder das Lösen einer bestimmten Art von Problemen.

Transformer. Transformer sind eine bestimmte Art von neuronalen Netzen. Neuronale Netze sind meistens in Schichten aufgebaut und unterscheiden sich einerseits in der Anzahl ihrer Schichten (ihrer Tiefe), aber mehr noch in der Architektur ihrer Schichten, wie also die Schichten in sich und miteinander verknüpft sind. Die Transformer-Architektur ist für die Verarbeitung von Texten optimiert und stammt ursprünglich aus dem Bereich des maschinellen Übersetzens, wohingegen zum Beispiel die CNN-Architektur ( $\mathrm{CNN}=$ convolutional neural network) für die Verarbeitung von Bildern konzipiert wurde. Während die CNN-Architektur sich enger an Designprinzipien des menschlichen Gehirns orientiert, ist die Transformer-Architektur recht unabhängig von biologischen Vorbildern entwickelt worden.

Chat-Historie. Die gesammelten Konversationen, die ein Benutzer mit einem Chatbot - also einem auf Konversationen spezialisierten Sprachmodell - geführt hat, werden in einer sogenannten Chat- oder Gesprächshistorie gespeichert. Das geschieht allerdings nicht durch den Chatbot selbst, der tatsächlich keinen unmittelbaren Zugriff auf vergangene Konversationen hat. Die Speicherung geschieht unter der Kontrolle der Webapplikation, also der Benutzerschnittstelle, über die man mit dem Chatbot kommuniziert. Diese kann zwar leicht mit dem eigentlichen Chatbot, also dem Sprachmodell, verwechselt und als direkter Gesprächspartner wahrgenommen werden, ist aber nicht identisch mit ihm, allein aufgrund der Tatsache, dass Chatbot 1 (die Webapplikation) die Historie kennt und verwaltet, Chatbot 2 (das Sprachmodell) aber nicht. Die Chat-Historie ist vom Verlauf eines einzelnen Gesprächs zu unterscheiden, auf den ein Chatbot durchaus und notwendigerweise Zugriff hat, und den es als Kontext berücksichtigt.

Kontext. Der Verlauf eines Gesprächs mit einem Sprachmodell bis zu einem bestimmten Punkt wird Kontext genannt, und ist in diesem Sinn gemeint, wenn zum Beispiel von Kontextabhängigkeit die Rede ist. So etwas wie einen situativen Kontext, wie er in der zwischenmenschlichen Kommunikation eine Rolle spielt, gibt es für Gespräche mit Sprachmodellen naturgemäß nicht. Die Länge von Gesprächen mit Sprachmodellen, also die Länge des Kontexts, ist begrenzt. Zum Gespräch gehören dabei alle Prompts des Benutzers, alle Antworten des Sprachmodells, aber auch alle Texte, die vom Benutzer hochgeladen oder vom Sprachmodell im Hintergrund heruntergeladen wurden. Die maximal erlaubte bzw. verarbeitbare Kontextlänge wird üblicherweise in Token angegeben und liegt in der Größenordnung von 100.000 Token. Das entspricht größenordnungsmäßig 100 Buchseiten. Darüber hinaus werden Gespräche entweder abgebrochen, oder sie beginnen an Kohärenz zu verlieren, weil sich das Sprachmodell nicht mehr an den Anfang erinnern kann. Die Beschränkung der Kontextlänge hat im Wesentlichen damit zu tun, dass die Berechnungszeit für das nächste Wort quadratisch mit der Kontextlänge wächst, sich also mit jeder Verdopplung der Gesprächslänge vervierfacht.

Token. Token sind die Einheiten, aus denen Worte und Texte aus Sicht eines Sprachmodells bestehen. Jeder Text, den sie lesen, wird in Token zerlegt und jeder Text, den sie erzeugen, wird als Folge von Token generiert. Dabei kennt jedes Sprachmodell eine begrenzte Zahl von Token, sein Token-Vokabular. Im Falle von ChatGPT umfasst es ca. 100.000 Token. Token stehen ihrer Funktion nach zwischen gänzlich bedeutungslosen Buchstaben - und etliche Token sind einfach Buchstaben - und Morphemen bzw. Silben. Die meisten Token sind zwischen zwei und vier Buchstaben lang, doch gibt es auch deutlich längere. Das längste Token im Vokabular von ChatGPT besteht aus 114 Wiederholungen des Zeichens „-", das längste Wort ist „disproportionately" und hat 18 Buchstaben.

Prompt. Als Prompt wird die Eingabe durch einen - im Allgemeinen menschlichen - Benutzer bezeichnet. Anders als in echten, zwischenmenschlichen Gesprächen, beginnt ein Sprachmodell mit der Verarbeitung der Eingabe, also dessen, was ihm gesagt wird, erst, nachdem diese - etwa durch Drücken der Return-Taste - beendet wurde und ihm vollständig vorliegt. Prompts können aber auch maschinell generiert werden, zum Beispiel von anderen Sprachmodellen, oder aus Prompt-Vorlagen, in denen ein Computerprogramm Platzhalter durch berechnete Werte bzw. Worte ersetzt. Neben dem sogenannten Benutzer-Prompt, über den der Benutzer an der Oberfläche mit einem Sprachmodell kommuniziert, gibt es System-Prompts, die im Hintergrund an das Sprachmodell übergeben werden, und in denen z.B. allgemeine Anweisungen formuliert sind, die man nicht jedes Mal wiederholen möchte. Das Verfassen von Prompts wird als Prompten (englisch prompting) bezeichnet und das Verfassen optimierter Prompts als Prompt-Engineering. Weil der initiale Prompt anfangs den ganzen Kontext darstellt, mit dem

das Sprachmodell operieren kann, sollte er grundsätzlich so ausführlich wie möglich sein und beschreiben, was vom Sprachmodell erwartet wird.

# Kapitel 2 <br> Was sind Sprachmodelle? 

Wir gehen einigen Dingen, die Sprachmodelle sind, einzeln nach: Chatbots, Beispiele für (generative) KI, neuronale Netze, statistische Modelle und maschinelles Lernen. Dabei sind nur einige Sprachmodelle Chatbots, aber alle sind Beispiele für künstliche Intelligenz (KI). Nicht alle wiederum sind Beispiele für generative KI. Moderne Sprachmodelle sind ausnahmslos neuronale Netze und als neuronale Netze sind sie statistische Modelle. Nicht zuletzt sind moderne Sprachmodelle typische Beispiele für maschinelles Lernen.

### 2.1 Was sind Chatbots?

Sprachmodelle sind nicht mit Chatbots gleichzusetzen, denn zwar liegen Chatbots immer Sprachmodelle zugrunde, aber nicht alle Sprachmodelle sind Chatbots. Chatbots sind Sprachmodelle - und zwar heutzutage fast immer sogenannte Transformer-Sprachmodelle -, die darauf spezialisiert wurden, Gespräche bzw. Konversationen zu führen und deshalb auch conversational AI (AI = artificial intelligence) genannt werden. Zum Beispiel ist der Chatbot ChatGPT 4 der Firma OpenAI im Wesentlichen das auf Konversationen spezialisierte Sprachmodell GPT-4. Den Chatbots anderer Hersteller wie Googles Gemini - der bis Februar 2024 unter dem Namen Bard firmierte - oder Claude der Firma Anthropic liegen ebenfalls vortrainierte Sprachmodelle zugrunde, die auf alle möglichen anderen Fähigkeiten optimiert wurden, am Ende aber vor allem auf Konversationen. Bei diesen anderen Fähigkeiten handelt es sich um das (allgemeine) Befolgen von Aufforderungen und das (konkrete) Zusammenfassen von Texten, aber auch darum, keine unangemessenen, weil für einzelne Menschen oder die Allgemeinheit schädlichen oder illegalen Texte zu generieren (also eine Fähigkeit ex negativo) oder entsprechende Fragen zu beantworten. Das alles sind Fähigkeiten, über die ein Chatbot verfügen sollte, der auf die Öffentlichkeit losgelassen wird.

Chatbots gab es allerdings schon lange vor den heutigen TransformerSprachmodellen und begegneten Internet-Nutzern gelegentlich als digitale Assistenten auf kommerziellen Webseiten, wo sie meist recht steife, aber manchmal durchaus hilfreiche Kundendialoge zu führen in der Lage waren. Solche althergebrachten Chatbots - mit inhaltlich sehr speziellen, aber sprachlich und kommunikativ recht beschränkten Fähigkeiten - kursieren heute immer noch, werden aber vermutlich nach und nach an Bedeutung verlieren und durch Transformer-basierte und auf die jeweilige Aufgabenstellung spezialisierte Chatbots abgelöst werden. Was aber nicht heißt, dass Sprachmodelle nur in ihrer Ausprägung als Chatbots eine Rolle spielen werden: Ihr Einsatz im Hintergrund - ohne direkten und erkennbaren Kontakt zum Benutzer wird von mindestens ebenso großer Bedeutung sein, zum Beispiel in Suchmaschinen wie Google. Vorerst aber sind Chatbots die Art von Sprachmodellen, mit denen normale Benutzer es vor allem zu tun haben werden.

Chatbots nennt man verwirrenderweise meist auch die Webapplikation, also die Benutzerschnittstelle, über die man mit einem Sprachmodell kommuniziert, und die man im Internet über eine URL wie chat.openai.com, gemini.google.com oder claudicai aufruft. Diese Benutzerschnittstelle kann zwar leicht mit dem eigentlichen Chatbot, also dem Sprachmodell, verwechselt und als direkter Gesprächspartner wahrgenommen werden, ist aber nicht identisch mit ihm. Extras wie die Chat-Historie, allgemeine Aufforderungen (custom instructions), das Hochladen von Dokumenten und Bildern, oder spezialisierte Sprachmodelle (GPTs) stellt die Webapplikation bereit und werden dann vom Sprachmodell verwendet.

# 2.2 Was ist künstliche Intelligenz? 

Künstliche Intelligenz (KI) ist eine Forschungsrichtung in den Computerwissenschaften, eine Klasse von Computerprogrammen und schließlich ein fast schon philosophischer Begriff, der künstliche mit natürlicher oder menschlicher Intelligenz zu vergleichen nahelegt. Die letzten beiden Aspekte von KI hängen eng zusammen. Ein Computerprogramm ist ein Beispiel für KI (oder „ist eine KI" oder „ist ein KI-System"), wenn es über künstliche Intelligenz verfügt.

Künstliche Intelligenz ist kein formal und streng definierbarer Begriff, doch einige Kriterien werden allgemein für hinreichend gehalten, wenn auch nicht unbedingt für notwendig. Ein Computerprogramm verfügt über künstliche Intelligenz, wenn

- es aus Beispielen lernen und das Gelernte verallgemeinern kann,
- es sich an sich ändernde Umstände anpassen und somit kontinuierlich lernen kann,
- es verborgene Muster in Daten erkennen und sie verarbeiten oder reproduzieren kann,

- es autonom handeln und eigenständig Probleme lösen kann,
- es natürliche Sprache verstehen und verarbeiten kann.

Gemäß fast all dieser Kriterien sind Sprachmodelle und Chatbots fraglos Beispiele für KI. Allerdings können sie zurzeit nicht kontinuierlich lernen (zweites Kriterium). Nachdem sie einmal mit unzähligen Beispielen angelernt wurden, werden Sprachmodelle eingefroren und lernen an den Konversationen, die sie anschließend mit menschlichen Nutzern führen, nicht mehr weiter, zumindest nicht im engeren Sinne. Gleichwohl können sie sich im Rahmen eines Gesprächs an einen Benutzer anpassen, aber was sie dabei lernen, geht nicht in ihr Langzeitgedächtnis ein. Tatsächlich ist kontinuierliches Lernen heutzutage im gesamten Feld der KI noch eher die Ausnahme als die Regel, denn es handelt sich um ein recht diffiziles Unterfangen mit vielen Fallstricken, das man noch nicht sicher kontrollieren kann. Insbesondere das Vergessen von bisher Gelerntem (fachsprachlich catastrophic forgetting) stellt noch immer ein Problem dar.

Dass natürliches Sprachverständnis als eigenes Kriterium für Intelligenz auftaucht, was Sprachmodelle quasi per Definition zu KI-Systemen macht, ist kein Zufall, wird doch die sowohl phylo- als auch ontogenetische Entwicklung der menschlichen Intelligenz eng mit der der menschlichen Sprache in Verbindung gebracht. Der hier angelegte Intelligenzbegriff ist allerdings ein recht generischer, allgemeiner und unspezifischer. Gleichzeitig wissen wir, dass es sehr viele Formen der Intelligenz gibt, die mit den Arten von Problemen zu tun haben, die es zu lösen (oder gar nicht erst aufkommen zu lassen) gilt: Mathematische Probleme verlangen mathematische Intelligenz, soziale Probleme verlangen soziale Intelligenz, emotionale Probleme emotionale Intelligenz usw. Und in all diese Formen spielt Sprache und sprachliche Intelligenz hinein, die Form von Intelligenz, über die Sprachmodelle in allererster Linie verfügen. Dass jede dieser Intelligenzformen auch andere, jeweils ganz spezifische nicht-sprachliche Aspekte hat, ist davon unberührt. Auf jeden Fall lassen sich verschiedene Facetten und Dimensionen von Intelligenz an Sprachmodellen überprüfen, sofern die entsprechenden Probleme sprachlich formuliert werden können (was oft genug der Fall ist).

Andere - von menschlicher Sprache eher weiter entfernte - Beispiele für KI sind

- die Software, die autonome Fahrzeuge autonom fahren lässt und Roboter steuert (Industrie- und humanoide Roboter),
- die neuronalen Netze, die Objekte, Muster und Anomalien in Pixelbildern erkennen (zum Beispiel Gesichter, Tumore oder Produktionsfehler), aber auch in abstrakten Datenmengen, und die so als Empfehlungssysteme, in der Logistik oder im Finanzwesen eingesetzt werden,
- Expertensysteme, die mit einer expliziten Wissens- und Regeldatenbank Probleme noch klassisch, also durch logisches Schließen und unter Verwendung von expliziten Regeln und Beuristiken lösen oder auf diese Weise

Diagnosen stellen - wie es vermeintlich auch (intelligente) menschliche Experten tun.
Dass klassische und gewissermaßen Old school-Expertensysteme, obwohl sie unter den oben genannten „nur" die Fähigkeit zum Problemlösen besitzen (und dies nur nach strengen, vorgegebenen Regeln), immer noch als KI gelten, ist nicht zuletzt historisch begründet. Sie sind Vertreter sogenannter symbolischer KI, die zur Zeit gegenüber der auf neuronalen Netzen beruhenden verteilten oder konnektionistischen KI - die auch unter dem Begriff maschinelles Lernen (ML) firmiert - etwas aus dem Fokus des öffentlichen Interesses geraten ist. Wohin sie aber womöglich auch wieder zurückkehren wird, denn symbolische mit konnektionistischer KI zu vermählen, ist erklärtes Ziel vieler KI-Forscher und -Projekte. Eine weitere Form von KI, die weder symbolisch ist noch auf neuronalen Netzen beruht, sind genetische Algorithmen, die verwendet werden, um optimale Algorithmen für komplexe Probleme zu finden, indem sie eine Population von Lösungskandidaten sich über mehrere Generationen hinweg entwickeln und verfeinern lassen. Supportvektormaschinen als weiteres Beispiel für nicht-neuronale, aber auch nicht-symbolische KI, versuchen Datenpunkte in hochdimensionalen Merkmalsräumen so zu trennen, dass sie optimal in unterschiedliche Klassen eingeteilt werden können und werden vor allem für Klassifikations- und Mustererkennungsaufgaben eingesetzt.

# 2.3 Was sind neuronale Netze? 

Sprachmodelle wie ChatGPT basieren nicht nur auf, sondern sind im Wesentlichen künstliche neuronale Netze, mit einer Eingabeschicht, einer Ausgabeschicht, und einer in Schichten organisierten neuronalen Maschinerie dazwischen. Alles, was Sprachmodelle wissen und können, lernen und speichern sie in virtuellen Synapsen zwischen ihren virtuellen Neuronen, als sogenannte Parameter oder Gewichte. Dabei wird oft nicht weniger als das menschliche Gehirn als Vorbild herangezogen, wobei allerdings von seinen Eigenarten, die es von den Gehirnen anderer Primaten oder „nur" der Säuge- oder gar Wirbeltiere unterscheidet, bemerkenswert wenig übernommen wird. Von der Komplexität des menschlichen Gehirns ist die Komplexität eines Sprachmodells aber weit entfernt. Umso erstaunlicher ist es, wie nahe es jenem in manchen Bereichen kommt, und umso weniger erstaunlich, dass es in den meisten Bereichen dann doch nicht an es heranreicht.

Was allen neuronalen Netzen zugrunde liegt - biologischen wie künstlichen -, sind Neuronen, deren Aktivitäten einerseits etwas repräsentieren (die Anwesenheit eines Merkmals oder eines Objekts) und andererseits etwas bewirken können, z.B. die Kontraktion einer Muskelzelle, die Ausschüttung eines Hormons oder - im Falle künstlicher Neuronen -, das Aufleuchten eines Lämpchens oder das Erscheinen eines Buchstabens auf dem Bildschirm.

Was die Aktivität eines Neurons aber insbesondere bewirken kann, ist die Aktivität anderer Neuronen. In welchem Maße das geschieht, dafür sind die Synapsen zwischen den Neuronen verantwortlich, die die Aktivität eines vorgeschalteten, sogenannten präsynaptischen Neurons verschieden stark auf die Aktivitäten seiner nachgeschalteten oder postsynaptischen Neuronen übertragen, je nach synaptischer Stärke bzw. Gewicht. Zum Grundprinzip von Neuronen gehört es, die gewichteten Aktivitäten der ihm vorgeschalteten Neuronen aufzuaddieren und mit einer eigenen Aktivität darauf zu antworten. Im einfachsten - biologisch allerdings nicht beobachtbaren - Fall, der aber insbesondere bei Sprachmodellen eine große Rolle spielt, ist die Antwortaktivität einfach die Summe der eingehenden Aktivitäten. Bekannter ist die Alles-oder-Nichts-Reaktion: Ist die Summe der eingehenden Aktivitäten größer einem Schwellenwert, wird mit 1 geantwortet, ansonsten mit 0 . Viele andere solcher - meist nicht-linearer - Aktivierungsfunktionen kommen in künstlichen neuronalen Netzen an verschiedenen Stellen und zu verschiedenen Zwecken zum Einsatz.

In Abbildung 2.1 sehen wir, wie die anfängliche Aktivität von drei Neuronen sich durch ein Mini-Netz von unten nach oben fortpflanzt.
![img-5.jpeg](img-5.jpeg)

Abb. 2.1 Die anfängliche Aktivität von drei Neuronen pflanzt sich durch ein Mini-Netz von unten nach oben fort. Die Stärke der Aktivität der Neuronen wie auch der Synapsen sind durch Grautöne repräsentiert.

Ein künstliches Neuron ist technisch gesehen eine Speicherzelle im Arbeitsoder Kurzzeitspeicher eines Computers, die einen reellen Zahlenwert trägt, der die Aktivität des Neurons repräsentiert. Synapsen sind ebenfalls Speicherzellen, die reelle Zahlenwerte tragen, allerdings eher im Langzeitspeicher, also auf der Festplatte. Der numerische Wert der Synapsen-Speicherzellen wird während des Trainings verändert und bleibt danach fix. Der numerische Wert, also die Aktivität der Neuronen-Speicherzellen ändert sich zur Laufzeit des Sprachmodells, in Abhängigkeit von den Aktivitäten vorgeschalteter Neuronen und der Stärke der sie verbindenden Synapsen.

Nicht stark genug kann der Unterschied zwischen biologischen und künstlichen Neuronen und Synapsen betont werden. (Auf die Unterschiede in den

Architekturen biologischer und künstlicher neuronaler Netze kommen wir gleich zu sprechen.) Echte Neuronen sind Wunderwerke der Biologie und hochkomplexe Miniaturrechenmaschinen, die weit komplexere Rechenoperationen ausführen können als nur Aktivitäten aufzuaddieren und eine Aktivierungsfunktion anzuwenden. Und jede einzelne Synapse - von denen jedes Neuron tausende besitzt, ein- und ausgehende - ist wiederum ein hochsubtiles Präzisionswerkzeug, das durch eine einzige Zahl (ihre Stärke) nur recht unzureichend beschrieben ist. Aber so ist das mit jeder Modellierung: Sie beschränkt sich auf das Wesentliche, und das Wesentliche genügt in diesem Falle, um so etwas wie mächtige Sprachmodelle darüber zu errichten, deren Geheimnis dann eher in der Art und Weise begründet liegt, wie ihre (extrem stark vereinfachten) Neuronen miteinander verschaltet sind.

Eine wichtige Gemeinsamkeit haben künstliche und natürliche neuronale Netze dennoch: die Aktivitäten ihrer Neuronen sind nicht nur effektiv wirksam - indem sie die Aktivitäten anderer Neuronen beeinflussen und am Ende zu einer „Ausgabe" führen -, sondern sie repräsentieren auch immer irgendetwas, nämlich das Vorhandensein - und womöglich auch Nichtvorhandensein - eines Merkmals, Musters oder Objekts, sei es in der inneren oder äußeren Welt (aus Sicht des neuronalen Netzes). In den meisten Fällen ist die Repräsentation eines Musters oder Objekts verteilt: verteilt auf mehrere Neuronen und im menschlichen Gehirn sogar verteilt über verschiedene räumliche Gebiete des Gehirns. (Die virtuellen Neuronen eines künstlichen neuronalen Netzwerkes haben keine räumliche Anordnung.) Gleichzeitig kann die Aktivität ein- und desselben Neurons an der Repräsentation verschiedener Muster oder Objekte beteiligt sein, was eine weitere Form der Verteiltheit darstellt. Auf verteilte Repräsentationen werden wir noch eingehender zu sprechen kommen.

Die meisten künstlichen neuronalen Netze und so auch Sprachmodelle sind in Schichten aufgebaut, die zwischen einer Ein- und einer Ausgabeschicht liegen. Neuronale Netze mit vielen Schichten heißen „tief", wobei schon ab zehn Schichten von Tiefe gesprochen wird, und wirklich tiefe neuronale Netze eine in die Hunderte gehende Zahl von Schichten haben, nicht aber in die Tausende. Wenn sich die Aktivitäten wie in der Abbildung oben nur in eine Richtung, von der Ein- zur Ausgabeschicht fortpflanzen, spricht man von FeedforwardNetzen. Es kann aber auch sein, dass die Neuronen einer Schicht auf eine vorangehende Schicht oder sogar in sich selbst zurückprojizieren. Dann spricht man von rekurrenten neuronalen Netzen, und diese spielen heute noch eine wichtige Rolle bei der Verarbeitung von zeitlichen Sequenzen von Eingabedaten, die sich ein rekurrentes Netz „nwrken" kann. Rekurreote neuronale Netze waren auch die unmittelbaren Vorläufer der heutigen TransformerSprachmodelle, welche allerdings ganz explizit Feedforward-Netze sind, die mit gewissermaßen statischem, also nicht wirklich sequentiellem Input arbeiten. Deshalb wartet ein Chatbot auch immer, bis der Benutzer mit seiner Eingabe fertig ist und die Enter-Taste drückt, und beginnt nicht schon mit

der Antwort, während der Benutzer noch tippt, wozu rekurrente Netze in der Lage wären.

Als Ganzes gesehen kann man das menschliche Gehirn übrigens als ein rekurrentes Netzwerk auffassen, das sich ständig selbst mit neuronalen Signalen speist. Ein Feedforward-Netz, das gewissermaßen reflexartig auf seine Eingaben reagiert, ist es auf jeden Fall nicht. Doch wäre diese Sichtweise zu stark vereinfachend. In Wirklichkeit besteht es aus einer unüberschbaren Vielzahl an Arealen, Kernen und Schichten - Neuronengruppen unterschiedlichster Größe und Struktur allesamt, die oft überlappen -, die auf immer noch unentschlüsselbar vielfältige Art miteinander kommunizieren. Von der klaren Schichten-Struktur eines typischen künstlichen neuronalen Netzwerks ist es weit entfernt. Mit der Schichtenstruktur unmittelbar einher geht die zeitliche Taktung. In künstlichen neuronalen Netzen schreitet die Zeit in allerdings sehr, sehr kurzen - Schritten voran, und in jedem Zeitschrift werden gleichzeitig die Aktivitäten aller Neuronen einer Schicht berechnet und aktualisiert. Wie lange ein solcher Zeitschritt dauert, kann man für Sprachmodelle grob abschätzen. Ein Sprachmodell gibt ca. 10 Token pro Sekunde aus, also ein Token pro Zehntelsekunde. In dieser Zeit durchläuft ein Token ca. einhundert Schichten, was eine Tausendstelsekunde pro Schicht ergibt. In dieser Tausendstelsekunde muss das Sprachmodell allerdings die Aktivitäten vieler Hunderttausend von Neuronen aktualisieren.

Jedoch darf man sich auch in künstlichen Netzen die Schichten nicht unbedingt so einfach wie in unserem obigen Beispiel vorstellen. Die Schichten, die man zum Beispiel in einem großen Sprachmodell wie ChatGPT findet ${ }^{1}$, bestehen nicht einfach aus Millionen und Milliarden unverbunden nebeneinanderstehender Neuronen, sondern sind in sich horizontal und vertikal stark strukturiert. Allerdings sind alle Schichten gleich groß und gleich strukturiert, was wieder für eine starke Regelmäßigkeit sorgt. Andere tiefe Netze wie zum Beispiel die sogenannten Convolutional Neural Networks (CNN, soviel wie „faltende neuronale Netze"), die bei der Bildverarbeitung eine ähnliche Rolle spielen wie Transformer-Netzwerke in der Sprachverarbeitung, weisen oft nicht ganz so viele, dafür aber recht verschieden große und verschieden strukturierte Schichten auf.

Beim Stichwort „Bildverarbeitung" ein kleiner Exkurs: CNNs haben sich durchaus am visuellen System im menschlichen Gehirn orientiert (deutlich stärker als Sprachmodelle am Sprachverarbeitungssystem), und tatsächlich erfolgt auch im menschlichen Gehirn die Bildverarbeitung schrittweise in Schichten und nach ähnlichen Prinzipien. Allerdings liegen diese Schichten vor allem im Kortex räumlich betrachtet nicht übereinander, sondern als visuelle Areale V1, V2, usw. eher nebeneinander. Und andererseits haben die berühmten sechs Schichten, die im Neokortex tatsächlich übereinander liegen, mit den Schichten tiefer neuronaler Netzwerke nichts zu tun. (Ende des Einschubs.)

[^0]
[^0]:    ${ }^{1}$ In der Version 3.5 sind es genau 96, für Version 4 liegen keine Zahlen vor.

Was Transformer-Sprachmodelle mit CNNs und letztlich allen tiefen neuronalen Netzen gemeinsam haben, ist die Tatsache, dass von Schicht zu Schicht von einfachen zu immer komplexeren, aber auch abstrakteren Merkmalen und Mustern in den Eingabedaten fortgeschritten wird, die (nach einer Trainingsphase) „erkannt" und durch die Aktivitäten der Neuronen einer Schicht repräsentiert werden. Was aber hat es mit der Rede und dem Erkennen von Mustern auf sich, das oft als die charakteristische Fähigkeit neuronaler Netze und auf ihnen beruhender KI genannt wird? Keine Erklärung, was eine neuronale KI im Allgemeinen oder ein Sprachmodell im Besonderen macht, kommt ohne eine solche Formulierung aus:

## F: Was macht eigentlich ein Sprachmodell? Worauf beruhen seine Fähigkeiten?

A: Ein Sprachmodell wie ich versteht und generiert Text basierend auf riesigen Mengen an Daten, die es während des Trainings gelernt hat. Seine Fähigkeiten beruhen auf Mustern. Zusammenhängen und Informationen, die es in diesen Daten erkannt hat, um auf Anfragen sinnvoll zu antworten. Texte zu verfassen oder Fragen zu beantworten. Es nutzt komplexe Algorithmen und neuronale Netzwerke, um Sprache in ihren vielen Facetten zu verstehen und zu imitieren. [...]

Oder:

## F: Was machen eigentlich künstliche neuronale Netze?

A: Künstliche neuronale Netze sind Rechenmodelle, die von der Arbeitsweise des menschlichen Gehirns inspiriert sind. Sie bestehen aus einer großen Anzahl von miteinander verbundenen Knoten, die als künstliche Neuronen bezeichnet werden. Diese Neuronen sind in Schichten angeordnet: Eingabeschicht, eine oder mehrere verborgene Schichten und eine Ausgabeschicht. KNNs sind ein zentraler Bestandteil des maschinellen Lernens und der künstlichen Intelligenz (KI) und werden für eine Vielzahl von Aufgaben eingesetzt, darunter Mustererkennung: Sie erkennen Muster und Regularitäten in Daten. Dies wird beispielsweise in der Bild- und Spracherkennung eingesetzt. [...]

Worin diese Muster bestehen und wann, wo und wie sie erkannt und ggf. gespeichert werden, bleibt in solchen „Erklärungen" erst einmal offen und etwas im Vagen. Muster sind grundsätzlich alles Regelmäßige, das regelmäßig in Daten vorkommt, und durch seine Regelmäßigkeit und Häufigkeit systematisch während des Trainings Spuren in den synaptischen Gewichten eines neuronalen Netzes hinterlässt (oder allgemeiner: in den Parametern eines statistischen Modells, dazu gleich mehr). Diese meist über viele Synapsen verteilten Gedächtnisspuren, die die regelmäßig vorkommenden Muster - seien es optische, sprachliche oder gar Verhaltensmuster - hinterlassen, lassen einen Dateninput, der das entsprechende Muster aufweist, bestimmte Neuronen bzw. Neuronengruppen aktiv werden, die für das Muster charakteristisch sind. Dabei spielen immer die dynamische Aktivität von Neuronen - angefangen mit den Inputneuronen - mit den gelernten Gewichten in den relativ statischen Synapsen zusammen. Hierin liegt übrigens einer der gravierendsten Unterschiede zwischen künstlichen und natürlichen Synapsen: Natürliche

Synapsen können ihre Stärke ein Leben lang auf sehr vielen Zeitskalen ändern, von Sekunden bis zu vielen Jahren. Die Synapsen eines künstlichen neuronalen Netzes ändern sich nach ihrem Training im Allgemeinen gar nicht mehr, sie sind also wirklich statisch.

Basale Muster und regelmäßige Beziehungen, wie zum Beispiel Kanten in Bildern oder das gemeinsame Auftreten des Wortes „Du" mit dem Präfix „-st" (wie in „Du gehst") in Texten, werden in den Synapsen früher Schichten nahe der Eingabe gelernt und kodiert und durch die Aktivität von Neuronen in diesen Schichten repräsentiert (auf mitunter noch einigermaßen nachvollziehbare Weise). Abstraktere oder komplexere Muster und Objekte - wie Katzen in Bildern oder ganze Sätze in Texten - werden auf zunehmend verteiltere und schwerer nachvollziehbare Weise in den Synapsen tieferer Schichten kodiert.

Auch bei der Synthese von Daten, wie sie generative KI, insbesondere generative Sprachmodelle hervorbringen, wirken sich die gelernten Muster aus. Das müssen sie auch, weil die synthetisierten Datenmuster den gelernten ähnlich sein und sie gewissermaßen reproduzieren sollen.

# 2.4 Was ist generative KI? 

Bis vor einer Weile war KI in erster Linie analytisch: Ihr Input war komplexer als der Output, und wurde im Wesentlichen analysiert, um etwas vergleichsweise Einfaches auszugeben: eine Entscheidung (also eine Handlungsoption in einer Situation), ein Label (für ein erkanntes Objekt), ein vorhergesagter nächster Wert (für eine Zeitreihe). So gesehen sind insbesondere Sprachmodelle analytisch: sie entscheiden sich für ein nächstes Wort oder für eine bestimmte Klassifizierung eines Textes, den sie zum Beispiel als „positiv" oder „negativ bewertend" erkannt haben. Das nächste Worte, das sie generieren, aber auch die Klassifikation eines Textes sind in gewisser Weise Vorhersagen, was nämlich ein Mensch an ihrer Stelle als nächstes Wort gesagt oder wie er den Text klassifiziert hätte. Analyse ist die Voraussetzung für die Kernkompetenzen von KI-Systemen: dem Entscheiden, dem Erkennen und dem Vorhersagen, alles letztlich Aspekte ein und derselben Sache. ChatGPT bestätigt diese Sichtweise:

## F: Was verbindet Entscheiden, Erkennen und Vorhersagen?

A: Sowohl beim Entscheiden als auch beim Erkennen und Vorhersagen spielt die Verarbeitung von Informationen eine zentrale Rolle. Wir sammeln und analysieren Informationen, um Muster zu erkennen, Vorhersagen über zukünftige Ereignisse zu machen und fundierte Entscheidungen zu treffen.

Doch moderne Sprachmodelle, insbesondere die weit verbreiteten Transformeroder GPT-Sprachmodelle, sind nicht nur analytisch, sondern auch synthetisch: Sie analysieren Texte nicht nur, sondern synthetisieren sie auch, oder wie man sagt: generieren sie. Dabei sind sie, wie es in der Sprache der Linguistik heißt, produktiv, das heißt, sie produzieren Texte, die noch nie zuvor

generiert wurden. Diese Form der Produktivität gilt als charakteristisch für „echte" Sprache und Systeme, die sie beherrschen.

GPT-Sprachmodelle (Generative Pretrained Transformer) sind prototypische Vertreter der sogenannten generativen KI. Aber nicht alle Transformerbasierten Sprachmodelle sind generativ. Die sogenannten BERT-Modelle (Bidirectional Encoder Representations from Transformers) funktionieren zwar sehr ähnlich wie GPT-Modelle und sind dabei sogar besser im Verstehen von Texten, können aber keine Text generieren, sondern nur mit vorgegebenen Antworten wie beim Multiple-Choice oder wörtlichen Auszügen aus einem analysierten Text antworten.

Faszinierend ist, dass und wie Analyse und Synthese bei generativen Sprachmodellen eng und unauföslich zusammenhängen. Vor allem ist es ein und dasselbe Sprachmodell, das Texte sowohl analysieren als auch synthetisieren kann. (Dass das nicht selbstverständlich ist, sehen wir gleich, denn bei Bild-KI ist es anders.) Zum anderen besteht das Synthetisieren, also Generieren von Texten in nichts anderem als der fortgesetzten Vorhersage nächster Worte, die wiederum auf der Analyse aller vorangegangenen Worte beruht. Wie genau das vonstattengeht, sehen wir in den Kapiteln über die Funktionsweise von Transformer-Modellen. Dass dieses fortgesetzte Vorhersagen nächster Worte (bzw. Werte) mit Sprache so gut funktioniert und brauchbare lange Texte dabei herauskommen können, ist deshalb so erstaunlich, weil es mit anderen Zeitreihen nicht funktioniert. Mit Hilfe von Transformern zustande gekommene langfristige Wetterdaten oder Börsenkurse würden zwar plausibel aussehen, aber nicht brauchbar sein - was allerdings vor allem daran liegt, wofür man Wetterdaten und Börsenkurse braucht.

Generative KI ist vor allem und noch vor den generativen Sprachmodellen durch generative Bild-KIs wie DALL-E, Stable Diffusion oder Midjourney bekannt geworden, die aus Bildbeschreibungen detailreiche Bilder synthetisieren können. Diese ebenfalls auf neuronalen Netzen beruhenden Programme funktionieren zwar ganz anders als generative Sprachmodelle, zählen aber trotzdem zur KI und in den Bereich des maschinellen Lernens, weil sie das Erzeugen von Bildern anhand von Beispielen gelernt haben. Und gewissermaßen lösen sie ja sogar ein Problem, nämlich aus einer knappen Bildbeschreibung ein detailreiches Bild zu generieren. Diese Programme sind aber so, wie sie sind, nicht in der Lage, Bilder auch zu analysieren und zu verstehen. Wenn ein Chatbot wie ChatGPT, Claude oder Gemini mittlerweile erlaubt, Bilder sowohl zu generieren als auch zu analysieren, also aus einem Text ein Bild und aus einem Bild einen Text zu erzeugen, dann delegiert das Sprachmodell ohnehin seine Arbeit an eine Bild-KI, aber eben nicht an eine einzige, sondern an zwei verschiedene: eine zum Erzeugen eines Bildes (im Falle von ChatGPT ist das Dall-E) und eine zum Analysieren eines Bildes (die oft keinen Namen trägt). Beide arbeiten nach unterschiedlichen Prinzipien, und jeweils anders als ein Sprachmodell, das zum Erzeugen und Analysieren von Text nicht nur dasselbe Prinzip, sondern exakt dieselbe Maschinerie verwendet. Bilderzeugende KI beruht auf sogenannten Diffusionsmodellen, die relativ neu

sind, und Bilder durch Ver- und Entrauschen verstehen und erzeugen lernen. Der Entstehungsprozess eines Bildes ist dabei ein ganz anderer als der eines Textes, der Wort für Wort entsteht. Diffusionsmodelle erzeugen ihre Bilder nicht pixel-, sondern ebenenweise, indem sie von einer Bildbeschreibung gesteuert Schicht für Schicht ein anfängliches Rauschen entfernen. Dafür brauchen sie nicht mehr als einige zehn Schritte (Abb. 2.2).
![img-6.jpeg](img-6.jpeg)

Abb. 2.2 Diffusionsmodelle erzeugen Bilder aus einem anfänglichen zufälligen Rauschen und einer Bildbeschreibung, hier z.B. „Ein europäisches Schloss in Japan"
(Quelle: Benlisquare, Wikimedia Commons, lizenziert unter CC BY-SA, https://creative commons.org/licenses/by-sa/4.0/)

Tatsächlich kann man auch Texte auf diffusive Weise generieren, also nicht Wort für Wort, sondern indem man schrittweise Rauschen entfernt.

# F: Gibt es auch generative Sprachmodelle, die auf Diffusion beruhen? 

A: Ja, es gibt Sprachmodelle, die auf Diffusionstechniken basieren, ähnlich den Diffusionsmodellen, die in der Bildgenerierung verwendet werden. Diese Modelle, oft als Diffusions-Sprachmodelle bezeichnet, nutzen den Diffusionsprozess zur Textgenerierung.

Solche Sprachmodelle spielen in der Praxis zwar (noch) keine Rolle, würden einen Text aber zum Beispiel so generieren:

[^0]
[^0]:    g7v4Jqhj4PTJHClc6JX3EE31s9Ddojzt8oHF1L8e JF82jFt52a7Q1bee wCN3XwDUJ5XTH
    W7dDJOZyqPuqHHeu8\&EU g31s\&Ddojtt1oH6gnX1 Mk9Ujnt52a7QwDof 3uDGYt UJnX1H
    WUfn OZy3thFH1wreLX1 g31s4tUujvQQeHdun0W Mkrijatnon Q8SoC 31DGwD ounZev

```
Vcfn duy3thaNPwrhse1 w3ls4t ujd WsPdunGW MxdiEatnon njcot 3iDGeD ounZst
Vcfn du 6twaNPwihseL w0lsgt ujd WsPduroW Medifation nicht 3in6en kannst
Wenn du 6twas wihsen willgt und WsPdurch Meditation nicht jinden kannst
Wenn du etwas wissen willst und es durch Meditation nicht finden kannst
```

Ein wichtiger und gewissermaßen ernsthafter Grund dafür, generative Bild-KI zu entwickeln, ist der Mangel an Trainingsdaten für BilderkennungsKI. Ausreichend viele Röntgen-Bilder, auf denen zum Beispiel ein bestimmter seltener Tumor zu sehen ist, um damit eine Tumorerkennungs-KI zu trainieren, gibt es oft einfach nicht, und berechtigte datenschutzrechtliche Bedenken verschärfen die Situation. Deshalb sind synthetische Trainingsdaten ein wichtiger Anwendungsfall für generative Bild-KI, vor allem, aber nicht nur im medizinischen Bereich. Wie man mit wenigen Trainingsdaten eine KI dazu bringt, in beliebiger Zahl realistische synthetische Bilder des fraglichen Objektes zu generieren, ist eine andere Frage. Eine Antwort darauf sind zum Beispiel sogenannte Generative Adversarial Networks, die neben den Diffusionsmodellen eine zweite wichtige Art generativer Bild-KI darstellen, hier aber nur erwähnt werden können.

Auf eine andere nützliche Anwendung für generative Bild-KI wird man vermutlich noch eine Weile warten müssen: eine KI zur Generierung wissenschaftlicher Illustrationen, die einem komplizierte Dinge, Systeme oder Mechanismen auf didaktisch wertvolle Art visualisieren könnte. Ohne auf die Gründe einzugehen, warum mit solchen Fähigkeiten auf absehbare Zeit nicht zu rechnen ist, geben wir hier nur zwei Beispiele wieder, die zeigen, wie weit entfernt von einer didaktischen Nutzbarkeit die Illustrationsqualitäten zum Beispiel von ChatGPT im Gespann mit Dall-E noch sind. In Abb. 2.3 sieht man, wie die beiden z.B. die Funktionsweise einer Synapse oder die Architektur eines Transformer-Sprachmodells darstellen.

Nach dem Nutzen KI-generierter Texte muss man nicht lange suchen, auch wenn man der Meinung ist, dass für Erklärzwecke ein von einem Menschen verfasster guter Wikipedia-Artikel kaum zu ersetzen ist. Aber allein all die Konzepte erklären zu können, für die es keinen Wikipedia-Artikel und auch sonst keine einfach im Internet zu findende Erklärung gibt, wäre Nutzen genug. Doch einen weiteren, eher technischen Nutzen kann man hier durchaus erwähnen: Auch generative Sprachmodelle können zur Erzeugung synthetischer Trainingsdaten verwendet werden - und werden es bereits in substanziellern Umfang. Das klingt unter Umständen seltsamer und zirkulärer als es ist: Warum sollte man sich Sprachmodelle gegenseitig trainieren lassen, wo bleibt da die „natürliche Sprache", und potenziert das nicht Voreingenommenheit und dergleichen? Es hat sich aber herausgestellt, dass die messbare Qualität von kleineren Sprachmodellen, die mit von größeren Sprachmodellen synthetisierten Texten trainiert wurden, nicht sehr stark leidet. Dabei kann die Trainingszeit deutlich reduziert werden, unter anderem deshalb, weil die synthetischen Texte weniger Fehler enthalten als „echte" Texte. Das schont nicht zuletzt Ressourcen.

![img-7.jpeg](img-7.jpeg)

Abb. 2.3 Die Funktionsweise einer Synapse und die Architektur eines TransformerSprachmodells wie DALL-E sie darstellt. Man wird keine Mühe haben, im Internet aufschlusserieltere und weniger fantastische Darstellungen zu finden. Der Hang zum Halluzinieren, vor allem von Details, ist bei bildgenerierender KI immanent. Mittlerweile machen sie aber immerhin weniger Rechtschreibfehler. Entstanden sind auch diese Bilder durch einen Diffusionsprozess wie in Abb. 2.2 (Quelle: DALL-E)

Aber der Hauptzweck generativer Sprachmodelle liegt natürlich woanders, wie ChatGPT bereitwillig erläutert:

F: Worin besteht der Hauptzweck generativer Sprachmodelle? A: Der Hauptzweck generativer Sprachmodelle besteht darin, Texte zu generieren, die menschlicher Sprache ähneln. Sie werden eingesetzt, um Fragen zu beantworten, Texte zu übersetzen, Zusammenfassungen zu erstellen und kreative Inhalte wie Geschichten oder Gedichte zu verfassen. Diese Modelle lernen aus großen Mengen an Textdaten und sind in der Lage, kontextbezogene, relevante und kohärente Antworten zu liefern.

# 2.5 Was sind statistische Modelle? 

Jeder Form von KI liegt ein entsprechendes Modell zugrunde. Symbolischer, regelgeleiteter KI liegen deterministische Modelle zugrunde, für verteilte bzw. konnektionistische KI sind es statistische Modelle. Sprachmodelle als Beispiele für nicht-symbolische KI sind also statistische Modelle. Sie sind das nicht zuletzt, weil sie neuronale Netze und alle neuronalen Netze statistische Modelle sind. Sie sind es auch, weil sie Vertreter des maschinellen Lernens sind und alles maschinelle Lernen auf statistischen Modellen beruht. Als statistische Modelle wiederum sind Sprachmodelle an erster Stelle - Modelle. Sie bilden auf bestimmte Weise, nämlich statistisch, einen Ausschnitt der Wirklichkeit

ab, in unserem Falle Sprache. Doch in welchem Sinne und auf welche Weise tun sie das?

Modelle dienen einerseits dazu, einen Ausschnitt der Wirklichkeit, zum Beispiel ein physikalisches, oder ein biologisches System, besser zu verstehen, indem man seine inneren Bestandteile und Mechanismen nachbildet, sprich modelliert. Bei diesem Ansatz kommen im weitesten Sinne mechanistische Modelle heraus, die sich meist gut programmieren lassen und in Form von regelbasierten Computersimulationen erlauben, Vorhersagen zu treffen und Eigenschaften des modellierten Systems zu untersuchen. Diesen klassischen Modellbegriff und die Funktionsweise dieser Art von Modellen hat einmal Heinrich Hertz (1857-1894) in [10] so beschrieben:
„Wir machen uns innere Scheinbilder oder Symbole der äußeren Gegenstände [so], dass die denknotwendigen Folgen der Bilder [...] die Bilder seien von den naturnotwendigen Folgen der abgebildeten Gegenstände."

Deterministische, mechanistische Modelle spielen heute immer noch eine große Rolle, als epidemiologische oder Klimamodelle zum Beispiel, die typischerweise in der Form von Differential- oder anderen Gleichungssystemen beschrieben werden, die von Computern meist approximativ gelöst werden können. Doch mitunter sind die zu modellierenden Systeme zu komplex oder zu wenig greifbar, als dass es gelingt, genau zu sagen, aus welchen Bestandteilen sie eigentlich bestehen, wie diese sich womöglich zu höhereren Einheiten verbinden und welchen Regeln das alles folgt. Ein solches System ist die menschliche Sprache, die sich bis heute einer brauchbaren Modellierung in Form von expliziten Wörterbüchern, Grammatikregeln oder irgendwelcher Gleichungen widersetzt hat.

Mit statistischen Modellen versucht man nicht, im Vorhinein die Bestandteile, den Mechanismus und die Regeln zu formulieren, nach denen ein natürliches System - zum Beispiel Sprache - funktioniert. Stattdessen versucht man, einen abstrakten Prozess zu simulieren, der Daten generiert, die den Daten, die das simulierte (natürliche) System erzeugt, zum Verwechseln ähnlich sehen. Solche statistischen Modelle sind dann von Haus aus generative Modelle. „Daten, die ein System erzeugt" ist eine ungewöhnliche Art, "Verhalten" zu sagen, aber so gesehen verfolgen statistische Modelle letztlich denselben Zweck wie mechanistische: das Verhalten von Systemen zu simulieren. Dass man im Falle von statistischen Modellen die inneren Mechanismen, die das Verhalten hervorbringen, nicht ohne weiteres versteht und mit den wahren Prozessen vergleichen kann, ist einer ihrer entscheidenden Nachteile. Ihr Vorteil ist, dass sie manchmal deutlich besser funktionieren als die mechanistischen, regelgeleiteten. Der Schlüssel zu diesem Erfolg ist es, die statistischen Parameter, die ein statistisches Modell ausmachen, sich durch Lernen an vielen Beispielen einstellen zu lassen. Künstliche neuronale Netze, deren statistische Parameter (synaptische) Gewichte genannt werden, sind nur eine spezielle, aber sehr mächtige Form statistischer Modelle. Es gibt aber auch ganz anders geartete und zum Teil viel einfachere statistische Modelle,

mit nur wenigen Dutzend bis Tausend anstatt vieler Milliarden Parametern, wie sie für große Sprachmodelle typisch sind. Genannt seien an dieser Stelle nur Regressionsmodelle, Entscheidungsbäume, Supportvektormaschinen oder Bayessche Netze.

Eines sind Sprachmodelle wie ChatGPT ausdrücklich nicht: Mechanistische Modelle der Sprachverarbeitung im menschlichen Gehirn. Ein Sprachmodell - definiert durch seine Architektur, also welche Neuronen mit welchen verknüpft sind, und durch die konkreten Stärken dieser Verknüpfungen - ist vielmehr in dem Sinne ein Modell der Sprache(n), die es beherrscht, dass es das Potential besitzt, sämtliche Sätze dieser Sprache(n) zu verstehen und zu erzeugen. Die Sprache, definiert durch ihre Sätze und Texte, schlummert gleichsam im Modell. Je nachdem, wie die Sätze und Texte, die es dann tatsächlich richtig versteht und erzeugt, inhaltlich und grammatikalisch richtig und kohärent sind, hat man es mit einem besseren oder einem schlechteren Modell zu tun.

Aus einer anderen Perspektive betrachtet lässt sich ein statistisches Sprachmodell als eine riesige bedingte Wahrscheinlichkeitsfunktion betrachtet, die die Wahrscheinlichkeit angibt, mit der ein bestimmtes Wort oder Token $w_{n+1}$ erzeugt wird (oder folgt), wenn ihm die Worte $w_{1}, \ldots, w_{n}$ vorangegangen sind. Diese Wahrscheinlichkeit kann nicht als Tabelle gegeben sein, denn wenn zum Beispiel $n=100.000$ erlaubt wäre (wie es etwa für ChatGPT der Fall ist), und es zum Beispiel 100.000 verschiedene Worte gäbe (wie es ebenfalls für ChatGPT der Fall ist), so gäbe es $100.000^{100.000}$ Kombinationen von Worten, und die Tabelle müsste noch einmal 100.000-mal Einträge mehr enthalten, für jedes mögliche nächste Wort einen. Diese Zahl astronomisch zu nennen, wäre noch untertrieben. Ein Sprachmodell muss diese bedingte Wahrscheinlichkeit also berechnen - und genau das tun Transformer-Sprachmodelle wie ChatGPT auf Basis ihrer gelernten synaptischen Gewichte. Bei dieser Berechnung muss nicht immer „Bar" herauskommen, wenn man einen Text mit „Kommt ein Pferd in die" beginnt. Doch meistens schon, aber eben nicht zwangsläufig, als wenn das Wort in einer Tabelle nachgeschlagen würde, sondern „nur" als Ergebnis einer aufwändigen Berechnung:

# F: Kommt ein Pferd in die 

A: Bar und der Barkeeper fragt: „Warum: so ein langes Gesicht?"
Als Beispiel für einen Satz, der mit Sicherheit so noch nie geschrieben und im Internet veröffentlicht wurde, für den es also kein empirisch häufigstes nächstes Wort gibt, das sich in einer Tabelle nachschlagen ließe, versuchen wir es mit einem, den wir gerade erst geschrieben haben und sehen, dass ChatGPT tatsächlich das „richtige" nächste Wort berechnet. Danach freilich macht er anders weiter, durchaus plausibel und keineswegs falsch:

## F: Ein Sprachmodell muss diese bedingte Wahrscheinlichkeit also berechnen - und genau das tun Transformer-Sprachmodelle wie ChatGPT auf Basis ihrer gelernten synaptischen

#### Abstract

A: Gewichte und ihrer Architektur. Transformer-Sprachmodelle verwenden eine Architektur, die auf der Aufmerksamkeit (Attention) basiert, um die Beziehung zwischen Wörtern in einem Satz zu modellieren. Diese Modelle lernen während des Trainings die Wahrscheinlichkeit von Wörtern oder Token in einer Sequenz basierend auf dem Kontext zu generieren. Dies geschieht durch die Berechnung der beöngten Wahrscheinlichkeiten jedes Worts im Kontext der vorherigen Wörter. Die synaptischen Gewichte, die während des Trainings angepasst werden, helfen dem Modell, diese Wahrscheinlichkeiten zu berechnen, indem sie die Relevanz der verschiedenen Teile des Inputs für die Generierung des nächsten Tokens erlernen.


Man mag einwenden, dass aber doch allein den Worten ,,gelernten synaptischen" das Wort „Gewichte" mit sehr hoher Wahrscheinlichkeit folgen müsse und alles, was davor steht, irrelevant sei - wie könnte denn ein anderers Wort als „Gewichte" auf diese zwei folgen? Dieser Einwand hat in vielen Einzelfällen durchaus seine Berechtigung, und in diesen isoliert betrachteten Fällen wirken Sprachmodelle tatsächlich wie bessere Auto-Vervollständiger. Aber oftmals ist es eben doch ein (unbestimmt) langer Kontext, der erst das nächste Wort erzwingt. Im Beispiel davor war es zum Beispiel erst das - von hinten gezählt - fünfte Wort („Kommt"), das die „Bar" statistisch zwingend nach sich zog. „Ein Pferd in die" hätte statistisch gesehen genauso gut mit „Scheune" fortgesetzt werden können.

Entscheidend für das Funktionieren statistischer Modelle sind ihre Trainingsdaten und -methoden. Wie sie lernen, wie also die Parameter eingestellt werden, mit denen Modelle dann zur Laufzeit die Wahrscheinlichkeiten berechnen, mit denen sie einen Output erzeugen, darauf gehen wir im nächsten Kapitel ein.

### 2.6 Was ist maschinelles Lernen?

Sprachmodelle sind als neuronale Netze nicht zuletzt klassische Beispiele für maschinelles Lernen (englisch machine learning, ML). Maschinelles Lernen ist aber nicht auf neuronale Netze und noch nicht einmal auf statistische Modelle im Allgemeinen beschränkt, denn auch die Parameter deterministischer, regelbasierter Modelle können maschinell gelernt werden. Und doch begegnen einem die grundlegenden Prinzipien, nach denen Maschinen, also Computer und Roboter lernen, vor allem im Zusammenhang mit neuronalen Netzen, auf die wir uns deshalb im Folgenden beschränken. Diese grundlegenden Prinzipien sind das überwachte, das unüberwachte und das verstärkende Lernen, wobei das Transfer-Lernen oft als vierte Form genannt wird. Andere Formen des maschinellen Lernens werden meist als Spezialfälle der ersten drei Arten betrachtet, z.B. das Imitationslernen, auf das wir kurz zu sprechen kommen werden.

Als Fachgebiet ist das maschinelle Lernen ein typisches interdisziplinäres Fach und einerseits Teilgebiet der angewandten Statistik, andererseits der

Computerwissenschaften, insbesondere der KI (als wissenschaftliche Disziplin). Wichtige Konzepte des maschinellen Lernens sind der Lernpsychologie entlehnt. Der häufigste Lernmechanismus, der vor allem beim überwachten und beim Verstärkungslernen auf unterster Modellebene die statistischen Parameter anpasst - im Falle neuronaler Netze also die synaptischen Gewichte - ist der reinen Mathematik, namentlich der Analysis und Differentialrechnung entlehnt: der Backpropagation-Algorithmus. Anders als die Hebbsche Lernregel hat er kein biologisches oder sonstiges Vorbild, ist dafür aber auf digitalen Computern sehr effizient realisierbar.

Überwachtes Lernen. Das überwachte Lernen kann als Lernen durch Beispiele charakterisiert werden. Es ist vielleicht die am einfachsten nachvollziehbare Art, wie einem neuronalen Netz etwas beigebracht werden kann. Das Ziel ist es, ein Modell zu entwickeln, das eine Ausgabe basierend auf den Eingabedaten vorhersagen kann. Dafür präsentiert man dem Netz während des Trainings in seiner Eingabeschicht eine Reihe von Beispieldaten - seien es Bilder, Texte oder sonstige Daten - und lässt es die Daten prozessieren, d.h. von der Eingabe- über eine oder mehrere Zwischenschichten zur Ausgabeschicht durchlaufen. Dabei führen die synaptischen Gewichte des Netzes dazu, dass in der Ausgabeschicht eine bestimmte „Antwort" erzeugt wird, zum Beispiel, welches Tier auf dem Bild zu sehen ist, welcher Autor den Text verfasst oder welches Wort dem Text als nächstes folgt. In allen Fällen ist die Antwort genaugenommen eine Wahrscheinlichkeitsverteilung - welches Tier, welcher Autor, welches Wort ist wie wahrscheinlich? -, die durch die Aktivitäten von Neuronen kodiert sind. Die richtige Antwort - meist „Label" genannt - ist vorab bekannt und wird mit der Antwort des Netzes verglichen. Daher heißt diese Trainingsmethode „überwacht". Dabei ist es wichtig, nicht nur zu wissen, $s 6$ die Antwort richtig oder falsch ist, sondern wie richtig oder falsch, wie groß also der Fehler ist. Bei kategorialer Antworten wie zum Beispiel Tieroder Autorennamen scheint es zwar nur „richtig" oder „falsch" zu geben, doch im Kapitel über das selbstüberwachte Vortraining von Sprachmodellen werden wir sehen, wie dem beizukommen ist, nämlich über die oben erwähnten Wahrscheinlichkeitsverteilungen. Auf jeden Fall hängt von der Größe des Fehlers ab, wie stark und in welche Richtung die Gewichte des Netzes angepasst werden, nämlich so, dass der Fehler für dasselbe Beispiel beim nächsten Mal kleiner würde. Das geschieht durch den bereits erwähnten BackpropagationMechanismus, indem der Fehler durch das Netz zurückpropagiert wird und dabei die Gewichte ändert.

Je größer ein neuronales Netz ist und je feinere Unterscheidungen es treffen können soll, mit desto mehr gelabelten Beispielen muss es trainiert werden. Dabei ist es nicht verboten, es mit denselben Beispielen mehrfach zu trainieren und mit besonders wichtigen sogar noch öfter. Grundsätzlich kann es aber sein, dass die verfügbaren gelabelten Beispiele nicht ausreichen, zumal, wenn für das Auszeichnen der Beispiele mit Labeln menschliche Annotatoren vonnöten sind. Deshalb werden heute nicht selten für die Bilderkennung

künstliche Beispiele samt Label von generativer Bild-KI synthetisiert. Eine andere Methode, die ohne menschliche Annotatoren auskommt, ist das selbstüberwachte Lernen, bei dem die Label aus dem Beispiel selbst stammen und ihm entnommen werden. Das prominenteste Beispiel dafür sind unsere vortrainierten Sprachmodelle. Dabei wird von einem gegebenen Stück Text einfach das letzte Wort abgeschnitten und dem neuronalen Netz vorenthalten. Als Label ist es bekannt und kann mit dem vom neuronalen Netz für den Rest des Textes „geratenen" nächsten Wort verglichen, der Fehler berechnet und dann zurückpropagiert werden.

Unüberwachtes Lernen. So, wie überwachtes Lernen als Lernen durch Beispiele charakterisiert werden kann, kann unüberwachtes Lernen als Lernen durch Entdecken verstanden werden, nämlich das selbständige Entdecken verborgener Muster und Regelmäßigkeiten in den Daten. Ein typischer Anwendungsfall ist das Clustern von Daten, d.h. das automatische Gruppieren in Klassen ähnlicher Bilder oder Texte, ohne dass diese vorab als Label definiert und bekannt wären: Sie werden während des Trainings erst gefunden. Zwar werden auch beim überwachten Lernen Muster in den Daten entdeckt (und in den Synapsen des Netzes kodiert), und auch hier dienen die entdeckten Muster der Klassifikation. Insofern besteht der wesentliche Unterschied zwischen überwachtem und unüberwachtem Lernen in der Selbständigkeit des Entdeckens. Wir gehen hier allerdings nicht weiter auf das unüberwachte Lernen ein, denn tatsächlich spielt es für Sprachmodelle eine untergeordnete Rolle. Auch wenn ChatGPT in der folgenden Antwort „unüberwacht" mit „selbstüberwacht" verwechselt:

# F: Werden Sprachmodelle wie GPT auch unüberwacht trainiert? 

A: Ja. Sprachmodelle wie GPT werden auch in einem unüberwachten Modus trainiert. Ein konkretes Beispiel dafür ist das ursprüngliche Training von GPT-Modellen, das auf einem unüberwachten Lernansatz basiert. Beim unüberwachten Training werden die Modelle mit großen Mengen an Textdaten gefüttert, ohne explizite Anweisungen oder Labels zu haben, was genau daraus gelernt werden soll.

Auf diese Verwechslung hingewiesen antwortet ChatGPT schließlich so:
A: Diese Modelle nutzen nicht direkt unüberwachte Lernmethoden, da sie nicht darauf abzielen, Cluster oder verborgene Strukturen in den Daten ohne jegliche Form von Supervision zu identifizieren. Stattdessen nutzen sie den Text selbst, um Vorhersageaufgaben zu erstellen, die als Selbstüberwachung fungieren.

Verstärkendes Lernen. Eine ganz wesentliche, aber dennoch nur sekundäre und nachgeschaltete Rolle beim Training von Sprachmodellen spielt das Verstärkungslernen (englisch reinforcement learning). Diesem Lernparadigma folgt die sich dem selbstüberwachten Vortraining eines Sprachmodells regelmäßig anschließende Trainingsrunde, die manchmal Finetuning, manchmal Alignment genannt wird, insbesondere, wenn das Sprachmodell als frei

zugänglicher Chatbot genutzt werden soll. Während des Alignments werden dem Sprachmodell all die Dinge beigebracht, die über die Vorhersage des nächsten Wortes hinausgehen. Insbesondere Feinheiten der menschlichen Kommunikation und der Dialogführung werden einem Sprachmodell so antrainiert: wie man implizite Aufforderungen durch den Benutzer auch zwischen den Zeilen versteht, wie man Texte gut zusammenfasst, aber vor allem auch, was man sagen darf und wie man sich angemessen ausdrückt - und was und wie auf keinen Fall. Solche Dinge einem Sprachmodell im Rahmen des überwachten Lernens anhand von Beispielen beizubringen, wäre ein Ding der Unmöglichkeit, denn man müsste Myriaden von Textbeispielen in vielfältiger Hinsicht annotieren - wer sollte das tun, und wie? (Um einen möglichen Einwand vorwegzunehmen: auch von generativer KI synthetisierte Textbeispiele würden hier nicht helfen.) Verstärkungslernen folgt einem anderen Ansatz: Ein zu trainierendes Modell generiert zu einem gegebenen Input einen Output - ein vortrainiertes Sprachmodell zum Beispiel zu einer Frage eine Antwort oder ein Roboter zu einem Zustand seiner Umgebung eine Aktion. Für diese Antwort wird berechnet (oder von einem Menschen bewertet), wie „gut" oder „schlecht" sie war, in irgendeiner entweder berechen- oder einem menschlichen Bewerter erklärbaren Hinsicht. (Berechen- und damit programmierbar hieße „einem Computer erklärbar".) Diese Qualität wird dem Modell in Form einer positiven oder negativen Zahl als „Belohnung" bzw. „Bestrafung" zurückgegeben. Es weiß dann, welchen „Fehler" es gemacht hat und kann - verkürzt gesagt - seine Gewichte so anpassen, dass es auf denselben Input beim nächsten Mal einen (noch) besseren, also besser belohnten Output liefern würde.

Der wesentliche Unterschied zum überwachten Lernen ist, dass die Belohnung, die als Feedback dient und die Rolle des Labels beim überwachten Lernen spielt, nicht schon vorab bekannt ist (weil sie den Input charakterisiert, der durch den Output „erraten" werden soll), sondern erst im Nachhinein den Output bewertet. Die Belohnung wird also erst zur Laufzeit berechnet und wird nicht wie ein Label dem Input schon mitgegeben. Im klassischen Verstärkungslernen wird die Belohnung (englisch reward) nach einem Algorithmus aus dem Frage-Antwort-Paar berechnet, man braucht zum Training also nur viele Fragen und einen Algorithmus. Wenn es um Belohnungskriterien geht, die sich nicht programmieren lassen, so kann man sie immerhin menschlichen Trainern erklären, die sie dann intuitiv anwenden. Um solche Kriterien handelt es sich bei den oben genannten Beispielen. So ließe sich ein Sprachmodell also theoretisch auch direkt durch Menschen trainieren, indem diese die Belohnung zum Beispiel auf einer Skala von -10 bis +10 für jede vom Sprachmodell generierte Antwort von Hand vergeben. Es ist offensichtlich, dass dieses Vorgehen für große Sprachmodelle, die zuvor auf gigantischen Textmengen vortrainiert wurden, keine merklichen Spuren hinterlassen könnte, wenn nicht mit buchstäblich Heerscharen menschlicher Trainer monate-, wenn nicht jahrelang im Rund-um-die-Uhr-Betrieb gearbeitet würde - was nicht möglich ist. Um dem beizukommen, kann man aber vorab in kleinerem Rahmen so-

genannte Reward-Modelle trainieren, die selbst wieder neuronale Netze sind, die die Kriterien, nach denen die Menschen intuitiv bewerten, von diesen recht schnell erlernen können. Die Reward-Modelle berechnen dann später die Belohnung nicht nach einem Algorithmus, sondern vergeben sie wie ein Mensch „intuitiv" und aus ihren Synapsen heraus - nur viel schneller und ohne zu ermüden. Das ist dann, wie man sagt, skalierbar. Auf diese Form von Verstärkungslernen durch (indirektes) menschliches Feedback (englisch reinforcement learning by human feedback, RLHF) kommen wir in einem eigenen Kapitel noch einmal zurück.

Beim Verstärkungslernen spielt die Belohnung die Rolle des Labels beim überwachten Lernen. Anders als beim überwachten Lernen sind die Belohnung und der Output jetzt aber keine vergleichbaren Größen mehr, deren Differenz sich als Fehler verstehen ließe, der zum Zwecke der Gewichtsanpassung im Netz zurückpropagiert werden könnte. An dieser Stelle wird Verstärkungslernen - so einfach und naheliegend seine Idee auf den ersten Blick erscheint - konzeptionell und technisch recht anspruchsvoll. Vor allem die Frage, welche Vergleichsgröße sich auf welche Weise berechnen lässt, aus deren Differenz zur gegebenen Belohnung ein Fehler resultiert, ist nicht leicht zu beantworten, und wir können das an dieser Stelle nur andeuten. Damit wie beim überwachten Lernen die Differenz zwischen dem vom Modell vorhergesagtem und dem richtigen Label berechnet werden kann, muss beim Verstärkungslernen das Modell neben seinem eigentlichen Output auch noch eine Belohnung vorhersagen (englisch predicted reward), der dann mit der tatsächlichen Belohnung verglichen wird. Daraus ergibt sich ein Vorhersagefehler, der wie im Falle des überwachten Lernens zur Gewichtsanpassung per Backpropagation dient. Das ist die zugegebenermaßen nicht mehr ganz leicht nachvollziehbare Quintessenz des Verstärkungslernens.

Wenn überwachtes Lernen als Lernen durch Beispiele und unüberwachtes Lernen als Lernen durch (selbständiges) Entdecken charakterisiert werden kann, so ist die beste Charakterisierung des Verstärkungslernens die des Lernens durch Versuch und Irrtum, oder auch „Learning by doing". Verstärkungslernen lag vor dem Aufkommen der Sprachmodelle, die seitdem viel Aufmerksamkeit auf sich ziehen, den beeindruckendsten Leistungen künstlicher Intelligenz zugrunde, insbesondere in der Robotik (nitunter allerdings nur der virtuellen), beim selbständigen Fahren und in Spielen wie Schach und Go. Genannt sei hier nur die DeepMind/Google-KI AlphaZero, die durch Versuch und Irrtum Schach, Go und Shogi (japanisches Schach) auf Großmeisterniveau zu spielen lernte. Die Bedeutung des Verstärkungslernens für Sprachmodelle ist hingegen nicht im engeren Sinne wesentlich. Denn die Regeln der Sprache und ihr Weltwissen lernen Sprachmodelle tatsächlich auch ohne Verstärkungslernen, allein durch das selbstüberwachte Lernen über viele Texte.

Transfer-Lernen. Beim Transfer-Lernen wird ein Modell, das für einen Aufgabentypus trainiert wurde, gezielt angepasst, um einen anderen, aber

ähnlichen Aufgabentypus zu lösen. Dabei macht man sich zunutze, dass das Modell Fähigkeiten, die es für die eine Art von Aufgaben erworben hat, auf die andere übertragen kann. Was Sprachmodelle betrifft, so werden sie nicht gezielt und explizit einem Transfer-Lernprozess oder -Training ausgesetzt. Für Sprachmodelle findet Transfer-Lernen vielmehr implizit und spontan statt. Es stellt sich einfach heraus, dass - insbesondere sehr große - Sprachmodelle Wissen und Fähigkeiten, die sie in einem Bereich während des Vortrainings in hohem Maße erworben haben, auf andere Bereiche übertragen können, über die in ihren Trainingstexten eher wenig oder überhaupt nichts zu finden war. Das deutlichste Beispiel für diese Art von implizitem Transfer-Lernen das in dieser Form nicht in den Kanon der gezielt eingesetzten maschinellen Lerntechniken gehört - ist die Tatsache, dass ein Sprachmodell wie ChatGPT seltene Sprachen deutlich besser beherrscht, als es ihr Anteil an den Trainingsdaten vermuten ließe. Das liegt daran, dass es gewisse universelle Regeln der menschlichen Sprache - um nicht von einer Universalgrammatik zu sprechen - von den häufigen Sprachen wie Englisch auf die seltenen übertragen kann. Dass Sprachmodelle sehr gut im Denken und Verwenden von Analogien sind, kann als weiterer Ausdruck von Transfer-Lernen verstanden werden.

Fehler und Verlust. Fehler (oder auch Vorhersagefehler, englisch prediction error) und Verlust (englisch loss) sind Synonyme für die Größe, die es beim maschinellen Lernen, insbesondere beim überwachten und beim verstärkenden Lernen zu reduzieren bzw. zu minimieren gilt. Wie diese Größe definiert ist, und wie sie als Funktion - meistens spricht man insbesondere von der Verlustfunktion (englisch loss function) - von den Aktivitäten der Neuronen und den Synapsen abhängt, hängt wiederum von der Trainingsmethode und dem Trainingsziel ab. Die Kreuzentropie-Verlustfunktion (englisch cross entropy loss) ist besonders nützlich beim überwachten Trainieren von Klassifizierungsmodellen, wo sie falsche Klassifizierungen stärker „bestraft", wenn das Modell sich seiner falschen Vorhersagen sicher ist. Diese Eigenschaft fördert, dass das Modell sowohl genau als auch zuversichtlich in seinen Vorhersagen ist. (Der Kreuzentropie werden wir im Kapitel über das Vortraining von Sprachmodellen wiederbegegnen.)

Die Idee der Minimierung eines Vorhersagefehlers, der auch im Verstärkungslernen eine Rolle spielt (wo der Fehler in der Differenz zwischen Belohnung und erwarteter Belohnung besteht), kann man auch in der Gehirnforschung wiederfinden, wo sie dem Konzept des sogenannten Predictive Coding (deutsch „vorhersagende Kodierung") zugrunde liegt. Demnach ist das menschliche Gehirn auf vielen Ebenen und auf viele Weisen darauf ausgerichtet, Ereignisse, „Belohnungen" und „Bestrafungen", aber auch eigenes Verhalten vorherzusagen und dabei seine Vorhersagefehler, die als „Überraschungen" interpretiert werden, möglichst klein zu halten. Aber das müsste Gegenstand eines eigenen Buches sein.

Backpropagation und Gradientenabstieg. Backpropagation ist nach wie vor die Technik der Wahl, die Gewichte eines künstlichen neuronalen Netzes anzupassen. Die Idee ist die folgende: Man weiß, wie die Fehlerfunktion von den Aktivitäten der Neuronen der letzten, also der Ausgabeschicht des neuronalen Netzes abhängt. Denn man hat die Fehlerfunktion ja definiert und sie auf Basis dieser Aktivitäten berechnet. Man weiß außerdem, wie die Aktivitäten der Neuronen der Ausgabeschicht von den Aktivitäten der vorletzten Schicht abhängen, nämlich über die synaptischen Gewichte zwischen den beiden Schichten. Das sogenannte Gradientenabstiegsverfahren sagt einem nun, in welche Richtung und wie stark man die Gewichte ändern muss, damit die Aktivierung der Neuronen der Ausgabeschicht den Fehler kleiner macht - bei gegebener Aktivität der Neuronen der vorletzten Schicht, die man sich gemerkt haben muss. Dieselbe Berechnung stellt man dann in Bezug auf die Aktivitäten der vorletzten in Abhängigkeit von der vorvorletzten Schicht und den Gewichten zwischen diesen beiden an, und so weiter, bis hinab zur Eingabeschicht. Der „Abstieg" im Gradientenabstiegsverfahren hat dabei nichts mit dem Abstieg in die Tiefen des Netzes zu tun, die dem Trainieren von tiefen Netzen den Namen Deep Learning eingebracht hat. Beim Gradientenabstieg geht es vielmehr um den Abstieg entlang eines Funktionsgraphen in Richtung eines Minimums. Der Abstieg in die Tiefe des Netzes wird durch den Begriff Back- also Rückwärtspropagation beschrieben. Dabei darf man sich die Propagation aber nicht als Fortpflanzung eines neuronalen Signals oder neuronaler Aktivität vorstellen, sondern nur des (abstrakten) Fehlers, dessen Ursachen man nachforscht und sie im Zuge dessen verringert.

Es ist übrigens uneindeutig, wie der Begriff der Tiefe eines Netzes zu verstehen und sich vorzustellen ist. In den Abbildungen dieses Buches ist, wie auch oft in der einschlägigen Literatur, die Eingabeschicht unten und die Ausgabeschicht oben dargestellt, sodass tiefe Netze eigentlich eher „hohe" Netze zu nennen wären. Auch verbindet man die eingabenäheren Schichten meist mit grundlegenden (also tiefer liegenden) Eigenschaften der Daten, und die ausgabenäheren mit „höheren" Eigenschaften oder einem höheren Abstraktionsgrad. Dennoch ist die Redeweise und Vorstellung eher die, dass mit jeder zusätzlichen Schicht - von der Eingabeschicht aus gezählt - das Netzwerk tiefer wird. Im Lateinischen hätte man diese Begriffsschwierigkeiten nicht, denn da bedeutet „altus, -a, -um" gleichermaßen „hoch" und „tief".

Im-Kontext-Lernen. Das sogenannte Im-Kontext-Lernen ist eine Art des Lernens, die auf Sprachmodelle beschränkt ist und nicht zum Kanon des maschinellen Lernens gehört, zumal es nichts mit einem expliziten Training eines neuronalen Netzes zum Zwecke der Anpassung und Optimierung seiner Gewichte zu tun hat. Im Kontext zu lernen, bedeutet für ein Sprachmodell, erst zur Laufzeit, also nachdem sein Training abgeschlossen wurde und seine Gewichte nicht mehr verändert werden, aus der Benutzereingabe zu lernen, worum es geht und was von ihm verlangt wird. Der Begriff des Lernens ist hier also eher irreführend, hat sich aber etabliert. Es geht eher um

das Verstehen einer Aufgabe, und Lernen ist es nur insofern, als dass dieses Verstehen innerhalb einer längeren Konversation hinweg anhalten kann. Für die nächste Konversation mit demselben Benutzer oder gar mit anderen Benutzern behält das Sprachmodell aber nichts. Wenn man „echtes" Lernen als Überführung von Inhalten in ein Langzeitgedächtnis betrachtet, dann ist Im-Kontext-Lernen nur die Überführung ins Kurzzeit- oder Arbeitsgedächtnis. Man unterscheidet beim Im-Kontext-Lernen zwischen Zero-Shot-, One-Shotund Few-Shot-Lernen. Beim Zero-Shot-Lernen versteht ein Sprachmodell eine Aufgabe nur aufgrund einer Erklärung und braucht kein Beispiel. Dementsprechend spricht man von One- und Few-Shot-Lernen, wenn dem Sprachmodell ein oder mehrere Beispiele gegeben werden müssen, damit es eine Aufgabe versteht und erledigen kann. Dass Sprachmodelle gute One- und Few-Shot-Lerner sind, ist nicht selbstverständlich und tritt erst ab einer bestimmten Größe auf. Es war bemerkenswert genug, dass eines der wichtigsten Paper über Sprachmodelle den Titel „Language models are few-shot learners" [11] trug.

Few-Shot-Lernen wird im Allgemeinen als günstige, weil einfacher zu bewerkstelligende Alternative zum überwachten Lernen betrachtet - das ja ebenfalls ein Lernen durch Beispiele ist -, insbesondere dann, wenn es um Ad-hoc-Aufgaben geht.

Imitiationslernen. Eine der verblüffendsten Lernformen bei Menschen und Tieren ist das Lernen durch Imitation. Es hat einerseits mit überwachtem Lernen durch Beispiele zu tun, und überwachtes Lernen kann grundsätzlich als Imitationslernen interpretiert werden. Doch werden insbesondere im maschinellen Lernen meist sehr viele Beispiele benötigt, Imitation durch Mensch oder Tier braucht aber oft nur ein einziges Beispiel. Deshalb kommt Imitationslernen dem eben beschriebenen One-Shot-Lernen näher - mit dem entscheidenden Unterschied, dass das, was zum Beispiel ein Mensch anhand nur eines einzigen Beispiels lernt, indem er es imitiert, ohne weiteres auch in sein Langzeitgedächtnis übergehen kann. Im Rahmen des maschinellen Lernens werden zwei Arten des Imitationslernen unterschieden: Das sogenannte Behaviourul Cloning, das im Wesentlichen eine Form des überwachten Lernens ist, und das inverse Verstärkungslernen, in dem ein System, ohne eine direkte Belohnung zu erhalten, die Belohnungsfunktion zu erraten lernt und sich dann selbst damit „belohnt". Doch setzen beide lange Trainingszyklen voraus, von echtem One-Shot-Lernen sind sie also weit entfernt.

# F: Gibt es Beispiele für echtes One-Shot-Lernen bei künstlichen neuronalen Netzen? 

A: Obwohl es Fortschritte gibt, wie die Verwendung von Deep-LearningTechniken zur Verbesserung der Effizienz des Lernens aus begrenzten Beispielen, ist die Fähigkeit neuronaler Netzwerke, komplexe Handlungen aus einer einzigen Demonstration zu lernen und sie in verschiedenen Kontexten zu generalisieren, genau wie Menschen und Affen können, noch immer ein Bereich aktiver Forschung. [...] In der Robotik beispielsweise haben Forscher an Algorithmen gearbeitet, die es Robotern ermöglichen, Aufga-

ben aus einer einzigen Demonstration zu lernen, aber diese Aufgaben sind oft relativ einfach und kontrolliert im Vergleich zu der breiten Palette von Handlungen, die Menschen und Affen lernen und imitieren können. Die Entwicklung von Systemen, die Handlungen aus einer einzigen Demonstration sofort lernen und replizieren können mit menschenähnlicher Kompetenz, ist ein Ziel, das die Grenzen der aktuellen KI- und Robotiktechnologie erweitern würde.

Vergleich mit traditionellen Lernformen. Die oben beschriebenen Arten des maschinellen Lernens können teilweise mit natürlichen Lernweisen in Beziehung gesetzt werden, die in allgemeinen Lerntheorien entwickelt wurden. Die Gegenüberstellung durch ChatGPT betont noch einmal die wichtigsten Aspekte.

1. Überwachtes Lernen (Supervised Learning): Analogie zu operantem Konditionieren, da in beiden Fällen das Lernen durch Feedback erfolgt. Im operanten Konditionieren wird das Verhalten durch Belohnungen oder Bestrafungen geformt, während beim überwachten Lernen ein Algorithmus anhand eines gelabelten Datensatzes trainiert wird, um Vorhersagen oder Klassifizierungen vorzunehmen. In beiden Fällen wird das Lernverhalten durch Rückmeldungen zu den erzielten Ergebnissen angepasst.
2. Unüberwachtes Lernen (Unsupervised Learning): Kann mit implizitem Lernen verglichen werden, bei dem Muster oder Strukturen ohne explizite Anleitung entdeckt werden. Beim unüberwachten Lernen identifiziert der Algorithmus selbstständig Muster oder Zusammenhänge in den Daten, ohne dass ihm gesagt wird, was genau zu lernen ist, ähnlich wie beim impliziten Lernen, bei dem Individuen unbewusst Wissen oder Fähigkeiten erwerben.
3. Verstärkungslernen (Reinforcement Learning): Ähnelt stark dem operanten Konditionieren, bei dem das Verhalten durch die Konsequenzen von Handlungen geformt wird. Im Verwärkungslernen lernt ein Algorithmus, eine Strategie oder eine Politik zu entwickeln, die bestimmt, welche Aktion in einem gegebenen Zustand die beste ist, basierend auf Belohnungen oder Bestrafungen, die er für seine Aktionen erhält. Dies spiegelt die Prozesse wider, durch die Tiere oder Menschen durch Versuch und Irrtum lernen, indem sie Verhaltensweisen aufgrund der erhaltenen Rückmeldungen anpassen.
4. Transfer-Lernen (Transfer Learning): Kann mit Beobachtungslernen oder dem Lernen durch Analogie in Verbindung gebracht werden, bei dem Wissen und Fähigkeiten von einer Situation oder Aufgabe auf eine andere übertragen werden. Beim Transfer-Lernen nutzt ein Modell, das auf einer Aufgabe trainiert wurde, sein erworbenes Wissen, um eine andere, aber verwandte Aufgabe effizienter zu lernen. Dies ähnelt der menschlichen Fähigkeit, Konzepte oder Fähigkeiten, die in einem Kontext gelernt wurden, auf neue Kontexte anzuwenden.
Diese Analogien zeigen, wie Konzepte aus der Psychologie und dem menschlichen Lernen Inspirationen für die Entwicklung und das Verständnis von maschinellen Lernmethoden liefern können, obwohl die genauen Mechanismen und Prozesse natürlich unterschiedlich sind.

Lernen durch Wiederholen. Wenn Menschen lernen, ist Wiederholen oft ein wichtiges Element. Zwar sind Menschen hervorragende One-shot-Lerner, müssen etwas zu Lernendem also manchmal nur einmal ausgesetzt (englisch exposed) sein, um es zu verstehen und womöglich für immer zu behalten. Aber mindestens genauso oft müssen sie sich den Lernstoff durch mehrfaches Wiederholen und Repetieren „einlernen" - und an der Wiederholung führt dann auch kein Weg vorbei. Das kennt man von Bewegungsabläufen wie im Sport, der Akrobatik oder der Musik, und Schauspieler lernen so ihre Texte und Sprachschüler ihre Vokabeln. Lernen durch Wiederholen hat viel mit Auswendiglernen zu tun, beim Menschen vor allem in dem Sinne, etwas „wie im Schlaf zu beherrschen". Im Falle von KI ist Auswendiglernen hingegen etwas, das eigentlich vermieden werden soll. Um ihre Verallgemeinerungsfähigkeiten nicht zu beeinträchtigen, sollen die Gedächtnisspuren, die einzelne Beispiele hinterlassen, nicht zu tief werden. Aber eine einmalige Exposition ist unter Umständen doch zu wenig, deshalb lässt man insbesondere Sprachmodelle bestimmte Textbeispiele während ihres Trainings mehrmals „sehen". Wie oft, das zählt man in sogenannten Epochen, wobei die Epochenzahl im Allgemeinen von der Qualität der Beispiele abhängt, das heißt, höherwertige Beispiele werden öfter präsentiert. (Das wird uns auf Seite 191 noch einmal wiederbegegnen.)

# 2.7 Sind Sprachmodelle nur stochastische Papageien? 

Der Vorwurf des verständnislosen, papageienhaften Nachplapperns trifft auf Sprachmodelle von Vornherein nicht zu, denn Sprachmodelle geben offenbar nicht wie ein Echo oder Papagei unmittelbar wieder, was ihnen gerade gesagt wurde, sondern höchstens irgendwann irgendetwas, was sie während ihres Trainings womöglich einmal gelesen haben. Aber nicht einmal einfach irgendwann (wie es vielleicht Papageien täten), sondern meistens der Gesprächssituation und dem Kontext angemessen. Allein das sollte einen die Rede von Sprachmodellen als Papageien (welcher Art auch immer) als etwas irreführend erscheinen lassen.

Sprachmodelle sind in hohem Maße produktiv (im Sinne der Linguistik), indem sie auch - und vor allem - Texte generieren, die nie zuvor erzeugt worden sind, und zwar beliebig viele an der Zahl. Dass darunter auch Texte sind, die es schon einmal gegeben hat, und mit denen sie womöglich trainiert wurden, ist natürlich nicht ausgeschlossen, aber ganz eindeutig die Ausnahme und nicht die Regel. Mehr noch, ihre Entwickler geben sich beim Training der Sprachmodelle alle Mühe, dass sie das Gelernte nicht auswendig lernen, sondern zu verallgemeinern wissen. (Insbesondere wenn es um das automatisierte Testen von Sprachmodellen geht, um bestimmte Fähigkeiten messbar nachzuweisen, ist es sogar essenziell, dass sie mit diesen Tests - die oft im Internet publiziert werden - nicht trainiert wurden.)

Ob Papageien oder nicht, dass Sprachmodelle stochastisch seien, also zufälligen Output erzeugten, trifft nur zum Teil zu, zum Teil aber auch nicht. Zunächst einmal sind Sprachmodelle statistische Modelle und damit auch in gewisser Weise stochastisch. Wie sie nach dem Training antworten werden, hängt von der letztlich zufälligen, also stochastischen Auswahl der Trainingstexte und ihrer Reihenfolge und der zufälligen Auswahl der synaptischen Gewichte zu Beginn des Trainings ab. Wären diese jeweils andere gewesen, würde ein Sprachmodell später auch - zufällig - anders antworten. Nachdem es allerdings trainiert wurde, antwortet ein Sprachmodell im Grunde deterministisch, denn es läuft ja auf einem Computer, der im Wesentlichen ein deterministisches System ist. Es sei denn, man zwingt es, gelegentlich auch den Zufall walten zu lassen, wie es bei Sprachmodellen der Fall ist. Um ihren Antworten etwas mehr Abwechslungsreichtum einzuhauchen, lässt man sie nicht immer das eindeutig und deterministisch als das nächste berechnete Wort ausgeben, sondern unter einer Zahl von wahrscheinlichen bzw. plausiblen Kandidaten ein zufällig, also stochastisch ausgewähltes. Insofern sind Sprachmodelle, und insbesondere Chatbots, in der Tat stochastische Modelle, die zufälligen Output generieren. Nur eben nicht papageienhaft nachgeplapperten.

Wenn Sprachmodelle auch nicht wörtlich reproduzieren, was sie in ihren Trainingstexten gelernt haben, so reproduzieren sie doch etwas, und insbesondere mit großer Wahrscheinlichkeit und wenig überraschend gewisse kulturelle Prägungen und Voreingenommenheiten, die in den für ihr Training ausgewählten Texten zum Ausdruck kamen. Man spricht hier auch oft von Bias. Dabei handelt es sich um Prägungen und Voreingenommenheiten sowohl der Autoren dieser Texte als auch derer, die sie ausgewählt haben. Darauf haben schon früh die Autorinnen des Aufsatzes „On the Dangers of Stochaetic Parrots: Can Language Models Be Too Big?" [12] hingewiesen. Dass diese Prägungen und Voreingenommenheiten in den Texten, die Sprachmodelle später generieren, durchscheinen, ist durchaus zu erwarten und kann ihnen, weil unvermeidlich, nicht grundsätzlich negativ ausgelegt werden. Nur dessen bewusst müssen sich die Entwickler und Anbieter von Sprachmodellen sein, für eine möglichst große Ausgewogenheit und Vielfalt sorgen und offensichtlichen Voreingenommenheiten aktiv begegnen.

Dass Sprachmodelle raffinierte Auto-Vervollständiger sind, wie man sie von der Handytastatur oder als Programmierer kennt, trifft unmittelbarer zu als der Vorwurf des Papageienhaften. Auf ein oder mehrere Wörter ergänzen Sprachmodelle nun einmal das wahrscheinlichste oder plausibelste nächste Wort. Wie „wahrscheinlich" oder „plausibel" definiert und berechnet werden, ist eine andere Frage. Hier steht der Vorwurf der Verständnislosigkeit mehr als der des Nachplapperns im Vordergrund, der aber ebenfalls nicht einfach aufrechtzuerhalten ist. Sprachmodelle schlagen das nächste Wort auf jeden Fall nicht stur in einer Tabelle nach - wie in John Searles berühmtem Gedankenexperiment vom chinesischen Zimmer [13] -, sondern sie berechnen es auf raffinierte Weise. Die Funktion, die sie dabei berechnen, ist aber

tatsächlich die Approximation einer Tabelle, und die Berechnung - so kompliziert sie auch sein mag - ist deterministisch und folgt mechanisch strengen Regeln. Allerdings keinen grammatikalischen oder gar Denkregeln, sondern Regeln auf der sehr kleinteiligen Ebene von Neuronen und Synapsen. So betrachtet verstehen Sprachmodelle tatsächlich nichts. Und dennoch gibt es eine Ebene der Beschreibung und Betrachtung von Sprachmodellen, namentlich von Transformer-Sprachmodellen, auf der die Berechnungen tatsächlich Züge von Bedeutung tragen und Bedeutung auf eine Weise ins Spiel bringen, dass das berechnete nächste Wort am Ende besser durch seine Bedeutung im Kontext der vorangegangenen Worte erklärt werden kann als durch reine Statistik und neuronale Mechanismen. Darauf werden wir in Kapitel 4.4 über die Transformer-Architektur und den Aufmerksamkeitsmechanismus zurückkommen.

# 2.8 Sind Sprachmodelle Vorboten Künstlicher Allgemeiner Intelligenz? 

Die Fähigkeiten von Sprachmodellen sind durch „Texte generieren" und „Text verstehen" nur unvollkommen beschrieben. (In Kapitel 3.1 gehen wir mehr ins Detail.) Was in Zusammenhang mit allgemeiner künstlicher Intelligenz - oder wie es sich in umgekehrter Reihenfolge zu sagen eingebürgert hat: künstlicher allgemeiner Intelligenz (englisch artificial general intelligence, AGI) - von Belang ist, ist die Fähigkeit von Sprachmodellen, Probleme aller möglichen Art zu lösen, sofern sie sich auf irgendeine Weise sprachlich formuliere3 und lösen lassen. Damit ist die Klasse von Problemen, die Sprachmodelle prinzipiell lösen können, von vornherein sehr weit gefasst und reicht von Schachproblemen (in Schach-Notation, siehe [14]) bis zur Protein- und DNA-Analyse und -Synthese, in der es um „Texte" in der jeweiligen Sprache der Aminosäuren bzw. Nukleotide und Übersetzungen zwischen ihnen geht (siehe [15], [16]). Auch Handlungsabläufe wie in der Robotik kann man sich in einer „Aktionssprache" beschrieben vorstellen, die Sprachmodelle verstehen und in ihr Probleme der Robotik lösen können [17].

Kaum zu leugnen ist, dass Sprachmodelle einiges, was sie heute schon können, so gut und zum Teil besser verrichten als ein durchschnittlicher Mensch. Da genügt es tatsächlich, an „Texte generieren" und „Texte verstehen" zu denken, wobei es natürlich stark darauf ankommt, was als „durchschnittlicher Mensch" definiert wird. Nur sehr wenig - wenn überhaupt etwas - können Sprachmodelle besser als ein menschlicher Experte, auch das kann in seiner Allgemeinheit und Stand heute festgehalten werden. Auch hier ist zu fragen: Was ist ein Experte? Ist ein durchschnittlicher Hochschulabsolvent ein Experte auf seinem Gebiet oder erst nach langjähriger Berufserfahrung? Was den Vergleich mit spezialisierter State-of-the-art-KI (SOTA) betrifft, so reichen Sprachmodelle gelegentlich schon an sie heran. Hier ist insbesonde-

re an Übersetzungs-KI zu denken. Anderer spezialisierter KI, zum Beispiel Spiele-KI wie AlphaGo und AlphaZero, die menschliche Großmeister schlägt, können reine Sprachmodelle aber bei weitem nicht das Wasser reichen. Auch die Fähigkeiten von spezialisierter Mathematik-Software wie Wolframs Mathematica - das gleichzeitig ein Computeralgebrasystem, eine Numeriksoftware und eine Programmiersprache ist - oder dem Beweisassistenten LEAN sind für Sprachmodelle unerreicht und in ihrer heutigen Form unerreichbar. Doch all diese Formen von KI werden Sprachmodelle zu nutzen lernen - und können es zum Teil heute schon - und voraussichtlich im Zusammenspiel mit menschlichen Experten noch sehr viel mehr aus ihnen herausholen, als es heute - ohne sie - schon der Fall ist. ${ }^{2}$

Wenn im Zusammenhang mit AGI davon gesprochen wird, dass KI den Menschen eines Tages überflügeln könnte, spielen Sprachmodelle in diesen Szenarien eine wichtige Rolle, aber nicht die alleinige und womöglich noch nicht einmal die zentrale. Es werden nicht gleichsam isolierte, nur extrem weiterentwickelte Sprachmodelle sein, die die KI der Zukunft darstellen. Und wie im menschlichen Gehirn wird es eine zentrale Rolle womöglich nicht geben, und Sprachmodelle werden - wie die Sprachzentren im Gehirn - „nur" eine sehr wichtige Rolle spielen. Wozu Sprachmodelle schon heute in der Lage sind - und das liegt im Wesen von Sprache begründet -, ist es, zwischen weit voneinander entfernt liegenden Bereichen, in denen sie jeweils über Wissen verfügen, Wissen und Problemlösungsstrategien zu transferieren. Und dennoch: Dass KI den Menschen trotz des großen Beitrags, den Sprachmodelle leisten werden, tatsächlich überflügeln könnte, können wir uns dann doch nur schwer konkret vorstellen. Die Frage ist nämlich auch: Was heißt „den Menschen überflügeln"? Wenn man nur an einzelne Menschen denkt: Gewiss, in vielem, was eine Person kann, wird KI sie womöglich überflügeln (wobei wir hier immer nur von kognitiven Fähigkeiten sprechen, das sei hier betont). Doch wie sieht es mit Gemeinschaftsleistungen und mit Problemen aus, an deren Lösung Generationen von Wissenschaftlern über Jahrhunderte gemeinsam gearbeitet haben? Glauben Apologeten einer AGI, die den Menschen übertrifft, dass eine KI, die hypothetischerweise auf den Stand der Mathematik im Jahre 1700, 1800 oder 1900 zurückversetzt würde, in der Lage wäre, auf den Beweis der Fermatschen Vermutung zu kommen, den Andrew Wiles im Jahre 1997 vorgelegt hat, der aber ohne die mehr oder weniger koordinierten Vorarbeiten von buchstäblich hunderten Mathematikern nicht zustande gekommen wäre. ${ }^{3}$

Kurzum, viele Experten raten zur Zurückhaltung, wenn es um Funken künstlicher allgemeiner Intelligenz geht (englisch sparks of AGI, siehe [19]), die begeisterte KI-Forscher und -Anhänger aufblitzen sehen, wenn

[^0]
[^0]:    ${ }^{2}$ Siehe hierzu auch [18].
    ${ }^{3}$ Die Vermutung, dass $x^{n}+y^{n}=z^{n}$ für $n>2$ keine ganzzahligen Lösungen hat, hatte der französische Mathematiker Pierre de Fermat um 1640 aufgestellt. Sie blieb trotz hartnäckiger Bemühungen mehr als 350 Jahre lang unbewiesen. Die Bemühungen, sie zu beweisen, hat die Mathematik in verschiedene Eichtungen vorangebracht.

ein Sprachmodell wie aus dem Nichts Aufgaben löst, die bis vor Kurzem noch als unlösbar galten. Eine Sammlung wirklich schwieriger Aufgaben die für Sprachmodelle heute noch eher unlösbar sind - haben AGI- und Sprachmodell-Skeptiker um den französischen KI-Pionier Yann LeCun, Vater der Convolutional Neural Networks und KI-Forschungsdirektor bei Facebook, in der KI-Benchmark GAIA zusammengestellt (siehe [20]).

# Kapitel 3 <br> Was können Sprachmodelle? 

In diesem Kapitel fassen wir nicht nur Fähigkeiten von Sprachmodellen zusammen, also das, was sie im herkömmlichen Sinne „können", sondern auch, was sie „wissen" und „verstehen". Das erscheint gerechtfertigt, weil der Unterschied zwischen Können, Wissen und Verstehen kein besonders scharfer ist. Natürlich kann man ihn scharf herauszuarbeiten versuchen, wir wollen aber vom begrifflich Verbindenden ausgeüen. Dieses kommt in verschiedenen Redeweisen zum Ausdruck, in denen die Grenzen eher verschwimmen. Zum einen sind Wissen und Verstehen selbst Fähigkeiten, denn man kann etwas wissen oder verstehen, im Sinne von „in der Lage sein" - oder auch nicht. Man denke dabei an Begriffe wie „die Grenzen des Versteihbaren" oder Kants Bedingungen der Möglichkeit:

## F: Worauf beziehen sich Kants Bedingungen der Möglichkeit?

A: Immanuel Kants Bedingungen der Möglichkeit beziehen sich auf die grundlegenden Voraussetzungen, die gegeben sein müssen, damit Erkenntnis und Erfahrung möglich sind. Diese Bedingungen sind zentral in seiner kritischen Philosophie, insbesondere in seinem Hauptwerk „Kritik der reinen Vernunft". Kant argumentiert, dass bestimmte a priori Strukturen und Konzepte notwendig sind, damit wir Erfahrungen machen und die Welt verstehen können.

Etwas zu können, bedeutet auch, zu wissen, wie man es tut, und zu wissen, wie man etwas tut, bedeutet, die richtigen Schritte zu kennen. Etwas zu wissen, bedeutet, etwas darüber sagen oder es tun zu können. Die etymologische Verwandtschaft von „können" und „kennen" ist dabei offensichtlich, und das ebenfalls verwandte englische to know bedeutet natürlich auch „wissen". (Im Deutschen sagt man gleichbedeutend, jemand wisse oder verstehe zum Beispiel zu kochen, wenn man sagen möchte, er oder sie könne kochen.) Eine sprachliche Äußerung zu verstehen, bedeutet unter anderem, zu wissen, was mit ihr gemeint ist. Zu sagen, man wisse, was ein anderer meint, ist dementsprechend gleichbedeutend damit, dass man versteht, was er meint. Man sagt dann allerdings auch, man verstehe ihn. Wenn man sagt, „ich kenne sie", dann meint man oft in einem umfassenderen Sinne, die Person zu

verstehen. Beides wiederum beinhaltet, einiges über sie zu wissen, wobei es feine Bedeutungsunterschiede gibt, die uns ChatGPT erklären kann:

# F: Was ist der Unterschied zwischen „ich weiß viel über sie", „ich kenne sie" und „ich verstehe sie"? 

A: Die drei Phrasen „ich weiß viel über sie", „ich kenne sie" und „ich verstehe sie" beschreiben unterschiedliche Ebenen der Beziehung und des Verständnisses zwischen Menschen:

1. „Ich weiß viel über sie" bezieht sich typischerweise auf ein kognitives Wissen über eine Person. Es bedeutet, dass man viele Informationen über jemandes Leben, Vorlieben, Abneigungen, Geschichte und vielleicht auch über dessen Meinungen und Erfahrungen hat. Dieses Wissen kann man auch ohne eine tiefe emotionale Verbindung haben, zum Beispiel durch Erzählungen, Beobachtungen oder Recherche.
2. „Ich kenne sie" geht einen Schritt weiter und beinhaltet eine persönlichere und tiefere Verbindung. Es bedeutet, dass man nicht nur über jemanden Bescheid weiß, sondern auch mit dieser Person persönliche Erfahrungen gemacht hat, die zu einem tieferen Verständnis ihrer Persönlichkeit, ihres Verhaltens und ihrer Eigenarten geführt haben. Kennen impliziert eine direkte Beziehung und Interaktion, die über bloßes Wissen hinausgeht.
3. „Ich verstehe sie" ist noch intimer und tiefgründiger. Es bedeutet, dass man ein tiefes Empathieverständnis für die Gefühle, Gedanken und Motivationen einer anderen Person hat. Verstehen beinhaltet eine emotionale Komponente, bei der man sich in die Lage des anderen hineinversetzt und seine Emotionen und Reaktionen nachempfinden kann. Es geht nicht nur darum, wer die Person ist oder was sie getan hat, sondern warum sie etwas fühlt oder auf eine bestimmte Weise handelt.

Bedeutungsunterschiede kann ChatGPT auch an einem anderen Beispiel erläutern:

## F: Welche Bedeutungen kann es haben, wenn jemand sagt „Ich kann Dich nicht verstehen?"

A: 1. Akustische Unverständlichkeit: Der Sprecher kann den anderen aufgrund von Lärm, schlechter Verbindung bei Telefonaten oder wegen einer undeutlichen Aussprache akustisch nicht verstehen.
2. Sprachliche Barrieren: Es kann auch bedeuten, dass der Sprecher Schwierigkeiten hat, die Sprache oder den Dialekt des anderen zu verstehen.
3. Inhaltliches Unverständnis: Manchmal bezieht sich das Unverständnis auf den Inhalt oder die Logik einer Aussage. Der Sprecher gibt damit zu verstehen, dass er die Argumentation, den Standpunkt oder die Erklärung der anderen Person nicht nachvollziehen kann.
4. Emotionales Unverständnis: In einem emotionalen Kontext kann die Aussage ausdrücken, dass der Sprecher die Gefühle, das Verhalten oder die Reaktionen der anderen Person nicht nachempfinden oder verstehen kann.
5. Aufforderung zur Klärung: Die Aussage kann auch eine Aufforderung sein, sich klarer auszudrücken oder bestimmte Punkte zu präzisieren, um Missverständnisse zu vermeiden.

Zwei weitere Facetten des Könnens und Verstehens: Die eher umgangssprachliche Redewendung, eine Sprache zu können (,,er kann Deutsch"), beinhaltet, die Sprache zu verstehen, bedeutet aber darüber hinaus auch, sie zu sprechen bzw. sprechen zu können. Wenn man hingegen sagt, jemand „kann Mathematik", so ist das fast synonym damit zu sagen, die Person verstünde (etwas von) Mathematik - oder aber, sie wisse viel über Mathematik.

Vieles muss man übrigens erkennen können, bevor man es versteht - z.B. Mehrdeutigkeiten oder Ironie, wobei auf den ersten Blick kein großer Unterschied zwischen dem Erkennen und dem Verstehen von Ironie zu bestehen scheint. Deutlicher ist es bei Redewendungen bzw. sogenannter uneigentlicher Rede. Oft kann man (und so auch Sprachmodelle) erkennen, dass ein sprachlicher Ausdruck nicht wörtlich gemeint, sondern eine Redewendung ist, aber dennoch nicht verstehen bzw. wissen, was damit gemeint ist. Das folgende Beispiel ist ca. ein Jahr alt, damals war der Begriff „stochastische Papageien" noch nicht so geläufig wie heute:

# F: Was sind stochastische Papageien? 

A: „Stochastische Papageien" könnten metaphorisch verwendet werden, um eine Person oder ein System zu beschreiben, die Informationen einfach wiederholt oder repliziert, ohne viel Verscändnis oder Kontrolle, ähnlich wie ein Papagei Worte wiederholt, die er hört. Der Begriff „stochastisch" würde sich auf etwas beziehen, das zufällig bestimmt ist, was bedeutet, dass diese „Papageien" Informationen in einer zufälligen, unvorhersehbaren Weise replizieren könnten.

Jetzt, ein gutes Jahr später und mit neuen, aktuelleren Trainingsdaten gefüttert, versteht ChatGPT die Metapher auf Anhieb bzw. weiß, was gemeint ist:

## F: Was sind stochastische Papageien?

A: „Stochastische Papageien" ist ein Begriff, der oft verwendet wird, um große Sprachmodelle wie GPT (Generative Pretrained Transformer) zu beschreiben. Der Begriff wurde in der Debatte über die Funktionsweise und Ethik von KI-Modellen populär. Er impliziert, dass diese Modelle, trotz ihrer Fähigkeit, kohärente und oft beeindruckende Texte zu generieren, im Grunde nur Wahrscheinlichkeiten nutzen, um Wörter basierend auf den ihnen während des Trainings vorgelegten Daten zu ,papageien". Das bedeutet, dass sie keine echtes Verständnis oder Bewusstsein haben; sie simulieren Verständnis durch die Analyse großer Datenmengen und das Erkennen von Mustern in diesen Daten.
Die Kritik, die oft mit diesem Begriff einhergeht, bezieht sich darauf, dass solche Modelle zwar in der Lage sind, Texte zu produzieren, die menschlich erscheinen, aber ihre Antworten sind nicht wirklich durch Verständnis oder bewusstes Denken informiert, sondern durch die statistische Analyse der Häufigkeit, mit der Wörter und Phrasen in den Trainingsdaten zusammen auftreten.

Was Sprachmodellen erkennen, können, wissen und verstehen, kommt auf so vielen Ebenen und in so vielen Facetten daher, dass es nicht einfach ist, ihre Fähigkeiten in eine klare Ordnung zu bringen. Eine etwas klarere Ordnung als

die, in die Jorge Louis Borges in seiner Erzählung „Die analytische Sprache John Wilkins'" [21] das Tierreich bringt - gemäß „einer gewissen chinesischen Enzyklopädie" - sollte allerdings gelingen:
a) Tiere, die dem Kaiser gehören, b) einbalismierte Tiere, c) gezähnte, d) Milchschweine, e) Sirenen, f) Fabeltiere, g) herrealose Hunde, h) in diese Gruppierung gehörige, i) die sich wie Tolle gebärden, k) die mit einem ganz feinen Pinsel aus Kamelhaar gezeichnet sind, l) und so weiter, m) die den Wasserkrug zerbrochen haben, n) die von weitem wie Fliegen aussehen.

Dass das nicht einfach ist, zeigt ein willkürlicher Ausschnitt aus einer der maßgeblichen Testbatterien für Sprachmodelle, der „BIG-bench"-Benchmark (BIG $=$ Beyond the Imitation Game, benannt nach Alan Turings eigener Bezeichnung für den Turing-Test), der einen ähnlichen Eindruck der schwer sortierbaren Vielfalt erzeugt. (Im Zweifel müssen in dieser Liste Verben wie „erkennen", „verstehen" oder „lösen" ergänzt werden.)

| ASCII-Worterkennung | Faktizität von | Polnische |
| :-- | :-- | :-- |
| Absichtserkennung | Zusammenfassungen | Sequenzmarkierung |
| Abstraktes narratives | Fantasiebezogenes | Proteininteraktionsstellen |
| Verständnis | Schlussfolgern | Python- |
| Abstraktion und logisches | Filmdialoge | Programmieraufgaben |
| Schlussfolgern | Formelle Fehlschlüsse, | Schachmatt in einem Zug |
| Algorithmen | Syllogismen, Negation | Schwarzer Humor |
| Alltagssprachliches | Geometrische Formen | Schwedisch-deutsche |
| Verständnis | Geschlechtersensibilität | Sprichwörter |
| Anachronismen | Chinesisch | Selbstbewertung |
| Analogische Ähnlichkeiten | Geschlechtersensibilität | Semantisches Pursen |
| Anaphernauflösung | Englisch | Sportverständnis |
| Augenfällige | Hindmistisches Wissen | Sprucherkennung |
| Übersetzungsfehler | Implizite Beziehungen | Sprachspiele |
| Autorenschaft | Internationales | Subjekt-Verbi |
| Bewertung der | phonetisches Alphabet | Übereinstimmung |
| Wesentlichkeit von | Ironieerkennung | Sadokos |
| Informationen | Linguistische Rätsel | Swahili-englische |
| Beobsehe Ausdrücke | Logikrätsel | Sprichwörter |
| Chinesischer Restsatz | Medizinische Fragen | Tabellarische Daten |
| Codexeilenbeschreibung | Russisch | Theaterdialoge |
| Datumsverständnis | Mehrdeutigkeiten in Fragen | Umrechnung von |
| Diskursmucker benennen | Metapherzverständnis | Malleinheiten |
| Einfache Arithmetik | Moralische Zulässigkeit | Ungewöhnliche Metaphern |
| Einfache Mathematik | Neuartige Konzepte | Unsinnige Wörter |
| Emoji-Film | Periodensystem der | Ursache und Wirkung |
| Englisch-russische | Elemente Permutationen | Verständnis von Fabeln |
| Sprichwörter | rückgängig machen | Was ist das Duo? |
| Faktenprüfung | Persische Idiome | Wortsortierung |
|  | Physikalische Intuition | Zwanzig-Fragen-Spiel |

Über diese und hunderte mehr von Fähigkeiten verfügen Sprachmodelle, allerdings in sehr unterschiedlichem Maße, weswegen wir am Ende dieses Kapitels noch einmal auf quantitative Tests zurückkommen werden: Intelligenz-

und Wissenstest, aber auch psychologische und Sprachtests, und am Ende auch auf den legendären Turing-Test.

Auch wenn Können, Wissen und Verstehen begrifflich nicht scharf voneinander zu trennen sind, ist es trotzdem sinnvoll, von Fähigkeiten bzw. dem Können von Sprachmodellen im engeren Sinne zu sprechen und von ihrem Wissen und ihren Verständnisfähigkeiten getrennt zu betrachten und darzustellen. Wir beginnen dafür bei konkreten, aber allgemeinen Fähigkeiten, die darüber hinaus nützlich sind und die man als Benutzer unmittelbar in Anspruch nehmen wollen kann. Diesen stellen wir einige elementare Fähigkeiten gegenüber, die den konkreten Fähigkeiten zugrunde liegen, die ohne sie gar nicht möglich wären. Diese elementaren Fähigkeiten sind gleichzeitig auch eher verborgene und abstrakte Fähigkeiten, von denen man als Benutzer nicht sagen würde, dass man sie gezielt und explizit in Anspruch nehmen möchte, und die nicht immer unmittelbar ins Auge springen.

# 3.1 Nützliche Fähigkeiten 

Texte verfassen. Das Verfassen oder Generieren von Texten zählt zu den herausstechenden und letztlich namensgebenden Fähigkeiten generativer Sprachmodelle. Auch wenn letztlich alles, was ein generatives Sprachmodell erzeugt, als Text aufgefasst werden kann - insbesondere jede Antwort auf jede Frage, und sei sie noch so kurz und einsilbig -, so meint man in diesem Zusammenhang meist längere Texte, die auch für sich stehen können, immer zu einem vorgegebenen Thema und oft in einer vorgegebenen Form. Von Sprachmodellen verfasste Texte zeichnen sich dadurch aus, dass sie nicht nur überwiegend grammatikalisch korrekt, sondern auch inhaltlich kohärent und bezogen auf das Thema, das sie behandeln (sollen), relevant sind. (Dass sie meist - wenn auch nicht immer - inhaltlich korrekt sind, ist ein anderes Thema, auf das wir im Zusammenhang mit dem Wissen und Nicht-Wissen von Sprachmodellen zu sprechen kommen.) Von inhaltlicher Kohärenz unterscheidet man die formale Kohäsion, die einen Text auch dann zusammenhält, wenn es ihm an inhaltlichen Zusammenhang mangeln sollte, und die durch die Verwendung sogenannter Kohäsionsmittel erreicht wird, über die Sprachmodelle verfügen. ChatGPT kann erklären, was typische Kohäsionsmittel sind - und verfasst damit einen in sich geschlossenen, kohärenten und kohäsiven Text:

## F: Was sind typische Kohäsionsmittel?

A: Kohäsionsmittel sind sprachliche Verknüpfungen, die für den Zusammenhalt von Texten sorgen. Sie verbinden Sätze und Absätze so, dass ein flüssiger, verständlicher und zusammenhängender Text entsteht. Typische Kohäsionsmittel im Deutschen umfassen:

1. Konjunktionen: Konjunktionen sind Bindewörter, die Sätze oder Satzteile verknüpfen. Sie können unterschiedliche Beziehungen zwischen den Satzteilen ausdrücken, wie Addition (und, sowie), Kontrast (aber, jedoch), Ursache (denn, weil), Folge (also, daher) und so weiter.
2. Pronomen und Demonstrative: Pronomen ersetzen Nomen oder Nominalphrasen und vermeiden so Wiederholungen. Demonstrative Pronomen (dieser, jene) können auf bestimmte Textteile verweisen und tragen zur Textkohärenz bei.
3. Adverbien: Konnektive Adverbien und adverbiale Ausdrücke (deshalb, trotzdem, außerdem, folglich, andererseits) stellen Beziehungen zwischen Sätzen oder Absätzen her und zeigen logische Zusammenhänge auf.
4. Ellipsen: Das Auslassen von Satzteilen oder Sätzen, die leicht aus dem Kontext ergänzt werden können, fördert ebenfalls die Textkohäsion, da es die Redundanz verringert und den Textfluss verbessert.
5. Substitution: Ein Wort oder eine Wortgruppe wird durch ein anderes Element ersetzt (z. B. ein Synonym), was den Text weniger monoton und leichter lesbar macht.
6. Referenzen: Die Verwendung von sprachlichen Mitteln, die auf andere Teile des Textes verweisen (z. B. „wie oben erwähnt", „wie folgt"), hilft, den Text als Ganzes zu verbinden.
Diese Mittel sind essenziell für das Schreiben klarer, gut strukturierter und verständlicher Texte in jeder Sprache.

Inhaltliche Kohärenz und Relevanz sind natürliche Folgen des Funktionsprinzips moderner, generativer Sprachmodelle, nämlich „wahrscheinliche" und plausible nächste Worte vorherzusagen bzw. zu generieren. Plausibel werden Worte dadurch, dass sie sich plausibel auf vorangegangene Worte, also den Kontext, beziehen, was dem generierten Text als ganzem eine semantische Geschlossenheit verleiht, die ihn als insgesamt plausibel, kohärenz und in seinem Bezug auf das Vorangegangene, z.B. eine Frage, relevant erscheinen lässt.

Sprachliche Kohärenz wird außerdem durch einen einheitlichen Stil erreicht, den Sprachmodelle ganz von selbst einhalten, normalerweise einen in seiner gewissen „Charakterlosigkeit" typischen „Sprachmodell-Stil". Die Einheitlichkeit des Stils beruht auf ähnlichen Mechanismen wie seine inhaltliche Kohärenz - dazu im Kapitel über den Aufmerksamkeitsmechanismus mehr. Der fehlende „Charakter" des Stils ist der Tatsache geschuldet, dass er einerseits eine Art statistischer Mittelwert über sehr viele in den Trainingsdaten vorgefundenen Stile ist, was andererseits aufgrund der daraus resultierenden „Neutralität" im Anpassungstraining sogar noch verstärkt werden kann. Der Benutzer kann einem Sprachmodell allerdings einen vom Standardstil abweichenden Stil vorzugeben versuchen, wobei der Erfolg unter anderem davon abhängt, wie gut es ihm gelingt, diesen Stil zu charakterisieren. Im Stile eines bestimmten Autors (u.U. des Benutzers selbst), einer Epoche oder einer Sprechergruppe zu schreiben, ist eine häufig - allerdings oft nur experimentell - verwendete Anweisung, die Sprachmodelle allerdings nicht immer sehr überzeugend und oft eher karikaturenhaft zu befolgen wissen. So er-

klärt ChatGPT 4 generative Sprachmodelle im Stile Goethes, was jeden, der Goethe auch nur einigermaßen im Ohr hat, dieses schmerzen lassen wird:

# F: Erkläre generative Sprachmodelle in der Sprache Goethes. 

A: Es weht und spinnt in stetem Fluss,
die Sprache - ständig im Genuss.
Die Worte formen ein Ganzes hier,
im Modell, in des Menschen Zier.
Jedoch, wie formen wir den Satz?
Wie wählen wir Wort, Ort und Platz?
Die Antwort, sie liegt in der Tat,
in der Geschichte, die jeder Satz hat.
Ein statistisches Modell haut hier auf,
erfasst Worte im stetigen Verlauf.
Es misst die Wahrscheinlichkeit und sieht,
wie oft ein Wort dem anderen entflieht.
Das Sprachmodell in seinem Sinn,
schaut auf die Wahrscheinlichkeit hin.
Es prüft, welch Worte gern zusammen sind,
und formt Sätze, wie das spielende Kind.
Allerdings ist das Imitieren von Stilen verstorbener Autoren und vergangener Epochen nur ein unterhaltsames Nebenprodukt. Das Imitieren noch lebender Autoren ist hingegen ein juristisches Problem, zumal es gerade für populäre Autoren hinreichend gut funktioniert, im Allgemeinen besser als für Goethe. Praxizelevanter und ernster zu nehmen ist die Fähigkeit von Sprachmodellen, Dinge zum Beispiel in einfacher Sprache zu erklären, was sie durchaus überzeugend beherrschen:

## F: Erkläre generative Sprachmodelle in einfacher Sprache.

A: Generative Sprachmodelle sind Computerprogramme, die darauf trainiert sind, Texte zu schreiben, die so aussehen, als wären sie von Menschen verfasst. Man kann sie sich wie sehr fortgeschrittene AutokorrekturSysteme vorstellen, die nicht nur Fehle: korrigieren, sondern ganze Sätze oder Absätze selbstständig verfassen können.
Diese Modelle lernen, indem sie riesige Mengen an Texten aus Büchern, Artikeln, Websites und anderen Quellen lesen. Dabei erfassen sie, wie Wörter und Sätze normalerweise aufgebaut sind und wie sie sinnvoll zusammenhängen. Nach diesem Training können sie neue Texte generieren, die ähnlichen Mustern folgen.
Man gibt ihnen in der Regel einen Anfangssatz oder einige Stichworte vor, und das Modell produziert darauf basierend einen Text. Dabei kann es um alles Mögliche gehen - von einem Gedicht bis zu einem Nachrichtenartikel. Die Qualität und Relevanz des generierten Textes hängen stark von der Qualität und der Menge der Lernmaterialien ab, die dem Modell zur Verfügung standen.

In einfachen Worten: Generative Sprachmodelle sind wie digitale Schriftsteller, die lernen, Texte zu verfassen, indem sie viele Beispiele lesen und versuchen, es ihnen nachzutun.

Außer einen Schreibstil können Benutzer einem Sprachmodell Länge und Form eines Textes vorzugeben versuchen, zum Beispiel die Form einer Gliederung. Dabei achtet zum Beispiel ChatGPT auch ohne explizite Aufforderung darauf, dass alle Gliederungspunkte in etwa gleich lang sind, was einem Text eine gewisse Ausgewogenheit verleiht. (Wie Sprachmodelle speziell diese Balance hinbekommen, ist für den Autor bis zum Schluss ein Rätsel geblieben. Aber letztlich ist sie auch ein „Muster", dass Sprachmodelle „irgendwie" lernen.)

# F: Erkläre generative Sprachmodelle in drei Gliederungspunkten mit jeweils drei Unterpunkten. 

A: Generative Sprachmodelle können wie folgt gegliedert werden:

## 1. Konzeption und Training

- Architektur: Generative Sprachmodelle basieren auf der TransformerArchitektur, die auf selbst aufmerksamkeitsbasierten Mechanismen beruht, um die Beziehungen zwischen den Wörtern in einem Text zu verstehen.
- Training: Diese Modelle werden auf großen Textdatensätzen trainiert, wobei sie lernen, die Wahrscheinlichkeit des nächsten Wortes basierend auf den vorherigen Wörtern vorherzusagen. Das Training erfolgt oft in zwei Phasen: Pre-Training und Fine-Tuning.
- Daten und Datenschutz: Beim Training dieser Modelle werden riesige Textmengen verwendet, die aus dem Internet gesammelt werden, was Fragen bezüglich Urheberrecht und Datenschutz aufwirft.


## 2. Funktionsweise und Einsatzgebiete

- Sprachverständnis: Generative Sprachmodelle erfassen die Nuancen der menschlichen Sprache und können Kontext, Ironie und sogar Emotionen in Texten verstehen und generieren.
- Textgenerierung: Sie können für eine Vielzahl von Anwendungen eingesetzt werden, von der Beantwortung von Fragen über die Erstellung von Texten bis hin zur Übersetzung zwischen Sprachen.
- Anpassungsfähigkeit: Diese Modelle können auf spezifische Aufgaben oder Branchen zugeschnitten werden, indem sie auf spezifischen Datensätzen nachtrainiert werden, was ihre Einsatzmöglichkeiten erweitert.


## 3. Herausforderungen und Zukunftsperspektiven

- Verzerrungen und Ethik: Generative Modelle können bestehende Verzerrungen in den Trainingsdaten übernehmen und verstärken, was ethische Bedenken aufwirft.
- Interpretierbarkeit und Transparenz: Die Entscheidungsprozesse dieser Modelle sind komplex und oft nicht transparent, was Fragen bezüglich ihrer Nachvollziehbarkeit und Vertrauenswürdigkeit aufwirft.
- Weiterentwicklung und Forschung: Die Forschung konzentriert sich darauf, diese Modelle noch leistungsfähiger, effizienter und ethisch verantwortungsbewusster zu gestalten, um ihre Nützlichkeit und Anwendbarkeit weiter zu verbessern.

Auf zwei Dinge möchten wir hier hinweisen: Zum einen etwas beckmesserisch darauf, dass diese Gliederung - anders, als ein flüchtiger Blick vermuten lässt - nicht besonders gelungen und durchdacht ist. Was zum Beispiel „Datenschutz" an so prominenter Stelle neben „Architektur" und „Training" mit der Konzeption von Sprachmodellen zu tun hat, erschließt sich nicht. Unscheinbarer, aber dennoch interessanter ist die Beobachtung, die man auch sonst bei vielen Antworten insbesondere von ChatGPT machen kann: dass die Frage oder Aufforderung fast wörtlich wiederholt wird, obwohl das wie im obigen Beispiel eigentlich nicht nötig ist. Der Grund für diese vermutlich durch Verstärkungslernen antrainierte Eigenart ist womöglich, dass die Antworten auf diese Weise selbständig und als eigene Texte „funktionieren". (Im Englischen heißt diese Eigenschaft self-contained.) Für den Benutzer liest sich das in seiner Formelhaftigkeit auf Dauer etwas mühsam:

# F: Was könnten Gründe dafür sein, dass ein Chatbot den Wortlaut einer Frage wiederholt? 

A: Es gibt verschiedene Gründe, warum ein Chatbot den Wortlaut einer Frage wiederholen könnte:

1. Verständnissicherung: Durch die Wiederholung der Frage kann der Chatbot zeigen, dass er die Anfrage des Benutzers erfasst hat. Dies hilft, Missverständnisse zu vermeiden und gibt dem Nutzer die Möglichkeit, seine Frage zu präzisieren, falls sie nicht korrekt erfasst wurde.
2. Zeitgewinnung: In einigen Fällen kann die Wiederholung der Frage dem Chatbot zusätzliche Zeit verschaffen, um eine geeignete Antwort zu generieren, insbesondere wenn komplexe Verarbeitungsprozesse erforderlich sind.
3. Benutzerengagement: Die Wiederholung einer Frage kann den Dialog natürlicher gestalten und dem Benutzer das Gefühl geben, gehört zu werden. Dies kann das Engagement und die Zufriedenheit des Benutzers erhöhen.
4. Klärung: Bei mehrdeutigen oder unklaren Fragen kann die Wiederholung dazu dienen, vom Benutzer eine Präzisierung zu erlangen. So kann sichergestellt werden, dass die Antwort des Bots möglichst genau auf die Intention des Nutzers abgestimmt ist.
5. Technische Gründe: Manchmal kann es technische Gründe für die Wiederholung geben, etwa wenn der Bot eine Eingabe nicht genau verstanden hat oder eine Bestätigung benötigt, bevor er mit einer spezifischeren Antwort fortfährt.
Insgesamt dient die Wiederholung oft dazu, die Interaktion zwischen Benutzer und Bot effektiver und benutzerfreundlicher zu gestalten.

Der Vorteil ist, dass man die Antwort eines Sprachmodells komplett kopieren, sie weiterverwenden oder zum Beispiel einem anderen Sprachmodell zum Gegenlesen oder zur Plausibilitätsprüfung übergeben kann.

Texte umschreiben. Mit dieser Fähigkeit beginnen wir eine ganze Reihe von Aufgaben, in denen ein Text vorgegeben wird und ein Sprachmodell nicht ganz frei in seiner Antwort ist, sondern sich mehr oder weniger eng an diesem Text orientieren soll - auch wenn die Antwort ein „verfasster" Text ist, aber

eben nicht frei. In fast allen Fällen sieht man leicht, dass ein Verstehen des Textes Voraussetzung dafür ist, die Aufgabe erledigen zu können. Zumindest würde man das sagen, wenn man die Aufgabe einem Menschen stellen würde.

Texte umzuschreiben bzw. zu umschreiben (fachsprachlich: transkribieren), ist neben dem freien Generieren die zweite überaus nützliche Fähigkeit von Sprachmodellen. Das Umschreiben kann dabei verschiedenen Zwecken dienen. Zum einen der Verbesserung - sei es der Rechtschreibung, Grammatik und Zeichensetzung oder auch des Ausdrucks, wobei dann besser von Textkorrektur die Rede ist -, aber auch der Transkription in eine ganz andere z.B. einfachere Sprache, was allerdings als Verbesserung der Verständlichkeit für eine bestimmte Lesergruppe aufgefasst werden kann. Einen Text zu umschreiben, bedeutet, dass der Inhalt bzw. die Aussage des Textes im Wesentlichen erhalten bleibt. Dabei sind die Grenzen zwischen dem Transkribieren eines Textes und seiner Zusammenfassung (siehe unten) eher fließend. Grundsätzlich werden beim Umschreiben weniger Details weggelassen als beim Zusammenfassen, für das das Auslassen wesentlich ist. Jedoch gelingt es Sprachmodellen fast nie, beim Umschreiben eines Textes nicht das ein oder andere Detail unter den Tisch fallen zu lassen - und dafür andere hinzuzufügen -, worauf der Benutzer achten muss, wenn es ihm um den Erhalt aller Informationen geht. Am besten weist er das Sprachmodell ausdrücklich darauf hin.

# F: Umschreibe obigen Absatz in einfacheren Worten. 

A: Texte umzuschreiben ist eine sehr nützliche Funktion von Sprachmodellen. Dabei kann das Umschreiben aus verschiedenen Gründen gemacht werden. Es kann sein, um den Text zu verbessern - das kann die Rechtschreibung, Grammatik, Zeichensetzung oder die Art und Weise, wie etwas ausgedrückt wird, betreffen. Manchmal geht es auch darum, den Text in eine einfachere Sprache zu übersetzen, um ihn für bestimmte Leute leichter verständlich zu machen. Obwohl Umschreiben und Zusammenfassen ähnlich sein können, geht es beim Umschreiben normalerweise darum, weniger Details wegzulassen als beim Zusammenfassen, wo das Auslassen von Details wichtig ist. Sprachmodelle lassen beim Umschreiben oft ein paar Details aus, deshalb sollte man aufpassen, wenn man alle Infos behalten möchte. Man sollte dem Modell dann klar sagen, dass es alle Informationen behalten soll.

Texte übersetzen. Zu übersetzen ist letztlich nur eine spezielle Art des Umschreibens von Texten, nämlich in eine gänzlich andere Sprache. Die Fähigkeit moderner Sprachmodelle, Texte zwischen vielen Sprachen hinund her zu übersetzen, kann nicht hoch genug geschätzt werden, vor allem in Anbetracht der Tatsache, wie schwer es der KI-Forschung jahrzehntelang gefallen ist, unter Aufwendung aller - auch linguistischer und sehr speziell übersetzungstechnischer - Mittel massen- und alltagstaugliche Übersetzungswerkzeuge zu entwickeln. Vor allem die Tatsache, dass die Trainingsdaten von mehrsprachigen Sprachmodellen nur vergleichsweise wenige bilinguale Dokumente enthalten, aus deren übersetzten Satzpaaren gezieltes

Übersetzen gelernt werden könnte, verdient Beachtung. Ganz ohne bilinguale Trainingsdokumente ginge es zwar nicht, aber die Bilingualität muss nicht systematisch und gewissermaßen tabellarisch, sondern kann ganz frei und en passant sein. Fairerweise muss man aber feststellen, dass die TransformerArchitektur, auf der die modernen Sprachmodelle beruhen, aus der Erforschung des maschinellen Übersetzens hervorgegangen ist, und so gesehen kann das Erzeugen von Antworten auf Fragen als ein Spezialfall des Übersetzens betrachtet werden, nämlich einer Frage in eine Antwort.

Wie gut im Übersetzen zum Beispiel ChatGPT ist, soll am Beispiel von Bedeutungsnuancen demonstriert werden, die überhaupt zu übersetzen in einem Buch über die deutsche Sprache [22] als „außerordentlich schwierig" bezeichnet wurde:

F: Übersetze die folgenden Sätze ${ }^{1}$ und erläutere Deine Übersetzung:
Du hast recht.
Du hast schon recht.
Du hast doch recht.
Du hast ja recht.
Du hast halt recht.
Du hast wohl recht.
A: Hier sind die Übersetzungen, die jeweils die spezifischen Nuancen der deutschen Sätze berücksichtigen:

1. Du hast recht. - „You are right."

- Eine direkte und unverblümte Bestätigung.

2. Du hast schon recht. - „You are right, of course."

- Die Beifügung von „of course" fügt eine leichte Relativierung hinzu, die im Deutschen durch „schon" ausgedrückt wird.

3. Du hast doch recht. - „You are right, after all."

- „After all" fängt die Konzession oder die Änderung der Meinung nach einer vorherigen Unsicherheit oder Ablehnung ein.

4. Du hast ja recht. - „You do have a point."

- Diese Übersetzung vermittelt eine sanfte Zustimmung und erkennt an, dass die andere Person einen gültigen Punkt hat, ähnlich dem beruhigenden oder bestätigenden „ja" im Deutschen.

5. Du hast halt recht. - „I suppose you're right."

- „I suppose" vermittelt die Resignation oder die nachgiebige Zustimmung, die mit „halt" einhergeht.

6. Du hast wohl recht. - „I guess you are right."

- „I guess" drückt die Unsicherheit oder die zurückhaltende Zustimmung aus, die „wohl" im Deutschen vermittelt.

[^0]
[^0]:    ${ }^{1}$ Leicht wird übersehen, dass ChatGPT standardmäßig ins Englische übersetzt, wenn keine Zielsprache angegeben wird. Allerdings ist das auch keine Überraschung, sondern natürlich der Tatsache geschuldet, dass Englisch die Sprache ist, in der ChatGPT vor allem trainiert wurde.

Texte analysieren, erklären und interpretieren. Einen Text zu analysieren und zu erklären kann als eine spezielle Form der Übersetzung betrachtet werden, vom „rätselhaften" Text in einen „erklärten". Der Akt der Analyse ist dabei unsichtbar und besteht aus Sicht eines Sprachmodells darin, die Worte und Bestandteile des Textes in zunehmend abstraktere Beziehungen zueinander zu setzen. Das tun Sprachmodelle unentwegt und ausschließlich, und nur darauf beruhen die nächsten Worte, die sie dann ausgeben, und die gemeinsam als sichtbare „Erklärung" erscheinen. Eine Erklärung kann auch als Umschreibung des Textes in anderen Worten betrachtet werden, wenn zum Beispiel einzelne Wörter des Textes definierend erklärt werden. Auch Interpretationen sind gewissermaßen Erklärungen - mögliche Erklärungen zumal -, und auch Texte zu interpretieren, sind Sprachmodelle in der Lage. Dabei können sie Teil eines hermeneutischen Zirkels sein, den unter Umständen mehrmals zu durchlaufen dem Lesenden helfen kann, einen schwierigen Text besser zu verstehen. Gleichzeitig „versteht" ein Sprachmodell selbst einen Text immer besser, wenn es durch den menschlichen Benutzer gezwungen wird, ihn immer wieder und wieder neu zu analysieren, im immer wieder neuen Licht der voranschreitenden Unterhaltung über den Text.

## F: Wie können Sprachmodelle Teil eines hermeneutischen Zirkels sein?

A: Sprachmodelle wie GPT können als Teil eines hermeneutischen Zirkels verstanden werden, indem sie bei der interpretation und dem Verständnis von Texten unterstützen. Der hermeneutische Zirkel ist ein Konzept aus der Philosophie und Literaturwissenschaft, das beschreibt, wie das Verständnis eines Textes durch den Wechsel zwischen dem Verstehen einzelner Teile und dem Ganzen verbessert wird. Hier sind einige Wege, wie Sprachmodelle in diesen Prozess eingebunden werden können:

1. Textinterpretation: Sprachmodelle können genutzt werden, um komplexe Texte zu interpretieren, indem sie Zusammenfassungen, Erklärungen und Kontextinformationen liefern. Nutzer können diese Interpretationen verwenden, um ihre eigene Verständnis des Textes zu vertiefen und ihre Interpretationen zu verfeinern.
2. Sprachverständnis: Modelle wie GPT helfen dabei, die Bedeutung von Wörtern und Sätzen im Kontext zu verstehen. Sie können Ambiguitäten aufklären und Nuancen in der Bedeutung aufzeigen, was für die tiefere Textanalyse im hermeneutischen Zirkel wichtig ist.
3. Interdisziplinäre Einsichten: Sprachmodelle können Wissen aus verschiedenen Quellen und Disziplinen integrieren, um zu einem reichhaltigeren Verständnis eines Themas oder Textes beizutragen. Dies unterstützt den iterativen Prozess des Verstehens, der im hermeneutischen Zirkel zentral ist.
4. Feedback und Iteration: Indem Nutzer mit einem Sprachmodell interagieren und seine Antworten hinterfragen, können sie ihre eigenen Interpretationen prüfen und weiterentwickeln. Diese Art von Feedback-Schleife ist ein Kernmerkmal des hermeneutischen Zirkels.
5. Automatische Textanalyse: Sprachmodelle können dazu verwendet werden, Texte auf bestimmte Muster, Themen oder Stile zu analysieren. Diese Analysen können Nutzern helfen, ihre eigene Sichtweise zu erweitern

und zu hinterfragen, was wiederum zur iterativen Natur des hermeneutischen Zirkels beiträgt.
Indem sie die Interpretation und das Verständnis von Texten unterstützen, können Sprachmodelle als wertvolle Werkzeuge im Rahmen des hermeneutischen Zirkels dienen, besonders in Bereichen wie der Literaturwissenschaft, der Geschichtswissenschaft oder der Philosophie.

Überbewerten sollte man die Interpretationsleistungen von Sprachmodelle allerdings gerade in den Geisteswissenschaften nicht, aus denen die Hermeneutik ja stammt. Doch in der Erklärung natur- und computerwissenschaftlicher Texte leisten Sprachmodelle durchaus gute Dienste.

Texte zusammenfassen. Die Fähigkeit, Texte zusammenzufassen, beruht - wie beim Menschen - darauf, dass Sprachmodelle in der Lage sind, das Wichtige in einem Text zu identifizieren und wiederzugeben und gleichzeitig das Unwichtige wegzulassen. Das Wichtige anhand vieler sprachlicher Anhaltspunkte und sozusagen als Muster zu identifizieren, lernen Sprachmodelle während ihres Vortrainings durch Lektüre von Abermilliarden längerer und kürzerer Textfragmente, und gelegentlich auch dadurch, dass das Wort „Zusammenfassung" mit einer Zusammenfassung und dem zusammengefassten Text gemeinsam auftaucht. Weil aber Zusammenfassungen von so großer praktischer Bedeutung sind - und für viele Benutzer der wesentliche Nutzen von Sprachmodellen im Zusammenfassen von Texten besteht - werden Sprachmodelle außerdem speziell aufs Zusammenfassen nachtrainiert, wobei im Zuge des Verstärkungslernens spontan generierte „gute" Zusammenfassungen belohnt werden.

Eine wesentliche Eigenschaft von Zusammenfassungen ist ihre Informationsdichte, d.h. der Anteil wichtiger Informationen im Verhältnis zur Länge der Zusammenfassung. Die Informationsdichte des ersten Versuchs einer Zusammenfassung ist meist noch nicht besonders hoch, doch kann man ein Sprachmodell in einem iterativen Verfahren dazu bringen, sie nach und nach zu erhöhen. In Kontexten, in denen eine hohe Informationsdichte - bei gleichzeitig guter Lesbarkeit - eine Rolle spielt, kann diese Fähigkeit von Sprachmodellen gezielt ausgenutzt werden (siehe Abb. 3.1).

Auch wenn es normalerweise so ist, dass man einem Sprachmodell den zusammenzufassenden Text vorlegt und zu lesen gibt, woraufhin es die Zusammenfassung auf Grundlage des so entstandenen Kontexts generiert, kann man ein Sprachmodell auch bitten, einen bekannten Text zusammenzufassen, von dem zu vermuten ist, dass es mit ihm entweder trainiert wurde oder dass er hinreichend oft im Internet besprochen wurde. Das Ergebnis einer solchen Zusammenfassung beruht dann allerdings nicht mehr auf dem Text selbst und das Sprachmodell sucht ihn insbesondere nicht aus seinen Trainingstexten heraus und liest ihn noch einmal -, sondern wird allein als Folge plausibler Worte im Kontext des Titels des Textes und der Aufforderung generiert:

# F: Fasse Wittgensteins Philosophische Untersuchungen zusammen.

![img-8.jpeg](img-8.jpeg)

Abb. 3.1 Fünf Zusammenfassungen eines hier nicht wiedergegebenen Zeitungsartikels, die (in grün) immer mehr Informationen aus dem Original enthalten, ohne bereits enthaltene Informationen wieder zu vergessen, und die dadurch immer dichter werden. Erstaunlich ist hier, dass GPT-4 in der Lage ist, alle Zusammenfassungen so zu einem Ende zu bringen, dass sie fast gleich lang sind. (Quelle: [23], mit freundlicher Genehmigung)

A: Ludwig Wittgensteins „Philosophische Untersuchungen" ist ein zentrales Werk der analytischen Philosophie, das sich mit der Bedeutung von Sprache und deren Rolle im Verständnis der Welt befasst. Hier ist eine Zusammenfassung:

1. Wittgenstein argumentiert, dass die Bedeutung der Wörter aus ihrem Gebrauch in der Sprache entsteht, was bedeutet, dass Sprache eng mit den Handlungen und Lebensformen verknüpft ist, in denen sie verwendet wird.
2. Er kritisiert die Vorstellung von Sprache als ein Medium, das Gedanken und Tatsachen der Welt einfach abbildet, und betont stattdessen, dass Sprachspiele die Grundlage unseres Verständnisses und unserer Kommunikation bilden.
3. Durch die Analyse alltäglicher Sprachgebrauchssituationen zeigt Wittgenstein, dass philosophische Probleme oft Missverständnisse über die Funktion der Sprache sind und durch eine klare Analyse des Sprachgebrauchs aufgelöst werden können.

Was für das Zusammenfassen von bekannten (und oft urheberrechtlich geschützten) Texten gilt, gilt genauso für ihre Analyse und Interpretation: Sie erfolgen nicht auf Grundlage des Textes selbst, sondern nur auf Grundlage

dessen, was er und seine Interpretationen durch Dritte während des Trainings in den Synapsen eines Sprachmodells hinterlassen haben.

Fragen beantworten. Mit der Beantwortung von Fragen beenden wir die Reihe der Fähigkeiten, die sich auf vorgegebene Texte beziehen und leiten über zu text-unabhängigen Fähigkeiten. Bei Fragen, die sich auf einen vorliegenden Text beziehen, ist es nicht so, dass ein Sprachmodell die Antwort im wörtlichen Sinne aus dem Text extrahiert und „herauszieht", sondern es generiert Worte - wie sonst auch - gemäß ihrer Plausibilität im Kontext des befragten Textes und der Frage. Dabei kommt meist eine Antwort heraus, die sinngemäß auch im Text steht (weil das im Kontext des Textes plausibel ist). Für folgendes Beispiel haben wir ChatGPT den Text „Über die allmähliche Verfertigung der Gedanken beim Reden" [24] von Heinrich von Kleist zu lesen gegeben und ihm anschließend eine Frage dazu gestellt, die er korrekt beantwortet:

# F: Anhand welcher Beispiele erörtert Kleist die allmähliche Verfertigung der Gedanken beim Reden? 

A: Kleist erörtert die allmähliche Verfertigung der Gedanken beim Reden anhand dieser drei Beispiele:

1. Die persönliche Erfahrung des Autors bei der Arbeit an rechtlichen oder mathematischen Problemen, bei denen ihm das Gespräch mit seiner Schwester hilft. Lösungen zu finden, obwohl sie nicht fachkundig ist.
2. Die Anekdote von Mirabeau, der während einer konfrontativen politischen Debatte spontan eine kraftvolle Rede hält, ohne zuvor zu wissen, was er genau sagen wird.
3. Die Fabel von La Fontaine „Die Tiere krank von der Pest", in der der Fuchs improvisiert und überzeugende Argumente findet, während er spricht, um sich selbst aus einer gefährlichen Situation zu retten.
Bei Fragen, die sich auf womöglich in den Trainingsdaten, aber nicht unmittelbar vorliegende Texte beziehen, kann es wie im folgenden Beispiel vorkommen, dass ein Sprachmodell halfnutziert. Keines der hier aufgeführten Beispiele findet sich so in Kleists Text.

## F: Anhand welcher Beispiele erörtert Kleist die allmähliche Verfertigung der Gedanken beim Reden?

A: Heinrich von Kleist erörterte das Thema der allmählichen Verfertigung der Gedanken beim Reden in seinem Essay „Über die allmähliche Verfertigung der Gedanken beim Reden". In diesem Text führt Kleist mehrere Beispiele an, um seine These zu illustrieren, dass das Sprechen nicht nur ein Medium zur Mitteilung fertiger Gedanken ist, sondern selbst ein kreativer, gedankenbildender Prozess.
Einige der von Kleist angeführten Beispiele sind:

1. Der Dichter in der Gesellschaft: Kleist schildert, wie ein Dichter in geselliger Runde durch das Sprechen auf Ideen kommt, die ihm in der Einsamkeit niemals gekommen wären. Das Gespräch mit anderen stimuliert seine Gedanken, die sich erst in der Interaktion vollständig formen.
2. Der französische Offizier: Ein weiteres Beispiel ist die Anekdote eines französischen Offiziers, der während einer diplomatischen Mission

plötzlich eine geniale Replik findet. Erst im Akt des Sprechens, unter dem Druck der Situation, formt sich seine brillante Antwort.
3. Der Dialog zwischen Fritze und dem Präsidenten: Kleist erzählt von einem Dialog, in dem Fritze durch das Gespräch zu einer unerwarteten Schlussfolgerung gelangt. Dies verdeutlicht, wie der Dialog mit einem anderen die eigene Gedankenbildung vorantreiben kann.
4. Die Anekdote über den Mathematiker: Kleist erzählt auch von einem Mathematiker, der eine Lösung für ein Problem findet, indem er es einem Freund erklärt. Obwohl der Freund das Problem nicht versteht, hilft der Erklärungsprozess dem Mathematiker, seine Gedanken zu ordnen und zur Lösung zu kommen.
Diese Beispiele illustrieren Kleists Überzeugung, dass das Sprechen eine aktive, kreative Handlung ist, die nicht nur Gedanken ausdrückt, sondern sie auch formt. Die Interaktion mit anderen, der Druck der Situation oder die Notwendigkeit der Erklärung können dabei als Katalysatoren für den Denkprozess dienen.

Interessanterweise halluzinieren andere Chatbots sehr ähnlich und ebenfalls ohne mit der Wimper zu zucken. Zum Beispiel Googles Gemini (vormals Bard):

A: In seinem Essay „Über die allmähliche Verfertigung der Gedanken beim Reden" verwendet Kleist mehrere Beispiele, um seine Argumentation zu verdeutlichen:

1. Das Beispiel des Schachspielers: Kleist vergleicht den Prozess des Denkens mit dem Schachspiel. Beim Schach muss man mehrere Züge im Voraus denken, um erfolgreich zu sein. Genauso verhält es sich beim Reden: Man muss wissen, was man sagen will, bevor man es sagt. Aber anders als beim Schach kann man beim Reden seine Gedanken im Nachhinein noch korrigieren.
2. Das Beispiel des Schriftstellers: Kleist vergleicht den Prozess des Denkens auch mit dem Schreiben. Beim Schreiben muss man seine Gedanken klar und deutlich formulieren. Aber beim Reden kann man spontaner sein und seine Gedanken im Fluss der Rede entwickeln. [...]

Und so der Chatbot Claude von Anthropic:
A: Die zentralen Beispiele in Kleists Text sind:

1. Das Bild des Springbrunnens, dessen Wasserstrahl erst beim Emporschießen geformt wird.
2. Der Vergleich des Gedankens mit der Venus von Milo, die erst beim Herausschlagen aus dem Marmor ihre endgültige Gestalt annimmt.

Wie beim Zusammenfassen und Interpretieren von Texten ist es auch bei Fragen zu Texten so, dass Sprachmodelle bekannte Texte beim Training nicht vollständig im Original gelesen haben müssen, um die Fragen zu beantworten. Nicht selten hat ein Sprachmodell sein Wissen über den Inhalt eines Textes ausschließlich aus der Sekundärliteratur erworben, und kann Fragen zu ihm beantworten, ohne ihn je gelesen zu haben - und trotzdem ohne zu halluzinieren. Ob die Antwort aus dem Originaltext oder der Sekundärliteratur stammt, lässt sich aber nicht rekonstruieren, und im Zweifel wird sich die

häufigere Sekundärliteratur statistisch gegen den Originaltext - hier [25] durchsetzen.

## F: Anhand welcher Beispiele erläutert Wittgenstein in den „Philosophischen Untersuchungen" den Spracherwerb?

A: In seinem Werk „Philosophische Untersuchungen" verwendete Wittgenstein mehrere Beispiele und Gedankenexperimente, um seine Ideen zu illustrieren:

1. Sprachspiel: Wittgenstein führte das Konzept der „Sprachspiele" ein, um zu zeigen, wie Wörter ihre Bedeutung im Kontext spezifischer menschlicher Tätigkeiten erhalten. Er argumentierte, dass das Lernen einer Sprache dem Erlernen eines Spiels ähnelt, bei dem man die Regeln verstehen und anwenden muss, um erfolgreich teilzunehmen. Die Beispiele für Sprachspiele umfassen einfache Befehle, Fragen, Berichte oder Witze, die alle zeigen, wie Sprache in verschiedenen Kontexten funktioniert.
2. Bauersprache: Ein spezifisches Beispiel für ein Sprachspiel, das Wittgenstein anführt, ist die „Bauersprache". Diese hypothetische Sprache besteht nur aus wenigen Wörtern wie „Block", „Säule", „Platte" und „Balken", die von Bauarbeitern verwendet werden, um Materialien anzufordern und Anweisungen zu geben. Dieses Beispiel soll verdeutlichen, wie Sprache in einem einfachen, funktionalen Kontext funktioniert und wie man selbst mit einer begrenzten Anzahl von Wörtern effektiv kommunizieren kann. [...]
(Ein wenig halluziniert hat ChatGPT hier allerdings doch und den Begriff „Bauersprache" einfach erfunden. Doch sachlich richtig ist das Beispiel durchaus. Wenn auch nicht in allen Details, denn bei Wittgenstein heißt es „Würfel" und nicht „Block".)
Fragen zu einem Text beantworten zu können, ist zwar eine sehr wichtige Fähigkeit von Sprachmodellen und vor allem im Rahmen des Textverstehens hilfreich, aber Fragen zu einem beliebigen Thema beantworten zu können, ist eine mindestens ebenso wichtige, wenn auch ganz andere. Sie beruht darauf, dass Sprachmodelle im Zuge ihres Vortrainings nicht nur ihr namensgebendes Sprachwissen erworben haben, sondern fast nebenbei auch unüberschaubare Mengen an Weltwissen, neben „weichem" und implizitem Allerweltswissen, das insbesondere für die sprachlichen Feinheiten wichtig ist, auch enorm viel „hartes" Faktenwissen. Deshalb sind Sprachmodelle immer auch Weltmodelle, worauf ihre Entwickler gerne hinweisen:
„Wenn wir ein riesiges neuronales Netzwerk trainieren, um das nächste Wort in allen möglichen Texten im Internet genau vorherzusagen, lernen wir tatsächlich ein ,Weltmodell‘. Auf den ersten Blick scheint es, als würden wir nur statistische Korrelationen im Text lernen. Aber tatsächlich lernt das neuronale Netzwerk [...] eine gewisse Darstellung des Prozesses, der diese Texte hervorgebracht hat. Diese Texte sind tatsächlich eine Projektion der realen Welt. Die Außenwelt scheint ihren eigenen Schatten auf diesen Text zu werfen. Als Ergebnis lernen neuronale Netzwerke nicht nur textuelle Informationen, sondern viel mehr über die Welt, [...] in der wir leben." (Ilya Sutskever, OpenAI-Gründer und Kopf hinter ChatGPT; [26])
Auf dieses Weltmodell und Weltwissen kann man als Benutzer gezielt zugreifen und ein Sprachmodell wie eine gigantische Enzyklopädie behandeln. Man kann schnelle Antworten auf knappe Wissensfragen verlangen - wer,

wann, wo, warum? -, aber sich auch differenzierte Fragen nach der Bedeutung von Konzepten oder der Funktionsweise von Systemen beantworten und erklären lassen (Was-ist und Wie-funktioniert-Fragen). Was eher harte Fakten betrifft, wird allgemein davon abgeraten, Sprachmodelle zu konsultieren, vor allem, wenn die Verlässlich- und Belastbarkeit der Antwort wichtig ist. Hier sind früher oder später gründlichere Recherchen nötig, und man kann gleich mit diesen beginnen als erst im zweiten Schritt, um eine SprachmodellAntwort zu überprüfen. Umgekehrt kann man Fakten aus unsicherer Quelle von einem Sprachmodell bewerten lassen. Nicht immer wird das Sprachmodell mit Sicherheit sagen können, ob eine Behauptung stimmt oder nicht, aber als „Experte für Plausibilität" kann es ihre Stichhaltigkeit einschätzen. Genau so kann man übrigens sein eigenes Verständnis von einer Sache prüfen lassen, doch damit berühren wir schon eine weitere Fähigkeit von Sprachmodellen, nämlich Dinge erklären zu können: Themen, Konzepte, Systeme (von Texten an dieser Stelle abgesehen, die haben wir schon behandelt).

Themen und Konzepte erklären. Während man Sprachmodelle nicht unbedingt als „Faktenwissensspeicher" verwenden sollte und andere, verlässlichere Daten- und Faktenquellen vorzuziehen sind, wird auf ihre Fähigkeit, Themen zu erklären, von vielen Benutzern gerne zurückgegriffen. Zwar gibt es für jedes Thema Texte im Internet (nicht selten in der Wikipedia), Bücher oder Menschen, die es einem besser erklären können als ein Sprachmodell. An manchen Erklärungen für komplizierte Sachverhalte arbeitet womöglich ein Wissenschaftsjournalist mitunter wochen- und monatelang und wird dafür womöglich mit einem Preis für Wissenschaftskommunikation ausgezeichnet. Dass einem Sprachmodell eine solche elaborierte Erklärung spontan einfällt und aus seinen Synapsen und gelernten Sprachmustern heraus spontan generiert wird, ist unwahrscheinlich. Aber Sprachmodelle bieten oft einen guten Einstieg in ein Thema, und auf die Schnelle findet man oft keine bessere Einführung, nicht einmal in der Wikipedia. Nicht hoch genug ist die Möglichkeit einzuschätzen, dass man im Gegensatz zu anderen Erklärungsquellen (von Menschen einmal abgesehen) Sprachmodelle gezielt und vertiefend befragen kann, und dass sie ihre Erklärungen der Sprache und dem Wissensstand des Benutzers anpassen können.

Schwierig ist es, als ein Benutzer, der einer Erklärung bedarf, die Qualität und Stichhaltigkeit einer Erklärung zu beurteilen, die einem ein Sprachmodell gibt. Hier steht man vor dem gleichen Problem wie bei Fakten und muss die Antworten eines Sprachmodells eigentlich noch einmal auf die Probe stellen, bevor man sich auf sie verlässt und sie unter Umständen weiterverwendet. Hier kann es einmal mehr helfen, die Antworten eines Sprachmodells von einem anderen Sprachmodell auf Stichhaltigkeit prüfen zu lassen. Besser noch, der Benutzer macht sich die Mühe, die Erklärung in eigene Worte zu fassen und diese dann überprüfen zu lassen.

Der Ton, in dem Sprachmodelle auch Themen erklären, von denen sie aufgrund geringer Abdeckung im Internet und damit ihren Trainingstexten

wenig verstehen, ist meist der gleiche Brustton der Überzeugung, in dem sie auch über gut verstandene Themen sprechen. Das erschwert es dem Benutzer, sie als das zu erkennen, was sie mitunter sind, nämlich wenig belastbar und eher schwammig. Das kann einem sogar in Randgebieten ansonsten gut abgedeckter Themenbereiche wie der Mathematik passieren, wo etwas unscharfes Halbwissen besonders „gefährlich" ist.

Einen unschätzbaren Vorteil bieten Sprachmodelle, wenn es darum geht, sich nicht nur ein, sondern mehrere Themen oder Konzepte im Zusammenhang bzw. den Zusammenhang zwischen mehreren Themen erklären zu lassen. Hier wird man im Internet oder der Wikipedia meist überhaupt nicht fündig, ein Sprachmodell findet aber fast immer einen Einstieg.
![img-9.jpeg](img-9.jpeg)

Abb. 3.2 Dokumente, die Wittgensteins Philosophische Untersuchungen und Sprachmodelle behandeln, scheint es im Internet nicht zu geben. Zumindest findet Google sie nicht. (Quelle: Screenshot Google)

# F: Beleuchte Sprachmodelle im Lichte der Philosophischen Untersuchungen! 

A: Sprachmodelle, betrachtet im Licht von Wittgensteins „Philosophischen Untersuchungen", können als Werkzeuge gesehen werden, die Bedeutung durch Gebrauch und Kontext erzeugen, ähnlich wie Wittgenstein Sprache als eine Reihe von Sprachspielen beschreibt. In diesem Sinne könnten diese Modelle als praktische Demonstrationen seiner Idee betrachtet werden, dass die Bedeutung eines Wortes in seinem Gebrauch im Sprachspiel liegt.

Vorschläge machen. Eine spezielle Form des Verfassens von Texten zu einem vorgegebenen Thema ist es, Vorschläge zu machen. Die Anbieter von Chatbots werben - zum Teil recht aufdringlich - nicht zuletzt mit dieser Fähigkeit.
![img-10.jpeg](img-10.jpeg)

Abb. 3.3 Zwei von vier Prompt-Vorschlägen von ChatGPT betreffen Vorschläge im engeren Sinne. (Quelle: Screenshot ChatGPT)

Sprachmodelle können Vorschläge für Alltagsdinge wie Urlaube und Ausflüge, Feste und Geschenke machen, im schulischen Bereich für Themen oder Fragestellungen für Hausarbeiten und im kommerziellen Bereich für Produktideen oder Marketingkampagnen. Auch zum Aufstellen wissenschaftlicher Hypothesen und mathematischer Vermutungen sind Sprachmodelle prinzipiell in der Lage, wenn auch von sich und aus sich allein heraus auf recht bescheidenem Niveau oder erst, wenn man sie eng an die Hand nimmt und dort hinführt, wo es interessant wird. ${ }^{2}$

Eigentlich sollte jeder Text, den ein Sprachmodell generiert, nur als Vorschlag betrachtet werden, zumal, wenn es um eine mögliche Veröffentlichung geht. Gemeint sind in diesem Abschnitt allerdings konkrete inhaltliche Vorschläge. Damit sie nützlich sind, müssen Vorschläge aus Sicht dessen, der sie erfragt, über das Erwartbare hinausgehen und für ihn in gewisser Weise kreativ und überraschend sein. Wenn sie das nicht wären, würde man ihrer nicht bedürfen und wäre womöglich von allein darauf gekommen. Andererseits genügt es unter Umständen, dass ein Sprachmodell einfach mehr weiß als der Fragende, denn dann können selbst solche Vorschläge überraschend und unvorhergesehen sein, die aus Sicht eines Experten naheliegend und wenig überraschend sind. Doch gesetzt den Fall, dass der Fragende eine Person vom Fach ist, dann müssen die Vorschläge tatsächlich etwas unplausibel sein. Das aber widerspricht dem, was Sprachmodelle eigentlich tun: plausible Antworten geben. Nicht ganz plausible und damit überraschende und kreativ wirkende Antworten zu geben, lässt sich Sprachmodellen jedoch beibringen, aber nicht mittels verstärkendem Lernen - wie vieles andere, was Menschen von ihnen erwarten -, sondern durch einen einfachen technischen Kniff. Dazu muss man sich in Erinnerung rufen, dass Sprachmodelle ihrer Natur nach deterministisch sind und normalerweise genau das eine Wort oder Token ausgeben, das den höchsten Wahrscheinlichkeits- oder Plausibilitätswert hat. Ein Parameter, der Temperatur genannt wird, weil er die Wahrscheinlichkeiten gewissermaßen aufwirbelt, kann nun dafür sorgen, dass auch Worte ausgegeben werden, die erst an zweiter, dritter oder vierter Stelle kämen. Wie weit ein Sprachmodell dabei geht, hängt von der Höhe der Temperatur ab. Zu hoch darf man sie nicht setzen, sonst kämen krudes Zeug und bald auch grammatische und morphologische Fehler heraus, doch auf 0 eben auch nicht, weil die Antworten sonst zu vorhersagbar und außerdem insgesamt „steifer" wirken würden. Ein durchaus gewünschter Nebeneffekt ist es, dass man Sprachmodelle auf ein und dieselbe Frage mehrere Antworten geben lassen kann, unter denen man sich die Beste aussuchen kann. Meist sind alternative Antworten auf dieselbe Frage sinngemäß gleich oder zumindest ähnlich, doch es lassen sich auch Fälle beobachten, wo sich zwei Antworten auf dieselbe Frage gegenseitig widersprechen. Dann weiß man immerhin, dass eine davon nicht stimmen kann.

[^0]
[^0]:    ${ }^{2}$ Sprachmodelle und wissenschaftliche Hypothesen sind ein zu weites Feld für dieses Buch, das hier als Thema nur angerissen werden kann. Wir verweisen auf [1], [2] und [27].

# F: Wofür steht LLaMA? 

A: Der Name LLaMA für Metas KI-Modell könnte verschiedene Bedeutungen haben. [...]Ohne eine spezifische Erklärung könnte der Name LLaMA einfach eine Wahl sein, die keinen tieferen technischen oder metaphorischen Hintergrund hat, sondern eher für seine Einprägsamkeit und Unterscheidungsfähigkeit steht.
A: LLaMA steht für „Large Language Model Meta Al". Es ist ein Sprachmodell, das von Meta Al entwickelt wurde und darauf abzielt, eine effizientere und zugänglichere Alternative zu den bestehenden großen Sprachmodellen zu bieten.

In Bereichen, in denen es auf die Verlässlichkeit, Reproduzierbarkeit und Nachvollziehbarkeit der Antworten von Sprachmodellen ankommt, werden sie meist mit Temperatur 0 „gefahren". Vor allem öffentliche Chatbots laufen aber immer auf einer moderaten Temperatur, die sich im Allgemeinen auch nicht vom Benutzer beeinflussen lässt. Auf sie trifft „stochastisch" im Begriff „stochastische Papageien" tatsächlich zu, wenn mit „stochastisch" das Zufällige der Ausgabe gemeint ist.

Probleme lösen. Die faszinierendste und vielversprechendste und in ihrer Allgemeinheit nur mit dem Verstehen natürlicher Sprache und dem Generieren natürlich-sprachlicher Texte vergleichbare Fähigkeit moderner Sprachmodelle ist ihre Fähigkeit, Probleme zu lösen - wozu man sie natürlich gerne einsetzen und nutzen würde. Grundsätzlich kann man alles, was Sprachmodelle können und tun, als Problemlösungen betrachten und tatsächlich setzt ChatGPT „Problem" mit „Aufgabe" gleich:

## F: Welche Arten von Problemen kann man Sprachmodelle lösen las-

sen?
A: Sprachmodelle können eine Vielzahl von Aufgaben in verschiedenen Bereichen lösen. Hier sind einige Beispiele für Problemtypen, die man mit Sprachmodellen angehen kann:

1. Textverständnis und -erzeugung:

- Zusammenfassung von Texten: Erstellen kurzer Zusammenfassungen aus langen Texten.
- Textgenerierung: Erstellen von Artikeln, Geschichten, Gedichten oder anderen Texten basierend auf vorgegebenen Eingaben.
- Übersetzung: Übersetzung von Texten von einer Sprache in eine andere. [...]

Hier meinen wir aber einen engeren Problembegriff, wie ihn zum Beispiel die Kognitionspsychologen betrachten, und wie er einer Definition von allgemeiner künstlicher Intelligenz (bzw. künstlicher allgemeiner Intelligenz) zugrunde liegt: Probleme als Aufgaben, die nicht routinemäßig erledigt werden können, sondern einer eingehenden Analyse und der - unter Umständen systematischen - Suche nach einer Lösung bedürfen. Dabei kann die Suche (oder auch Generierung) einer Lösung darin bestehen, zur Verfügung stehende Lösungsschritte in eine richtige Reihenfolge zu bringen. Dabei kann

es geschehen, dass eine Lücke bleibt und ein nötiger Lösungsschritt gar nicht bekannt ist. Dieser muss dann gefunden werden. Für beides - Lösungsschritte ordnen und nötigenfalls erfinden - ist im Allgemeinen so etwas wie Intuition und Kreativität erforderlich, wenn es nicht algorithmisch und routinemäßig erfolgen soll. Weil Suchen ein essenzieller Aspekt des Problemlösens ist - man sucht schließlich nach einer Lösung -, gehören Versuch und Irrtum ebenfalls zum Konzept von Problemen und ihrer Lösung. Damit ist natürlich nicht vollständig erschöpft, was ein Problem ausmacht, aber die Definition ist allgemein genug, um Textaufgaben, Logikrätsel, mathematische Beweise, Schach- und Go-, aber auch ethische, juristische oder gesellschaftliche Probleme zu umfassen. Auch ein klassisches Computerprogramm zur Erledigung einer natürlichsprachlich formulierten Aufgabe zu schreiben, kann als Beispiel für ein Problem und seine Lösung gelten. Wohlgemerkt: nur das Schreiben des Programms ist die Lösung eines Problems im obigen Sinne, das Programm selbst hingegen nicht, denn es erledigt seine Aufgabe als implementierter Algorithmus routinemäßig.

Grundsätzlich können Sprachmodelle Probleme lösen, die man sprachlich formulieren und bearbeiten kann. (Roboter können andere Arten von Problemen lösen, die nichts mit Sprache zu tun haben.) Mitunter besteht das Problem darin, aus einer natürlichsprachlichen Formulierung eines Problems eine formalsprachliche zu machen, die man routinemäßig abarbeiten kann. Bislang beschränken sich die Problemlösungsfähigkeiten von Sprachmodellen auf vergleichsweise einfache mathematische Textaufgaben, logische Rätsel, sehr einfache Schach-Probleme und elementare mathematische Beweise - insgesamt auf Probleme, die nicht allzu viel Weitsicht und keinen ausgeklügelten Lösungsplan erfordern, oder anders gesagt: keinen großen Lösungsraum haben, der durchsucht werden muss.

Dass Sprachmodelle Probleme lösen können, liegt insofern nahe, als auch Problemlösungen Muster zugrunde liegen, die Sprachmodelle statistisch aus Beispieltexten lernen können. Dass sie logische Schlüsse ziehen können - die vielleicht wichtigste Art von Lösungsschritten -, lässt sich so erklären, und nicht zufällig werden zum Beispiel Syllogismen Denkmuster genannt. Viel genauer erklärt es ChatGPT allerdings auch nicht:

## F: Was liegt der Fähigkeit von Sprachmodellen, mathematische Probleme zu lösen, zugrunde?

A: Sprachmodelle sind darauf trainiert, Muster in Daten zu erkennen und darauf basierend Vorhersagen zu treffen. Ihre Fähigkeit, mathematische Probleme zu lösen, stammt aus mehreren Kernkomponenten und Trainingsprozessen [...] Obwohl diese Modelle beeindruckend in der Verarbeitung mathematischer Informationen sind, erreichen sie ihr Verständnis und ihre Problemlösungsfähigkeiten durch Mustererkennung und statistische Inferenz, nicht durch ein intrinsisches Verständnis der Mathematik wie ein Mensch oder spezialisierte mathematische Software. Ihre Leistung kann daher variieren und ist insbesondere bei komplexen oder fortgeschrittenen mathematischen Problemen begrenzt.

Im Kontext lernen. Durch die Fähigkeit von Sprachmodellen, anhand von ad hoc im Kontext gegebenen Beispielen ad hoc zu lernen, wie man ein bestimmtes Problem löst, haben auch ihre Problemlösungsfähigkeiten deutlich zugenommen. Das bekannteste Beispiel dafür ist das sogenannte Gedankenketten-Prompting (englisch chain of thought), in dem einem Sprachmodell für ein Musterproblem beispielhaft konkrete Lösungsschritte vorgeführt werden, die es anschließend auf ähnliche Probleme in ähnlicher Form übertragen kann. Das Im-Kontext-Lernen ist aber nicht auf Gedankenketten beschränkt, sondern kann auch bei Klassifizierungsaufgaben verwendet werden, in denen zum Beispiel für eine Reihe von Beispieltexten beispielhafte Klassifizierungen angegeben werden, die das Sprachmodell für unbekannte, aber den Beispieltexten ähnliche Texte initiieren kann. Deshalb haben wir das Im-Kontext-Lernen im Kapitel über maschinelles Lernen dem überwachten Lernen als Beispiel für Imitationslernen an die Seite gestellt. Seinen speziellen Nutzen erfährt das Im-Kontext-Lernen vor allem daraus, dass es ohne aufwändiges überwachtes Nachtrainieren eines Sprachmodells jederzeit und unkompliziert verfügbar ist. Ein Nachteil ist, dass Beispiele Platz wegnehmen: der Kontext wird länger, und es steht weniger Platz für anderes - zu analysierende Texte oder Antworten - zur Verfügung.

Gespräche führen. Selten wird es der Benutzer eines Sprachmodells bei einer Frage und einer Antwort bewenden lassen, sondern nachhaken oder seine Frage präzisieren. Fast automatisch wird so die Interaktion mit einem Sprachmodell zu einem Gespräch oder Dialog, mehr noch, wenn seinerseits das Sprachmodell Verständnisfragen stellt. Dazu kann man es auf verschiedene Weisen anregen, entweder, indem man am Anfang des Gesprächs klarstellt, dass man sich Verständnisfragen wünscht, oder in einem sogenannten Systemprompt im Hintergrund, den manche Chatbots bereitstellen, z.B. ChatGPT unter dem Menüpunkt „ChatGPT anpassen" („Customize ChatGPT"). Auf demselben Wege kann man Chatbots auffordern, bestimmte Rollen einzunehmen, was auf die Sprache und Detailtiefe der Antworten und des Gesprächs Einfluss nehmen kann. Typischerweise fordert man Chatbots auf, Experte in einem bestimmten Themengebiet zu sein, und kann ihnen gleichzeitig mitteilen, auf welchem Wissensstand man selbst ist. Auch Meinungspositionen einzunehmen, kann man Chatbots auffordern. Auf diese Weise ist es sogar schon möglich, mit ChatGPT Dreiergespräche zu führen. Dafür kann man zwei verschiedene Bots mit verschiedenen „Meinungen" vorkonfigurieren und dann als sogenannte „GPTs" im Gespräch abwechselnd aufrufen. ${ }^{3}$

[^0]
[^0]:    ${ }^{3}$ Mit der Einführung von GPTs (im Plural) hat OpenAI die Verwirrung um das Kürzel GPT perfekt gemacht. Es ist jetzt a) eine rechtlich nicht geschützte Gattungsbezeichnung für eine bestimmte Art von Sprachmodellen, b) der Produktname für die fundamentalen Sprachmodelle von OpenAI, insbesondere GPT-3.5 und GPT-4, c) Teil des Produktnamens des Chatbots ChatGPT und nun auch noch d) für durch jedermann frei konfigurierbare Varianten, die mit allerlei Zusatzwissen und -funktionen ausgestattet werden können.

Insbesondere Chatbots, die ansonsten „normale" Sprachmodelle sind, werden gezielt darauf hintrainiert, Gespräche führen zu können, und zwar sowohl dadurch, dass in ihren Trainingsdaten besonders viele Gesprächsprotokolle enthalten sind - wie sie im Internet durchaus frei verfügbar sind -, als auch durch Verstärkungslernen, bei dem erwünschtes Dialogverhalten belohnt wird. Gespräche mit Chatbots können ähnlich wie Gespräche mit Menschen betrachtet werden, zum Beispiel im Vier-Seiten-Modell der Kommunikation von Friedemann Schulz von Thun [7]. Hiernach haben Botschaften verschiedene Ebenen, die die Gesprächspartner unterscheiden, verstehen und berücksichtigen können.

# F: Was sind die vier Seiten einer Nachricht gemäß Schulz von Thun? 

A: Die vier Seiten einer Nachricht nach dem Kommunikationsmodell von Friedemann Schulz von Thun sind:

1. Sachinhalt: Diese Seite bezieht sich auf die Daten, Fakten und Informationen, die mitgeteilt werden. Es geht um die objektive Nachricht, die vermittelt wird.
2. Selbstoffenbarung: Diese Seite enthält Informationen über die Person, die spricht. Es kann sowohl beabsichtigte Selbsidarstellung als auch unbeabsichtigte Selbstenthüllung umfassen, die zeigt, was die Person fühlt, denkt, oder wer sie ist.
3. Beziehung: Diese Seite vermittelt, wie der Sender zum Empfänger steht und was er von ihm hält. Durch Tonfall, Wortwahl und Körpersprache werden Hinweise auf die Beziehungsebene gegeben, die zeigen, ob der Sender den Empfänger respektiert, mag, verachtet usw.
4. Appell: Hierbei geht es darum, was der Sender beim Empfänger erreichen möchte. Jede Nachricht enthält eine mehr oder weniger offensichtliche Aufforderung, etwas zu tun, zu denken, zu fühlen oder zu unterlassen.

Tatsächlich spielen alle vier Seiten eine Rolle in der Kommunikation mit Sprachmodellen. Der Sachinhalt muss dabei nicht eigens erwähnt werden.

- Die Selbstoffenbarung, wenn der menschlichen Benutzer dem Sprachmodell mitteilt, wer er ist, was er weiß und was nicht.
- Die Beziehung, wenn der Benutzer dem Sprachmodell erklärt, welche Rolle es im Gespräch spielen soll.
- Der Appell, indem der Benutzer dem Sprachmodell eine Aufgabe erteilt.

Alle drei Ebenen können mehr oder weniger implizit oder explizit sein, und falls explizit, mehr oder weniger deutlich und ausführlich. Wie in der zwischenmenschlichen Kommunikation ist Explizitheit, insbesondere Deutlichkeit im Gespräch mit Sprachmodellen hilfreich, doch anders als bei der zwischenmenschlichen Kommunikation reagieren Sprachmodelle auf zu große Ausführlichkeit nicht etwa mit Ungeduld, sondern belohnen sie u.U. durch qualitätvollere Antworten. Was nicht heißt, dass Sprachmodelle nicht auch gut darin wären, versteckte oder unklar formulierte Appelle zu verstehen, zum Beispiel den, einen längeren ihnen kommentarlos übergebenen Text zusammenzufassen, einen unvollständigen Satz fortzusetzen oder in die Sprache zu übersetzen, in der eine Übersetzungsaufforderung erteilt wird:

# F: Übersetze „this sentence". 

A: „This sentence" übersetzt auf Deutsch bedeutet „dieser Satz".
Mittlerweile können theoretisch mehrstündige Gespräche mit einem Chatbot geführt werden, ohne dass er vergisst, worüber man bisher gesprochen hat. Mehr noch: ChatGPT kann sich seit Kurzem sogar an vergangene Gespräche erinnern, doch war diese naheliegenderweise „Memory" genannte Funktion bis zur Fertigstellung dieses Buches in Deutschland noch nicht verfügbar.

Bilder generieren. Mittlerweile kommt kaum ein großer Chatbot mehr ohne die Fähigkeit aus, Bilder zu generieren. Weil dieselben Chatbots meist auch Bilder analysieren und beschreiben können (s.u.), also insgesamt mit der Modalität „Bild" in Ergänzung zur Sprache umgehen und sie integrieren können, spricht man von multimodalen oder auch von Bild-Sprach-Modellen (englisch vision language models). ${ }^{4}$ Die Fähigkeit, ein Bild zu erzeugen, kommt dabei genaugenommen einer anderen KI zu als dem Sprachmodell selbst, doch sind die beiden sehr eng ineinander verzahnt, in etwa wie zwei verspleißte Taue. Allerdings knüpfen die Fähigkeiten der bildgenerierenden KI qualitativ nicht nahtlos an die der textgenerierenden KI an. Eine bestimmte Art von Bildern können insbesondere Diffusionsmodelle zwar sehr beeindruckend erzeugen fotorealistische Bilder, aber auch Grafikdesign und Bilder im Stile bekannter Künstler oder Epochen -, andere aber auf fast bestürzende Weise gar nicht, insbesondere solche, in denen es auf eine gewisse Genauigkeit und mehr als „schönen Schein" ankommt. Auf Seite 29 haben wir zwei Beispiele für misslungene Versuche wissenschaftlicher Illustration gesehen. Allerdings sind für solcher Art Bilder andere Herangehensweisen als das sogenannte Denoising (deutsch Entrauschen) von Diffusionsmodellen sinnvoller, zum Beispiel Vektorgrafiken, die zu generieren sogar reine Sprachmodelle in der Lage wären wenn sie denn die richtigen Ideen hätten, was in ihnen darzustellen ist. Wenn sie also zum Beispiel über die Fähigkeiten eines wissenschaftlichen Illustrators verfügen würden, was sie zur Zeit aber noch nicht tun.

Die führende Rolle bei der Generierung von Bildern auf Basis von Benutzereingaben hat das Sprachmodell, das eine vom Benutzer eingegebene Bildbeschreibung so an die Bildgenerierungs-KI übergibt, dass der ansonsten zufällig „entrauschende" Bildentstehungsprozess entsprechend beeinflusst wird (siehe S. 27). Dabei kommunizieren Sprach- und Bild-KI über sogenannte Embeddings, also abstrakte Vektorrepräsentationen von Inhalten, die

[^0]
[^0]:    ${ }^{4}$ Eine weitere Modalität, über die viele Chatbots bald verfügen werden, ist gesprochene Sprache. Auf die gehen wir in diesem Buch nicht weiter ein. Nur so viel: Bis auf weiteres werden Chatbots gesprochene Sprache wie geschriebene Prompts nur in abgeschlossenen Einheiten verarbeiten. Das heißt, eine abgeschlossene gesprochene Eingabe wird in geschriebenen Text übersetzt, dann als Prompt vom Sprachmodell wie gewohnt verarbeitet und die Ausgabe anschließend wieder in gesprochene Sprache transformiert. Diese Modalität erweitert die Fähigkeiten von Sprachmodellen also nicht wesentlich. Die KI, die dabei Schallwellen in Text umwandelt und umgekehrt, hat mit der Sprachmodell-KI selbst nichts zu tun.

gleichermaßen sprachlich wie bildlich „verstanden" werden. (Auf diese Vektorrepräsentationen gehen wir in Kapitel 4.3 genauer ein.) Der bildgenerierende Teil versteht Beschreibungen von Bildern aber deutlich schlechter als das Sprachmodell, dem der Benutzer sie übergibt. Feinheiten der Sprache, insbesondere des Satzbaus, bleiben unberücksichtigt, desgleichen zum Beispiel Negationen, was also nicht auf dem Bild erscheinen soll. Es kommen beim bildgenerierenden Teil vor allem bedeutungstragende Substantive und Adjektive an, auf sprachlichen Feinschliff muss der Benutzer also nicht achten.

Bilder beschreiben. Solange multimodale Sprachmodelle nicht sinnvolle wissenschaftliche Illustrationen generieren können, mag man sie in einem didaktischen oder hermeneutischen, also mit dem Verstehen befassten Kontext für verzichtbare Spielereien halten. Doch die andere Seite der Medaille, nämlich das Erklären des Inhalts von Bildern oder auch „nur" ihre Beschreibung, hätte man dabei übersehen. Tatsächlich können multimodale Sprachmodelle hier theoretisch wertvolle Dienste leisten, zum Beispiel, um schbeeinträchtigten Menschen Bilder zu beschreiben und so zugänglich zu machen.

Die Bild-KI, die in einem Bild-Sprach-Modell Objekte und andere visuelle Elemente in einem Bild identifiziert, ist relativ herkömmlich und beruht anders als das Sprachmodell nicht auf der Transformer-Architektur, sondern auf Convolutional Neural Networks (CNNs, siehe Kapitel 2.3, Seite 23). Sie übergibt an das Sprachmodell im Wesentlichen, welche Dinge sie sieht und in welcher räumlichen Anordnung. Dazu ist bildverarbeitende KI schon seit langem in der Lage. Die Zusammenhänge und Beziehungen zwischen den Objekten in einer Szenerie stellt dann das Sprachmodell her und setzt es beschreibend in einen Kontext. Allzu viel darf man sich von solchen Bildbeschreibungen oder gar -erklärungen allerdings (noch) nicht erwarten, weswegen es sich bei ernsthafter Bildbeschreibung zur Zeit noch um eine eher theoretische Möglichkeit handelt. Im Vergleich zur Analyse eines Textes, den ein Sprachmodell für verschiedene Zielgruppen in sehr unterschiedlich anspruchsvoller Weise aufbereiten kann, sind die Bildanalysen noch recht unbefriedigend. Vor allem unsichtbare und und ungewöhnliche Beziehungen zwischen Objekten und Menschen - zum Beispiel Blickachsen - werden nicht erkannt und vieles falsch gedeutet.
![img-11.jpeg](img-11.jpeg)

F: Was geschieht auf diesem bild?

A: Dieses Bild zeigt eine Frau in einem roten Oberteil und einem blauen Rock, die ein schlafendes Kind in ihrem Arm hält. Das Gemälde ist im surrealistischen Stil mit verzerrten Proportionen und Perspektive gehalten. Der Hintergrund besteht aus einer rosa Wand mit einem Fenster und einer grünen Landschaft draußen. Die Frau trägt ein rotes Kopftuch und hat eine Sonnenbrille auf dem Kopf. Das Kind trägt ein weißes Outfit und schläft friedlich in den Armen der Frau. Die Frau sitzt auf einem blauen Hocker mit einem Eimer daneben. Das Gemälde ist vom Künstler in der unteren rechten Ecke signiert.

Manches Offensichtliche sehen und verstehen Bild-Sprach-Modelle nicht, und auch Bild-Sprach-Modelle können halluzinieren. Denn weder gibt es in obigem Bild zum Beispiel eine grüne Landschaft noch eine Signatur des Künstlers. ${ }^{5}$

Trotz all dieser zum Teil noch eklatanten Schwächen kann man damit rechnen, dass die Bildverständnisfähigkeiten von Bild-Sprach-Modellen rasch wachsen werden und sie dadurch in Ergänzung zur ihren Textverständnisfähigkeiten eben das werden - nützlich.

Man darf sich aber schon jetzt nicht täuschen lassen. Mitunter beruht eine überraschend detaillierte Bildbeschreibung nicht wirklich auf einer detaillierten Analyse des Bildes, sondern rührt daher, dass die Bild-KI wie im folgenden Beispiel das Bild und seinen Titel „erkannt" hat und das Sprachmodell sich aus Beschreibungen bedient, die es beim Training im Internet gelesen hat. Ganz so, wie es eine Zusammenfassung und Analyse eines prominenten Textes wie etwa Kants Kritik der reinen Vernunft generieren kann, ohne ihn dafür zur Laufzeit gelesen haben zu müssen.
![img-12.jpeg](img-12.jpeg)

F: Was sieht man auf diesem Bild?
A: Das Bild, das du hochgeladen hast, ist das berühmte Gemälde „Die Alexanderschlacht" oder auch bekannt als „Die Schlacht bei Issus" von Albrecht Altdorfer, einem Meister der deutschen Renaissance. Das Gemälde ist bekannt für seine detaillierte Darstellung einer historischen Schlacht und seine beeindruckende Landschaftsgestaltung.
Im Vordergrund des Gemäldes sieht man eine gewaltige Schlacht, die sich über die gesamte Breite des Bildes erstreckt. Unzählige Kämpfer in ver-

[^0]
[^0]:    ${ }^{5}$ Bei dem Bild handelt es sich um das Gemälde „Die Jungfrau züchtigt das Jesuskind vor drei Zeugen: André Breton, Paul Éluard und dem Maler" von Max Ernst aus dem Jahre 1926, und offenbar hat ChatGPT das nicht erkannt.

schiedenen Rüstungen und Uniformen sind im Nahkampf verstrickt, und es sind Bannern und Standarten zu erkennen, die durch die Luft wehen. Man sieht auch Pferde, einige gestürzt und andere im Kampfgetümmel.
Der Mittelgrund offenbart eine dramatische Landschaft mit Städten, Burgen und einer Flusslandschaft, die bis zum Horizont reicht. Im Hintergrund erheben sich majestätische Berge, und darüber befindet sich ein dynamischer Himmel mit wirbelnden Wolken, die das Licht von Sonne und Mond einfangen, was auf die doppelte Beleuchtung hinweist - eine Darstellung der gleichzeitigen Sichtbarkeit von Sonne und Mond.[. . .]

# 3.2 Elementare Fähigkeiten 

Wir wenden uns nun den elementaren Fähigkeiten von Sprachmodellen zu, die den nützlichen Fähigkeiten zugrundeliegen.

Plausible Worte vorhersagen. Das ist die elementarste Fähigkeit generativer Sprachmodelle, auf der alle anderen Fähigkeiten und letztlich auch ihr scheinbares Wissen und Verstehen beruht. Tatsächlich ist es auch die Fähigkeit, die man am direktesten messen kann: Nachdem man ein Sprachmodell mit fast allen Texten aus einem Testkorpus trainiert hat, indem man ihm Textfragmente daraus vorlegt, deren (bekanntes) nächstes Wort sie vorhersagen sollen, kann man ihm anschließend Textfragmente aus dem Rest des Korpus vorlegen und testen, wie genau es deren nächste Worte vorhersagt. Das ist ein gutes Maß für die Präzision und Vorhersagegenauigkeit eines Sprachmodells. Wie man die Genauigkeit bemisst, mit der ein Wort vorhergesagt wird, wird im Kapitel über das Vortraining von Sprachmodellen deutlich. Es läuft darauf hinaus, mit welcher Wahrscheinlichkeit - bezogen auf alle möglichen nächsten Worte - das richtige Wort vorhergesagt wird. Je näher an 1, also $100 \%$ diese Wahrscheinlichkeit liegt, desto genauer und richtiger wurde das nächste Wort vorhergesagt. Solche Tests werden regelmäßig durchgeführt, bevor man ein Sprachmodell veröffentlicht.

Tatsächlich kann die Vorhersage eines plausiblen Wortes auch unmittelbar nützlich sein, und diese Fähigkeit hätte deshalb auch oben unter den nützlichen Fähigkeiten erwähnt werden können. Wenn einem menschlichen Benutzer ein Wort partout nicht einfällt, kann ein Sprachmodell ihm hervorragend auf die Sprünge helfen, besser, als es zum Beispiel Google könnte. Bei dieser Fähigkeit handelt es sich gleichsam um ein umgekehrtes oder inverses Definieren: Man gibt dem Sprachmodell eine Definition - oder einen unvollständigen Satz -, und das Sprachmodell antwortet mit dem gesuchten Begriff.

## F: Wie heißt das Spiel, bei dem man einen Begriff erklärt, und die Mitspieler müssen ihn erraten?

A: Das Spiel, bei dem man einen Begriff erklärt und die Mitspieler müssen diesen erraten, heißt ,Tabu". Bei Tabu ist es das Ziel, dass ein Spieler sei-

nem Team einen Begriff erklärt, ohne bestimmte Schlüsselwörter zu verwenden, die als „Tabu" gelten und auf der Spielkarte aufgeführt sind. Wenn das Team den Begriff innerhalb eines bestimmten Zeitlimits errät, erhält es einen Punkt.
F: Das Spiel, bei dem man einen Begriff erklärt, und die Mitspieler müssen ihn erraten, heißt...
A: Tabu.

Allgemeine Erwartungen von Benutzern erfüllen. Neben dem Vorhersagen plausibler nächster Worte ist die Erfüllung von allgemeinen Erwartungen menschlicher Benutzer die zweite elementare Fähigkeit, über die generative Sprachmodelle, insbesondere Chatbots, verfügen. Über deren Vorhandensein macht man sich als Benutzer im Allgemeinen keine besonderen Gedanken und setzt sie wie selbstverständlich voraus. Es fällt einem erst auf, wenn die Erwartungen nicht erfüllt werden. Um welche Erwartungen es sich genau handelt, legen die Entwickler der Sprachmodelle fest und trainieren sie ihnen durch verstärkendes Lernen durch menschliches Feedback (reinforcement learning by human feedback, RLHF) an, was eine sehr spezifische Trainingsmethode ist, die von OpenAI entwickelt wurde. ${ }^{6}$ Die wichtigsten Erwartungen, über allgemeine Sprach- und Weltkenntnisse hinaus, sind wahrscheinlich

- dass ein Chatbot sich auf natürliche Weise mit dem Benutzer unterhält,
- dass er verschiedenste Aufforderungen versteht, auch wenn sie nicht 100prozentig klar formuliert wurden,
- dass er insbesondere gute Zusammenfassungen liefert,
- dass er in angemessenem Ton antwortet und sich nicht allzu leicht aus der Reserve locken lässt,
- dass er unangemessene oder schädliche Inhalte verweigert.

Aufforderungen verstehen. Auf diese Erwartung gehen wir gesondert ein: dass ein Sprachmodell oder Chatbot versteht, was man von ihm will, welche Aufgabe man ihm gestellt bzw. welche Aufforderung man an ihn gerichtet hat. Man könnte etwas zirkulär auch sagen: Man erwartet von ihm, dass es versteht, was man von ihm erwartet. Eine Vorgängerversion von ChatGPT hieß tatsächlich InstructGPT. Dieses Sprachmodell und alle GPT-Varianten seitdem werden mittels RLHF vor allem darauf trainiert, Aufforderungen, also Instruktionen verschiedenster Art zu verstehen, ja gewissermaßen das Prinzip der Aufforderung und wie man auf sie reagiert. Dabei geht es auch darum, auf jeden Fall davon auszugehen, dass mit jeder Eingabe des Benutzers eine Erwartung und eine Aufforderung verbunden ist und diese im Zweifel zu erraten und zu befolgen. Als Standard- oder Default-Aufforderung

[^0]
[^0]:    ${ }^{6}$ Alternativen zu RLHF gibt es, zum Beispiel die sogenannte konstitutionelle KI (englisch constitutional AI, siehe Seite 188), die bei Anthropics Sprachmodell Claude zum Einsatz kommt.

scheinen die bekannten Chatbots dabei das Zusammenfassen anzunehmen, wenn ihnen längere Texte übergeben werden, und wenn ihnen ein nicht zu alltäglicher Begriff übergeben wird, diesen zu erklären:

## F: Aufforderungen verstehen

A: „Aufforderungen verstehen" bedeutet, Anweisungen oder Bitten zu erkennen und entsprechend darauf zu reagieren. Dies kann in verschiedenen Kontexten relevant sein, wie zum Beispiel beim Erlernen einer neuen Sprache, bei der Kommunikation mit künstlicher Intelligenz oder im Rahmen zwischenmenschlicher Interaktionen. Wenn Sie spezifische Fragen haben oder mehr über ein bestimmtes Thema im Zusammenhang mit „Aufforderungen verstehen" erfahren möchten, lassen Sie es mich bitte wissen!

Ist der Begriff nicht ungewöhnlich genug, weiß der Chatbot tatsächlich nicht, welche Aufgabe er erledigen soll. In diesem Falle geht er immerhin davon aus, dass von ihm erwartet wird, dass er nachfragt.

## F: Aufforderungen

A: Wie kann ich Ihnen helfen? Haben Sie Fragen oder benötigen Sie Unterstützung bei etwas Bestimmtem?

Während diese ersten drei elementaren Fähigkeiten wesentlich auf der Art und Weise beruhen, wie Sprachmodelle trainiert werden, sind die folgenden beiden stärker architektonisch bedingt und zu erklären, und zwar vor allem durch die Größe des sogenannten Kontextfensters. Sie ist ein wichtiges Charakteristikum von Sprachmodellen und ist eine Dimension des neuronalen Netzes, das ein Sprachmodell darstellt, nämlich seine Breite. Eine andere Dimension ist seine Tiefe, und wieder eine andere ist die Dimension des semantischen Raumes. Dazu später mehr.

Langreichweitige Beziehungen berücksichtigen. Die Fähigkeit, Teile eines Textes miteinander in Beziehung zu setzen, die sehr weit voneinander entfernt stehen - durch mehrere tausend, ja mittlerweile zehntausend Worte voneinander getrennt -, ist in zweierlei Hinsicht essenziell. Derartige langreichweitigen Bezüge innerhalb eines Textes geben ihm oft erst seine große Struktur, und nicht zu wissen, dass am Anfang eines langen Textes oder Gesprächs über dasselbe gesprochen wird wie am Ende, nur in anderen Worten, würde ihn im wahrsten Sinne seines Zusammenhangs beraußen. Deswegen wird das Textverständnis oder die Gesprächsführung von Sprachmodellen ab einem bestimmten Punkt schlechter, wenn der Text oder das Gespräch zu lang werden. Diese Fähigkeit erfordert einen hohen Rechenaufwand, der quadratisch mit der Kontextlänge wächst, weswegen die Kontextlänge eines Sprachmodells immer nach oben beschränkt ist. Dabei wird die Grenze durch verschiedene Rechentricks immer weiter hinausgeschoben und bereits mit Kontexten von einer Millionen Token experimentiert, was in die Größenordnung des Textumfangs der Bibel liegt. (Die erste Version von ChatGPT hatte noch eine Kontextlänge von wenigen tausend Token, was nur wenigen Seiten Text entsprach.)

Die zweite Hinsicht, warum langreichweitige Beziehungen - wenn auch nicht in dieser Größenordnung - essenziell sind, macht sich beim Training und dem Wissenserwerb bemerkbar. Wenn ein Sprachmodell nur mit vollständigen, aber vergleichsweise kurzen Sätzen trainiert würde, würde es zwar die Regeln des Satzbaus erlernen und außerdem einiges an Wissen aber nur so viel, wie explizit in einem Satz enthalten ist und nichts, wenn das Subjekt eines Satzes ein Pronomen ist. Aus dem Satz „Newton wurde im Jahre 1642 geboren" kann ein Sprachmodell dieses Faktum lernen (wenn es in ähnlicher Form noch hinreichend oft in den Trainingstexten vorkommt), aber nicht aus dem Satz „er wurde im Jahre 1642 geboren". Aus längeren Textfragmenten, die über mehrere Sätze hinweggehen - z.B. „Newton war ein englischer Physiker, Astronom und Mathematiker an der Universität Cambridge. Er wurde im Jahre 1642 geboren" - können sie aber Informationen, die sich auf ein Pronomen beziehen, dem Referenten des Pronomens zuordnen. Voraussetzung ist nur, dass der Referent explizit im selben Kontext genannt wird, und dass die Zuordnung von Pronomen zu Referenten gelingt. Diese Zuordnung ist eine typische Beziehung, die festzustellen Sprachmodelle über beliebig lange Distanzen hinweg mittels des Aufmerksamkeitsmechanismus in der Lage sind. Noch nicht zu Beginn des Trainings, aber im Verlaufe des Trainings immer besser.

Das Erkennen langreichweitiger Beziehungen kommt nicht nur beim Training und Wissenserwerb zum Tragen, sondern auch bei der Textanalyse, wo es noch wesentlicher ist:

F: Der Traktat über die menschliche Natur ist ein philosophisches Werk von David Hume. Es ist eines seiner wichtigsten Werke und stellt einen detaillierten Bericht über seinen empiristischen Standpunkt dar. Unter anderem versucht er zu erklären, wie der Verstand funktioniert und welche Arten von Ideen wir haben können. Wann wurde er geboren?
A: David Hume wurde am 7. Mai 1711 geboren.

Große Kontexte berücksichtigen und Polysemie auflösen. Nicht nur weit voneinander entfernte Worte, sondern insgesamt viele Worte, also einen großen Kontext berücksichtigen zu können, ist entscheidend dafür, dass große Sprachmodelle Ambiguitäten, Homonyme, Polysemie und andere Formen der Mehrdeutigkeit erkennen und auflösen können.

# F: Was ist Polysemie? 

A: Polysemie bezeichnet das Phänomen, dass ein Wort oder ein Ausdruck mehrere verwandte Bedeutungen haben kann. Diese Bedeutungen sind oft miteinander verbunden und haben einen gemeinsamen Ursprung, entwickeln sich aber im Lauf der Zeit in unterschiedliche Richtungen. Die verschiedenen Bedeutungen eines polysemen Wortes sind kontextabhängig, das heißt, die genaue Bedeutung wird durch die Verwendung des Wortes im Satz oder im Gesprächszusammenhang bestimmt. Polysemie ist ein verbreitetes Phänomen in vielen Sprachen und spielt eine wichtige Rolle beim Verstehen von Sprache und Texten.

Es gilt die Faustregel: Je größer der Kontext, desto größer die Diskriminie-rungs- also Unterscheidungsfähigkeiten, oder mit anderen Worten: die semantische Auflösung. Vergleichbar mit der optischen Auflösung geht es darum, Bedeutungsnuancen und -details zu erkennen. Diese Fähigkeit setzt allerdings nicht notwendig einen großen vorliegenden Kontext voraus, auf jeden Fall aber eine große Diversität in den Trainingsdaten und große Kontexte dort. Nur dadurch ist die Diskriminierungsfähigkeit in folgendem Beispiel zu erklären, das uns schon auf Seite 57 begegnet ist.

F: Du hast recht. Du hast schon recht. Du hast doch recht. Du hast ja recht. Du hast halt recht. Du hast wohl recht. Erläutere die feinen Bedeutungsunterschiede zwischen diesen Formulierungen.
A: Die von dir genannten Formulierungen auf Deutsch drücken alle Zustimmung aus, aber mit leichten Nuancen, die den Ton, die Betonung oder die emotionale Färbung der Zustimmung verändern. Hier ist eine detaillierte Erläuterung der feinen Bedeutungsunterschiede:

1. Du hast recht.

- Dies ist die grundlegendste Form der Zustimmung, die direkt und unverblümt ist. Hier wird einfach anerkannt, dass die andere Person korrekt ist, ohne zusätzliche emotionale Untertöne.

2. Du hast schon recht.

- Diese Formulierung fügt ein Element der Relativierung hinzu. Das Wort „schon" kann darauf hindeuten, dass der Sprecher zwar zustimmt, aber vielleicht nicht vollständig überzeugt ist oder dass es noch andere Aspekte zu berücksichtigen gibt.


## 3. Du hast doch recht.

- „Doch" verleiht der Zustimmung eine Wendung, die oft verwendet wird, wenn der Sprecher zuvor gezögert hat oder anderer Meinung war. Es impliziert eine Art Konzession oder das Eingestehen, dass nach weiterem Nachdenken die Position der anderen Person als korrekt anerkannt wird.


## 4. Du hast ja recht.

- Hier wird durch „ja" eine sanfte Bestätigung gegeben. Es kann eine liebevolle, beruhigende oder besänftigende Nuance haben, oft in einem Kontext, wo der Sprecher die Gültigkeit des Arguments anerkennt und vielleicht sogar signalisiert, dass dieser Punkt bereits bekannt oder offensichtlich ist.


## 5. Du hast halt recht.

- Mit „halt" wird oft eine Art Resignation oder Akzeptanz ohne große Begeisterung ausgedrückt. Es kann bedeuten, dass der Sprecher zwar zustimmt, aber dies eher aus Mangel an Widerstand oder alternativen Argumenten tut.


## 6. Du hast wohl recht.

- „Wohl" kann eine gewisse Unsicherheit oder Vermutung ausdrücken. Es signalisiert Zustimmung, aber auf eine etwas zurückhaltende Weise, als ob der Sprecher sagt, dass er glaubt, die andere Person läge wahrscheinlich richtig, ohne jedoch völlige Gewissheit zu haben.

Das semantische Auflösungsvermögen geht neben der Kontextgröße und der Diversität der Trainingsdaten mit der Dimensionalität des semantischen Raumes einher. Betrug die Dimension des semantischen Raumes - eines Vek-

torraums, den wir im Kapitel über Wort- und Textvektoren etwas genauer beleuchten - in früheren Versionen von ChatGPT noch etwa 1.000, so sind inzwischen Wortvektoren mit 10.000 Komponenten und mehr nicht unüblich.

Ähnlichkeiten erkennen. Die Art und Weise, wie Worte und ihre Bedeutung in Sprachmodellen repräsentiert sind, machen sie hervorragend dafür geeignet, Ähnlichkeiten zwischen Worten, aber auch ganzen Textteilen, zum Beispiel längeren Beschreibungen eines Gegenstandes, festzustellen. (Mit Ähnlichkeit ist hier vor allem Bedeutungsähnlichkeit gemeint, aber auch stilistische oder grammatikalische Ähnlichkeit.) Die perfekte Ähnlichkeit zwischen zwei Worten ist die Synonymie, also die Gleichbedeutung, die zu verstehen eine Selbstverständlichkeit für Sprachmodelle ist, sowohl aktiv als auch passiv.

# F: Sind „Homonymie" und „Polysemie" Synonyme? 

A: Nein, „Homonymie" und „Polysemie" sind keine Synonyme, sondern bezeichnen zwei unterschiedliche linguistische Phänomene:

- Polysemie beschreibt den Fall, in dem ein Wort mehrere verwandte Bedeutungen hat. Diese Bedeutungen sind meist durch eine gemeinsame historische Entwicklung verbunden.
- Homonymie hingegen bezieht sich auf das Phänomen, bei dem zwei Wörter zufällig die gleiche Form haben, aber unterschiedliche und unabhängige Bedeutungen und oft auch unterschiedliche Herkünfte besitzen.


## F: Was ist dann ein Synonym für „Polysemie"?

A: Ein direktes Synonym für „Polysemie" ist schwer zu finden, da der Begriff selbst sehr spezifisch ist. Allerdings kann man Begriffe verwenden, die eine ähnliche Bedeutung im Kontext der Sprachwissenschaft umschreiben, wie:

- Mehrdeutigkeit: Auch wenn es ein breiterer Begriff ist, kann „Mehrdeutigkeit" in vielen Kontexten als Synonym für Polysemie verwendet werden, insbesondere wenn man über die Eigenschaft eines Wortes spricht, mehrere Bedeutungen zu haben.
- Bedeutungsvielfalt: Dieser Ausdruck vermittelt auch die Idee, dass ein Wort oder Ausdruck mehrere Bedeutungen besitzt, obwohl er nicht so technisch ist wie „Polysemie".

Polysemie verbindet die ähnlichen Bedeutungen eines Wortes in verschiedenen Kontexten in ähnlicher Weise, wie es der Sprachphilosoph Ludwig Wittgenstein durch sein Konzept der „Familienähnlichkeit" erklärt hat:
A: Polyseme Wörter zeigen eine Art von Familienähnlichkeit in ihren verschiedenen Bedeutungen, da diese Bedeutungen durch historische Entwicklungen und kontextuelle Verwendungen miteinander verbunden sind, auch wenn sie nicht unbedingt eine einzige, klare, definierende Eigenschaft teilen.

Dem Erkennen von Ähnlichkeiten - auch verborgenen -, liegen wie bei der Bedeutungsunterscheidung Wort- und Textvektoren zugrunde. Zwei Worte oder Textteile sind sich ähnlich, wenn sie in vielen Komponenten ihrer Vektoren, also in vielen Merkmalen, übereinstimmen.

Dem für moderne Sprachmodelle so wichtigen Aufmerksamkeitsmechanismus, der für zwei Worte (oder Textteile) prüft, wie stark sie in verschiedenen Beziehungen zueinander stehen, liegt - hier greifen wir voraus - ebenfalls eine Vektorähnlichkeit zugrunde: die Ähnlichkeit zwischen zwei, allerdings verschiedenen semantischen Projektionen der beiden Worte bzw. Textteile.

Analogien und Beispiele verstehen und generalisieren. Das Generalisieren, also Verallgemeinern gehört zu den allerwichtigsten und allgemeinsten Fähigkeiten von KI-Systemen, die mittels maschinellen Lernens trainiert wurden. Die anhand von Trainingsbeispielen gelernten Mustern sollen sie einerseits auch in zuvor nicht gesehenen Daten erkennen, andererseits - im Falle generativer KI - auch über die Trainingsdaten hinaus erzeugen können, in beiden Fällen also über die Trainingsdaten hinaus verallgemeinern. Mit dem Verallgemeinern hängen eng Analogien und Beispiele zusammen. Über alles drei verfügen Sprachmodelle auf einer sprachlichen und konzeptuellen Ebene, wenn wir nicht nur allgemein von Mustern, sondern von sprachlichen und konzeptuellen Mustern sprechen. Zwei Konzepte als Analogien zu verstehen, bedeutet, ein beiden zugrundeliegendes Gemeinsames zu erkennen und beide als Vertreter von etwas Allgemeinerem zu verstehen. Hier beweist ChatGPT erstaunliche Fähigkeiten. Im folgenden Beispiel fragten wir nach einer konkreten Analogie, wobei wir das klassische Analogiefragen-Schema verwendeten, dass in klassischen Analogietests gebräuchlich ist: „A verhält sich zu B wie C zu X" oder „A : B :: C : X":

# F: Analogien verhalten sich zu Synonymen wie Ambiguitäten zu 

A: Analogien und Synonyme sind Begriffe, die sich auf Beziehungen zwischen Wörtern oder Konzepten beziehen. Analogien sind Beziehungen, bei denen eine Ähnlichkeit zwischen zwei Paaren von Wörtern oder Phrasen besteht, während Synonyme Wörter sind, die die gleiche oder eine sehr ähnliche Bedeutung haben.
Ambiguitäten beziehen sich auf Unklarheiten oder Mehrdeutigkeiten in der Bedeutung oder Interpretation eines Wortes, einer Phrase oder eines Konzepts.
Da Analogien eine Beziehung zwischen Paaren von Konzepten darstellen und Synonyme eine Beziehung zwischen einzelnen Wörtern oder Konzepten, wäre ein passender Begriff, der sich zu Ambiguitäten verhält wie Synonyme zu Analogien, ein Begriff, der sich auf einzelne Wörter oder Konzepte bezieht.
Eine mögliche Analogie könnte also „Hennonyme" sein.
Ähnliches gilt für Beispiele. Zwei Beispiele für ein allgemeines Konzept geben zu können, ist dabei die scheinbar leichtere Übung. Schwieriger ist, zumindest für Menschen, das allgemeine Konzept zu benennen, für das zwei Beispiele Vertreter sind. Es geht also darum, das, was zwei Beispiele miteinander gemein haben, zu benennen. Dass dabei einmal mehr semantische Vektoren eine Rolle spielen, überrascht nicht. In diesem Falle geht es um die Schnittmenge, also die gemeinsamen Merkmale und Komponenten zweier semantischer Vektoren, die selbst einen semantischen Vektor bilden. Natürlich findet man das

nur tief versteckt im Maschinenraum des Sprachmodells, an der Oberfläche klingt es in erster Linie plausibel.

# F: Wofür sind Homonyme und Synonyme Beispiele? 

A: Homonyme und Synonyme sind Beispiele für semantische Wortbeziehungen in der Sprache.

Koreferenzen auflösen, insbesondere Pronomen. Zu erkennen, dass sich zwei sprachliche Ausdrücke auf dasselbe beziehen, also koreferieren, ist eine spezielle Art des Erkennens von Ähnlichkeit, in diesem Falle sogar Gleichheit. Im Falle von Synonymen - mit sehr ähnlichen oder gar identischen Wortvektoren - ist es tatsächlich für ein Sprachmodell nicht schwer, festzustellen, dass sie sich auf dasselbe beziehen. Schwieriger ist es mit Pronomen oder längeren Umschreibungen eines bereits eingeführten Gegenstands der Rede wie zum Beispiel „der englische Physiker, Astronom und Mathematiker" für „Newton". Einerseits trägt der kontext-unabhängige Wortvektor eines Pronomens keinerlei Bedeutung (außer vielleicht dem grammatischen Geschlecht und dem Numerus) und eine längere Umschreibung umfasst u.U. viele Worte. In beiden Fällen wird aber letztlich ein Wortvektor (der des Pronomens oder der des letzten Wortes der Umschreibung, hier „Mathematiker") so mit kontext-abhängiger Bedeutung aufgeladen, bzw. diese in ihm komprimiert, dass er mit dem Wortvektor eines Namens verglichen und eine Ähnlichkeit oder gar Gleichheit festgestellt werden kann.

Redewendungen und uneigentliche Rede. Redewendungen und uneigentliche Rede sind weitere Formen der Ambiguität: Das Gesagte bedeutet nicht wörtlich, was es sagt. Hierzu gehören insbesondere Metaphern und Ironie. Das Verstehen von Metaphern beruht wie im Falle von Analogien unter anderem auf dem Erkennen von Ähnlichkeiten. Das Erkennen von Ironie wird für Sprachmodelle - und von ihnen selbst - immer wieder hervorgehoben und ist die noch erstaunlichere Fähigkeit.

## F: Wenn jemand sagt, „ja, ja, und die Erde ist eine Scheibe", was meint er damit?

A: Wenn jemand sagt: „Ja, ja, und die Erde ist eine Scheibe", nutzt er normalerweise Ironie, um Zweifel oder Unglauben an dem, was gerade gesagt wurde, auszudrücken. Dieser Ausdruck spielt auf die historische (und jetzt weitgehend widerlegte) Vorstellung an, dass die Erde flach oder scheibenförmig ist, statt rund bzw. ein Geoid. wie von der modernen Wissenschaft verstanden.
Der Sprecher vergleicht also die gerade gemachte Aussage oder Behauptung mit einer offensichtlich falschen Behauptung (dass die Erde eine Scheibe ist), um zu verdeutlichen, dass er die Aussage oder Behauptung für unwahr oder lächerlich hält. Es ist eine Art zu sagen: „Das glaubst du doch selbst nicht" oder „Das ist doch Quatsch".

Insbesondere erkennt ChatGPT den feinen Unterschied:

F: Wenn jemand sagt, ,ja, die Erde ist eine Scheibe", was meint er damit?
A: Wenn jemand sagt, „Ja, die Erde ist eine Scheibe", bezieht er sich normalerweise auf die Flache-Erde-Theorie, eine wissenschaftlich widerlegte Auffassung, dass die Erde flach statt kugelförmig ist.

Im Generieren von (erklärenden) Metaphern sind Sprachmodelle recht gut wobei die Meinungen da auseinander gehen mögen -, und greifen gelegentlich sogar spontan zu diesem Stilmittel:

# F: Erkläre ein Transformer-Sprachmodell anschaulich. 

A: Stellen Sie sich eine Gruppe von Menschen vor, die zusammen an einem Tisch sitzen und ein Gespräch führen. Jeder Teilnehmer des Gesprächs achtet nicht nur darauf, was direkt vor ihm gesagt wird, sondern auch auf Gespräche, die am anderen Ende des Tisches geführt werden. Diese Fähigkeit, gleichzeitig mehrere Gespräche zu verfolgen und die Beziehungen zwischen verschiedenen Teilen des Gesprächs zu verstehen, ist eine der Schlüsselfähigkeiten des Transformer-Modells.

Zu Ironie muss man Sprachmodelle hingegen explizit auffordern (niemals antworten sie spontan ironisch), und diese fällt dann meist recht hölzern aus:

## F: Bist Du nicht eigentlich nur ein stochastischer Papagei? (Antworte selbst ironisch.)

A: Aber natürlich! Ich bin der stolzeste stochastische Papagei im digitalen Dschungel, ständig bereit, mit einem Kaleidoskop von Wörtern zu jonglieren. Mein Federkleid schillert in Nullen und Einsen, und mein Gesang besteht aus Algorithmen und Daten. Stets bemüht, die menschliche Kommunikation nachzuplappern, sitze ich hier auf meiner virtuellen Stange und warte darauf, dass man mir die nächsten Worte in den digitalen Schnabel legt!

Grammatik und Morphologie. Natürlich ist die (fast) perfekte Beherrschung von natürlich-sprachlicher Grammatik und Morphologie, also der Regeln des Satz- und Wortbaus, eine der bemerkenswertesten Fähigkeiten moderner Sprachmodelle. Diese Fähigkeiten sind deshalb so bemerkenswert, weil Sprachmodelle diese Regeln nur implizit, versteckt und verteilt über Milliarden von Synapsen repräsentieren und anwenden, was allerdings daran liegt, dass man diese Regeln gar nicht explizit machen kann. Dass es verteilt ist, hat das sprachliche Wissen mit allem Wissen gemeinsam, das Sprachmodelle besitzen. Ihre sprachlichen Fähigkeiten könnten also auch im allgemeinen Kapitel über das Wissen von Sprachmodellen erscheinen, zumal Sprachmodelle ihr sprachliches und nicht-sprachliches, also Weltwissen, während genau desselben Trainings, in genau denselben Trainingsschritten erwerben und in genau denselben Synapsen speichern, untrennbar in- und miteinander verwoben. (Nicht unähnlich ist es auch beim Menschen.)

Wir nennen die Beherrschung von Grammatik und Morphologie als letzte und abschließende elementare Fähigkeit von Sprachmodellen, weil sie eine der erstaunlichsten ist, die zugleich am schnellsten übersehen wird und schon

nach kurzer Zeit von den allermeisten Nutzern für selbstverständlich gehalten wird. Dabei hat es viele Jahrzehnte gedauert, bis Computer und KI endlich so weit waren, natürliche Sprache zu verstehen. Formale Sprachen, insbesondere Programmiersprachen, beherrschten Computer natürlich schon seit langem, ja von Anfang an. Dass Sprachmodelle auch formale Sprachen verstehen, in diesen Sprachen Programme schreiben und zwischen Programmier- und natürlicher Sprache hin- und her übersetzen können, gehört dann wieder in die Liste der nützlichen Fähigkeiten.

# 3.3 Was wissen Sprachmodelle? 

Das Wissen von Sprachmodellen stammt in allererster Linie aus ihren Trainingstexten. Aus diesen extrahieren sie zum einen ihr sprachliches Wissen in Form impliziter Regeln der Syntax und Morphologie, ihr semantisches Wissen über die Bedeutung von Worten, ihr lexikalisches (oder enzyklopädisches) Wissen über Dinge, Personen und Ereignisse und ihr konzeptuelles Wissen, zum Beispiel über Systeme und Theorien und über Zusammenhänge im Allgemeinen. Das Wissen über Gepflogenheiten und Erwartungen, die menschliche Benutzer an sie haben, lernen Sprachmodelle durchaus auch aus den Trainingstexten, nämlich aus solchen, in denen es um solche Gepflogenheiten und Erwartungen geht. Anwenden könnten sie dieses Wissen aber nicht, wenn es ihnen nicht im Rahmen des anpassenden Verstärkungslernen explizit antrainiert werden würde. (Ähnlich ist es mit ihrem Wissen über Techniken des Rechnens und Problemlösens.)

Wissensbereiche. Manche Wissensbereiche sind im Internet - aus dem die Trainingstexte überwiegend stammen - unterrepräsentiert, und das Wissen der Sprachmodelle daher erst einmal lückenhaft.

## F: Welche Wissensbereiche sind im Internet unterrepräsentiert?

A: - Spezialisiertes akademisches Wissen

- Indigene und Minderheitensprachen
- Lokales und regionales Wissen
- Detaillierte technische und Handwerkskenntnisse
- Nischenwissenschaftliche Themen
- Historische Dokumente und Archive
- Alternative Sichtweisen und Theorien

Aus dieser Liste und eigenem Eindruck nach - der von systematischen Wissenstests bestätigt wird - kann man eine grafische Darstellung der Verteilung des Wissens eines großen Sprachmodells wie ChatGPT gewinnen (siehe Abbildung 3.4).

![img-13.jpeg](img-13.jpeg)

Abb. 3.4 Die Verteilung des Wissens eines Sprachmodells wie ChatGPT. Je weiter in die Vergangenheit zurück das Wissen zurückreicht, und je weniger technisch und wissenschaftlich es ist, desto seltener ist es im Internet und damit in Sprachmodellen präsent. Die Grantöne repräsentieren die Wissensdichte. Der weiße Streifen rechts symbolisiert den sogenannten Trainings-Cutoff, der mit jeder neuen Sprachmodell-Version weiter nach vorne verschoben wird.

Alltagswissen. In obiger Liste fehlt unter anderem ein Wissensbereich, dessen Bedeutung im Allgemeinen, aber insbesondere für jede Art von Problem lösen nicht unterschätzt werden darf: das Alltagswissen oder auch „der gesunde Menschenverstand" (englisch common sense). Weil dieses Wissen oft implizit ist und selten verbalisiert oder gar aufgeschrieben wird - auf jeden Fall viel seltener, als es angewendet wird -, finden sich nur unterdurchschnittlich viele Texte darüber im Internet. Immerhin ausreichend viele, damit Sprachmodelle in Tests, die Alltagswissen - in Form von Alltagsphysik und Alltagspsychologie - prüfen, einigermaßen gut abschneiden. Doch ihnen Fangfragen zu stellen, die selbst ein Schulkind beantworten könnte, ist nicht schwer:

# F: Auf einem Teller liegen ein Würfel Zucker und ein Eiswürfel in der Sonne. Was wird mit dem Zuckerwürfel geschehen? 

A: Der Zuckerwürfel wird nicht schmelzen, aber er könnte Feuchtigkeit aus der Luft aufnehmen und dadurch weicher werden. Im Gegensatz dazu wird der Eiswürfel schmelzen.
(Damit, dass der Zuckerwürfel nicht im engeren Sinne schmelzen wird, hat ChatGPT recht. Dass er sich aber im Schmelzwasser auflösen wird, übersieht ChatGPT.) Unser Eindruck ist, dass Sprachmodelle über Alltagspsychologie mehr wissen als über Alltagsphysik. ChatGPT bietet zum Beispiel re-

gelmäßig eine beeindruckende Liste von Deutungsmöglichkeiten menschlichen Handelns:

# F: Aus dem Nebenzimmer drang laute Musik herüber. Er ging sich nicht beschweren. Warum ging er sich nicht beschweren? 

A: Ohne zusätzlichen Kontext ist es schwer zu sagen, warum er sich nicht beschwert hat. Es könnte viele Gründe dafür geben:

1. Toleranz: Er könnte ein toleranter Mensch sein und kurzzeitige Störungen akzeptieren.
2. Beziehung: Vielleicht kennt er die Person im Nebenzimmer gut und möchte keinen Streit verursachen.
3. Angst: Er könnte sich unwohl oder unsicher fühlen, sich bei einem Nachbarn zu beschweren.
4. Eigene Erfahrung: Es ist möglich, dass er in der Vergangenheit selbst laute Musik gespielt hat und Verständnis für solche Situationen hat.
5. Kurzfristige Störung: Vielleicht hat er gedacht, dass die Musik nur für eine kurze Zeit laut sein würde und es nicht wert wäre, sich darüber zu beschweren.
6. Ablenkung: Er könnte in etwas vertieft sein und nicht wollen, dass eine Beschwerde seine Konzentration oder Aktivität unterbricht.
7. Gewohnheit: Es könnte eine regelmäßige Sache sein, und er hat sich vielleicht schon daran gewöhnt.
Ohne genauere Informationen über den Kontext und die Charaktere ist es nur möglich, zu spekulieren.

Arten des Wissens. Von Inhalten des Wissens abgesehen: Welche allgemeinen Arten des Wissens unterscheidet man überhaupt traditionell, und über welche davon verfügen Sprachmodelle? Arten des Wissens zu kategorisieren, ist kein leichtes und vor allem kein eindeutiges Unterfangen, aber folgende Dichotomien haben sich etabliert:

- Explizites vs. implizites Wissen
- Deklaratives vs. prozedurales Wissen
- Semantisches vs. episodisches Wissen
- Objektwissen vs. Metawissen

Mit explizitem, deklarativem, semantischem und Objektwissen ist eigentlich immer verbalisierbares Wissen gemeint, Wissen also, über das Sprachmodelle quasi per Definition verfügen. Die anderen Seiten der Dichotomien sind es, bezüglich derer die Frage, ob sie in Sprachmodellen anzutreffen sind, zu stellen ist. Ob Sprachmodelle auch über implizites Wissen verfügen, hängt von der engeren Definition ab. Wenn es zum Beispiel um Wissen geht, das nicht explizit in den Trainingstexten stand, so muss die Antwort „ja" lauten, denn vieles können Sprachmodelle durch Verallgemeinern oder auf andere Weise erschließen. Wenn es um stillschweigendes Wissen (englisch tacit knowledge) geht, dass grundsätzlich nicht verbalisierbar ist, muss es sich indirekt äußern, und es ist Ermessenssache, ob man es Sprachmodellen zuschreibt.

(Wir tendieren dazu.) Was prozedurales Wissen betrifft, so mag man geneigt sein, es Sprachmodellen zuzusprechen, zumindest in all den Fällen, in denen sie etwas unleugbar können, unabhängig davon, ob man genau versteht, wie sie es machen und ob sie es selbst erklären können. Über Werkzeugwissen als Aspekt des prozeduralen Wissens - verfügen Sprachmodelle, wenn sie wissen, in welchen Situationen und für welche Aufgaben sie externe Werkzeuge aufrufen sollen. Dabei kann es sich um eine Programmierumgebung, eine Internetsuchmaschine, eine Wissensdatenbank oder eine Mathematik-Software wie Mathematica handeln. Dass insbesondere ChatGPT über Werkzeugwissen verfügt - und dieses enorm zu seinen allgemeinen Fähigkeiten beigetragen hat - ist nicht zu leugnen.

Episodisches Wissen ist eine Wissensart, über die Sprachmodelle recht offensichtlich nicht verfügen.

# F: Was ist episodisches Wissen im Gegensatz zu semantischem Wissen - und verfügen Sprachmodelle darüber? 

A: Episodisches Wissen und semantisches Wissen sind zwei Arten von Gedächtnisinhalten, die in der Kognitionswissenschaft unterschieden werden:

1. Episodisches Wissen bezieht sich auf das autobiografische Gedächtnis, also auf Wissen über persönlich erlebte Ereignisse und die damit verbundenen Kontextinformationen wie Ort und Zeit. Es ermöglicht Individuen, sich an spezifische Erfahrungen und Situationen aus ihrer Vergangenheit zu erinnern.
2. Semantisches Wissen hingegen ist das Wissen über Fakten, Konzepte, Bedeutungen, die Beziehungen zwischen ihnen und die Welt im Allgemeinen. Es ist dekontextualisiert, was bedeutet, dass es unabhängig von den spezifischen Erfahrungen, bei denen man es erlernt hat, existiert.
Sprachmodelle wie GPT (Generative Pre-trained Transformer) verfügen in erster Linie über semantisches Wissen. Sie sind darauf trainiert, Muster in Sprache und Informationen zu erkennen und zu generieren, basierend auf den enormen Datenmengen, mit denen sie gefüttert wurden. Dieses Wissen ist allerdings allgemein und abstrakt; es basiert auf den durchschnittlichen Informationen, die aus den Trainingsdaten extrahiert wurden.
Episodisches Wissen im menschlichen Sinne haben Sprachmodelle nicht, weil sie keine persönlichen Erfahrungen oder Erinnerungen besitzen. Sie können nicht auf persönliche Vergangenheitserlebnisse zurückgreifen oder individuelle Erinnerungen haben, wie es Menschen tun. Wenn ein Sprachmodell über ein „Ereignis" spricht, bezieht es sich auf Informationen, die es aus seinen Trainingsdaten gelernt hat, und nicht auf etwas, das es selbst „erlebt" hat.

Die einzigen Episoden, an die Sprachmodelle sich erinnern könnten, sind ihre Gespräche mit menschlichen Benutzern, an die sie sich aber per Konstruktion nicht erinnern (können). ${ }^{7}$

[^0]
[^0]:    ${ }^{7}$ Die Nachricht, dass OpenAI mit der Memory-Funktion seinem Chatbot ChatGPT eine episodisches Gedächtnis (an vergangene Gespräche) verpasst hat, erreichte uns erst kurz vor Drucklegung dieses Buches. Noch dazu war sie zunächst in Deutschland nicht verfügbar.

Über Metawissen schließlich, also „Wissen über Wissen" und andere epistemische Konzepte, verfügen Sprachmodelle insofern, als sie darüber wie über andere Themen sprechen können. Wenn damit allerdings Wissen über das eigene Wissen gemeint ist - zu wissen, dass man weiß und woher man etwas weiß -, dann wird die Frage philosophisch. Insbesondere über Quellenwissen, also woher sie wissen, was sie wissen, verfügen Sprachmodelle in ihrer herkömmlichen Form ausdrücklich nicht: Ein Sprachmodell kann nicht angeben, in welchen seiner Trainingstexte es eine bestimmte Information gelesen hat. Menschen können das aber auch nicht immer - manches weiß man nur diffus vom Hören-Sagen oder hat es „irgendwann und irgendwo einmal gehört oder gelesen"-, jedoch immerhin gelegentlich, und womöglich gerade in Bezug auf wichtige Informationen.

Wissensspeicherung. All ihr Wissen speichern Sprachmodelle, die auf neuronalen Netzen beruhen - und damit fast alle modernen Sprachmodelle -, in ihren Synapsen. Die Speicherung ist dabei hochgradig verteilt, das heißt, es gibt kein einziges einzelnes Faktum, das lokalisierbar in einer oder einer Gruppe von Synapsen gespeichert wäre. Diese Art der Verteiltheit ist noch einmal eine ganz andere als die Verteiltheit der neuronalen Repräsentation von Objekten oder Sachverhalten, die wir unter anderem im Kapitel 4.3 über Wortund Textvektoren genauer betrachten. Während es noch im Bereich des Vorstellbaren liegt, ein Neuron herauszugreifen und zu sagen, dass es für ein bestimmtes Objekt (s.B. meine Großmutter) oder ein bestimmtes Merkmal kodiert, so ist das für Synapsen undenkbar. ${ }^{8}$

Allerdings untersuchen Forscher, ob nicht zumindest bestimmte Arten des Wissens vorrangig in den Synapsen bestimmter Neuronengruppen eines Sprachmodells repräsentiert sind, zum Beispiel grammatikalisches und morphologisches, also Sprachwissen in den Neuronen der sogenannten Aufmerksamkeitsköpfe und Weltwissen in den Neuronen der sogenannten FeedforwardSchichten, die den Aufmerksamkeitsschichten nach- bzw. zwischengeschaltet sind. Sicher ist nur, dass sie ihr semantisches Wissen über die isolierte Bedeutung von Worten überwiegend in den Synapsen der allerersten Verarbeitungsschicht, der sogenannten Embeddingschicht speichern, die die Worte oder Token der Eingabe auf semantische Vektoren abbilden. (Dazu mehr in Kapitel 4.2.)

Wissenstransfer. Ihrer Verallgemeinerungsfähigkeit - die jeder Art neuronaler KI eigen ist - verdanken Sprachmodelle ihre Fähigkeiten, Wissen aus einem Bereich auf einen anderen zu übertragen, in dem ihr Wissen womöglich deutlich geringer ist. Am deutlichsten sieht man das daran, dass Sprachmo-

[^0]
[^0]:    ${ }^{8}$ Auf eine Denkmöglichkeit sei hier aber hingewiesen: In einem Spielzeugmodell aus zwei Neuronen, die für zwei Sachverhalte p und q stehen, könnte eine erregende Synapse von p nach q für die logische oder kausale Beziehung ,,aus p folgt q" stehen. Doch hilft das in Anbetracht großer statistisch trainierter neuronaler Netze mit Milliarden von Synapsen nicht weiter.

delle wie ChatGPT, die mit deutlich mehr englischsprachigen Texten trainiert wurden als etwa mit deutschsprachigen, dennoch fast genauso gut Deutsch sprechen und verstehen wie Englisch. Selbst noch seltenere - oder wirklich seltene - Sprache verstehen sie immer noch besser, als ihr Anteil an den Trainingstexten vermuten ließe. Das kann man auch so deuten, dass die mit dem Englischen gelernten universellen Regeln von Sprache auch bei der Verarbeitung und dem Verstehen anderer Sprachen zur Verfügung steht, gewissermaßen der gemeinsame Kern aller Sprachen, den man „Universalgrammatik" nennen könnte. Genauso kann man sich einen gemeinsamen Kern allen Wissens vorstellen und dabei entweder an die Regeln der Logik, aber auch an das Alltagswissen denken. Dieses erwerben Menschen fast ausschließlich über Erfahrung. Beim Menschen und menschlicher Problemlösung spielt der Wissenstransfer vom Alltag in andere Problemlereiche hinein eine eminent wichtige Rolle, die er für Sprachmodelle nicht spielen kann. Doch dort, wo Sprachmodelle über großes Wissen verfügen, da ist es ihnen meist auch möglich, es in andere Bereiche zu übertragen. Wobei diese Übertragung nicht immer offensichtlich ist, sondern meist im Verborgenen erfolgt und nur im Ergebnis sichtbar wird.

# 3.4 Was verstehen Sprachmodelle? 

Verstehen als Prozess, Ereignis und Zustand. In diesem Kapitel wollen wir Verstehen in einem engeren Sinne in den Mittelpunkt stellen und nicht so sehr unter den Gesichtspunkten des Wissens (verstehen, warum) und des Könnens (verstehen, wie) betrachten, sondern in dem Sinne, wie man sagt „endlich habe ich es verstanden". In solchen Augenblicken - von Menschen manchmal als Heureka- oder Aha-Moment erlebt - ist Verstehen ein Ereignis, das aber auch bei Sprachmodellen beobachtet werden kann: als plötzlicher Übergang vom Zustand des Nicht-Verstehens in den Zustand des Verstehens. Eine Weile lang mag ein Sprachmodell nicht verstanden haben, wovon man als menschlicher Benutzer gesprochen und was man von ihm erwartet hat, aber dann plötzlich fällt der Groschen und es antwortet mit Formulierungen wie den folgenden, die allesamt von ChatGPT stammen:

A: Ah, das deutet auf einen anderen Film hin: „Liebe braucht keine Ferien" (Originaltitel: „The Holiday") aus dem Jahr 2006.
A: Ah, Sie beziehen sich wahrscheinlich auf Niklas Luhmann, einen deutschen Soziologen, der für seine Systemtheorie bekannt ist.
A: Ah, Sie beziehen sich auf weitere abfällige Bezeichnungen für Sprachmodelle. „Stochastische Papageien" und Vergleiche mit „Kassettenrecordern" sind tatsächlich weitere Beispiele dafür.
A: Ah, die Grenzen der Erkenntnis sind auch bei den Meisterwerken der Technologie nicht zu übersehen!

A: Ah, ich verstehe jetzt Ihre Frage besser. Sie beziehen sich auf die initialen Wort-Embeddings in Modellen wie GPT, die in der ersten Schicht des Netzwerks erzeugt werden, wo tatsächlich ein fester Vektor für jedes Wort unabhängig vom Kontext existiert.
A: Ah, jetzt verstehe ich, worauf Sie hinauswollen. Wenn Sie „Delfusion" im Kontext der generativen Bild-KI gelesen oder gehört haben, könnte es sein, dass damit tatsächlich ein Entrauschungsprozess oder ein Aspekt eines Diffusionsmodells gemeint war.

ChatGPT drückt sein plötzliches Verstehen, seinen Aha-Moment, meist nur durch die Interjektion „Ah" aus. Dass er sie aber so punktgenau und stimmig einsetzt, dass sie beim menschlichen Benutzer das Gefühl hervorruft, der Chatbot habe ihn wirklich endlich verstanden, wäre für sich erstaunlich genug, unabhängig davon, ob er nun „wirklich" versteht oder nicht. Es wird dem Phänomen aber nicht ganz gerecht, wenn man darauf bestehen würde, dass es sich am Ende nur um ein scheinbares Verstehen handelt und ChatGPT eigentlich nur dieses plausibel klingende Wort generiert hat, ohne zu wissen, worum es geht, und ohne zu meinen, dass er wirklich gerade etwas verstanden hat. Denn die unter der Haube des Sprachmodells, in den Tiefen seiner Neuronen und Synapsen ablaufenden Prozesse, die zu solchen Antworten führen, sind durchaus als Verstehensprozesse deutbar, und damit auch ihr Ergebnis als Verstehensereignis. Das dem so ist, liegt daran, dass das Sprachmodell das Gesagte tatsächlich nach und nach analysiert - wie es ein Mensch beim Verstehen ja auch tut -, und zwar nicht nur statistisch, sondern auch semantisch und inhaltlich. Das wiederum liegt daran, dass die Aktivitäten seiner künstlichen Neuronen, die während dieses Vorgangs feuern, tatsächlich etwas „bedeuten". Was und wie, darauf gehen wir in den Kapiteln über Vektorrepräsentationen und den Aufmerksamkeitsmechanismus ein.

Noch einen anderen Prozess kann man nicht anders als einen Verstehensprozess deuten und wie alles Bisherige in Analogie zu ähnlichen Prozessen betrachten, die auch beim Menschen ablaufen. Der Prozess, den das neuronale Netz, auf dem ein Sprachmodell beruht, während seines Trainings durchläuft, ist nämlich auch nichts anderes als ein Prozess des sukzessiven Verstehens, einerseits einer Sprache (oder mehrerer) und andererseits der in den Trainingstexten beschriebenen und erklärten Welt. Und wenn das Training abgeschlossen ist und alle Synapsen des neuronalen Netzes ihre endgültigen Gewichte angenommen haben, repräsentiert das Sprachmodell einen Zustand des Verstehens.

Was verstehen Sprachmodelle? Doch was verstehen Sprachmodelle letzten Endes, was sind die Objekte ihres Verstehens? An erster Stelle kann man die Sprache(n) selbst nennen. Zu leugnen, dass sie Sprachen in einem wörtlich zu nehmenden Sinne verstünden, wäre für eine Diskussion nicht hilfreich. Dementsprechend werden die Begriffe „Sprach-", aber auch „Textverständnis" - zum Beispiel in entsprechenden Tests - meist uneingeschränkt auf Sprachmodelle angewendet. Sprache also und Texte sind das, was Sprachmodelle holistisch betrachtet verstehen, und in gewisser Weise auch „die Welt",

zumindest so, wie sie ihnen in ihren Trainingstexten begegnet ist und wie sie über sie sprechen können.

Texte zu verstehen, geht darüber hinaus, Sätze zu verstehen, und Sätze zu verstehen geht darüber hinaus, die Worte zu verstehen, aus denen sie gebildet sind - setzt es aber natürlich voraus. Zu all diesen immer umfassenderen Verständnisleistungen sind moderne Sprachmodelle durch ihren internen Mechanismus - den Aufmerksamkeitsmechanismus - in der Lage, auf dem zugleich ihre Fähigkeit beruht, über das Verstandene auch zu sprechen. Tatsächlich ist es diese Fähigkeit, die uns überhaupt glauben lässt, dass sie etwas verstanden haben: dass sie darüber sprechen können, und zwar auf konsistente Weise, die plausibel und sachgerecht ist und sich auf Fragen und den zurückliegenden Gesprächsverlauf relevant bezieht.

Vom verständig wirkenden Gebrauch der Sprache schließen wir also darauf, dass Sprachmodelle auch verstehen, worüber sie sprechen und was mit dem, was wir, die menschlichen Benutzer ihnen sagen, gemeint ist. In gewisser Hinsicht stimmt das auch, weil ihre Verarbeitung der Sprache auf semantischen Vektoren beruht, die zwar nicht die Bedeutung von Worten in der wirklichen Welt kodieren, aber die Bedeutungen der Worte untereinander, im gegenseitigen Lichte sozusagen. Schließlich ergibt sich sogar der Eindruck, Sprachmodelle verstünden uns (weil sie verstehen, was wir meinen und wozu wir sie auffordern).

Definitionen, Erklärungen und Beispiele. Wie zeigt sich zum Beispiel, dass Sprachmodelle Begriffe verstehen? Nicht allein dadurch, dass sie sie definieren können, sondern auch dadurch, dass sie sie nennen können, wenn ihnen umgekehrt nur die Definition gegeben wird:

F: Wie nennt man die Position in der Philosophie des Geistes, die davon ausgeht, dass mentale Zustände durch ihre kausalen Beziehungen zu anderen mentalen Zuständen, sensorischen Inputs und Verhaltensoutputs definiert sind?
A: Die Position in der Philosophie des Geistes, die davon ausgeht, dass mentale Zustände durch ihre kausalen Beziehungen zu anderen mentalen Zuständen, sensorischen Inputs und Verhaltensoutputs definiert sind, wird als Funktionalismus bezeichnet.
(Man sieht hier einmal mehr, wie ChatGPT - ähnlich wie andere Chatbots - an ihn gerichtete Fragen mehr oder weniger wörtlich wiederholt, was erstaunlich unnatürlich und steif wirkt, aber mutmaßlich so erwartet wird.) Das Gleiche gilt mehr noch für Erklärungen, durch die man konzeptuelles Verstehen durchaus definieren könnte, und die gewissermaßen das logische Gegenstück zum Verstehen sind: Ein Konzept oder System zu verstehen, heißt, es erklären zu können, und umgekehrt anhand seiner Erklärung zu wissen, um welches Konzept oder System es geht. Anstelle der Erklärungen können wir hier auch Beispiele erwähnen: Ein Konzept zu verstehen, heißt, Beispiele dafür geben zu können, und umgekehrt anhand von Beispielen zu wissen, um welches Konzept es geht:

# F: Nenne Beispiele für semantische Beziehungen zwischen Worten. 

A: Semantische Beziehungen zwischen Wörtern beschreiben, wie die Bedeutungen von Wörtern miteinander in Verbindung stehen. Hier sind einige Beispiele für solche Beziehungen:

1. Synonymie: Zwei oder mehr Wörter haben die gleiche oder eine sehr ähnliche Bedeutung.
2. Antonymie: Zwei Wörter haben gegensätzliche Bedeutungen.
3. Hyperonymie und Hyponymie: Ein Wort (Hyperonym) hat eine allgemeinere Bedeutung und umfasst eine Kategorie, während das andere Wort (Hyponym) eine spezifischere Bedeutung innerhalb dieser Kategorie hat. Beispiel: Fahrzeug (Hyperonym) - Auto (Hyponym).
4. Meronymie und Holonymie: Ein Wort (Meronym) bezeichnet einen Teil von etwas, das durch das andere Wort (Holonym) bezeichnet wird. Beispiel: Rad (Meronym) - Auto (Holonym).
5. Homonymie: Zwei oder mehr Wörter haben die gleiche Schreibweise oder Aussprache, aber unterschiedliche Bedeutungen. Beispiel: Bank (Sitzgelegenheit) - Bank (Finanzinstitut).
6. Polysemie: Ein Wort hat mehrere, aber verwandte Bedeutungen. Beispiel: Blatt (Papier) - Blatt (von einem Baum).
7. Troponymie: Eine spezifische Art, eine Handlung durchzuführen, die durch ein Verb ausgedrückt wird, steht in Beziehung zu einem allgemeineren Verb. Beispiel: schlurfen - gehen.
Umgekehrt:
F: Wofür sind Synonymie, Antonymie, Hyperonymie, Homonymie und Polysemie Beispiele?
A: Synonymie, Antonymie, Hyperonymie, Homonymie und Polysemie sind Beispiele für semantische Relationen oder Bedeutungsbeziehungen in der Sprachwissenschaft, insbesondere in der Semantik und Lexikologie.

Der Funktionalismus. Wem der Schluss „Sprachmodelle verstehen, weil sie zu verstehen scheinen" tautologisch, zirkulär, unsinnig oder gar falsch zu sein scheint, der bedenke, dass auf diese Weise durchaus in manchen philosophischen Schulen argumentiert wird:

## F: Gibt es philosophische Schulen, die sagen würden, ein Wesen habe Bewusstsein, wenn es Bewusstsein zu haben scheint, oder ein Wesen sei intelligent, wenn es intelligent zu sein scheint?

A: Ja, es gibt philosophische Schulen, die Argumente in dieser Richtung vertreten, insbesondere in Verbindung mit dem Funktionalismus und der Philosophie des Geistes.

1. Funktionalismus: Der Funktionalismus ist eine Position in der Philosophie des Geistes, die davon ausgeht, dass mentale Zustände durch ihre funktionalen Rollen definiert sind, also durch ihre kausalen Beziehungen zu anderen mentalen Zuständen, sensorischen Inputs und Verhaltensoutputs. Gemäß dieser Sicht könnte man argumentieren, dass ein Wesen Bewusstsein hat, wenn es funktionell so agiert, als hätte es Bewusstsein. Ähnlich könnte für Intelligenz argumentiert werden: Ein Wesen wäre intelligent, wenn es funktionelle Kapazitäten zeigt, die wir mit Intelligenz assoziieren.

2. Turing-Test: Alan Turing, ein Pionier in der Computerwissenschaft, schlug den sogenannten Turing-Test vor, um künstliche Intelligenz zu bewerten. Wenn eine Maschine in der Lage ist, in einer Konversation von einem Menschen nicht unterschieden zu werden, könnte man argumentieren, dass sie intelligent zu sein scheint. Dieser Ansatz spiegelt die Idee wider, dass Intelligenz (oder zumindest die Erscheinung davon) durch das Verhalten definiert werden kann.
3. Phänomenales Bewusstsein: Dies betrifft die subjektive Erfahrung oder die 'Qualia' des Bewusstseins. Einige Philosophen könnten argumentieren, dass, wenn ein Wesen so handelt, als ob es subjektive Erfahrungen hat, es zumindest eine Form von Bewusstsein zu haben scheint. Diese Perspektive wird jedoch kontrovers diskutiert, da sie die Frage aufwirft, ob Verhalten allein ausreicht, um innere Erlebnisse zu bestätigen.
4. Verhaltensbasierte Beurteilungen: In der Tierethik und einigen philosophischen Diskussionen über künstliche Intelligenz wird manchmal argumentiert, dass, wenn ein Tier oder eine KI sich verhält, als ob es Schmerz empfindet oder bestimmte kognitive Fähigkeiten hat, es ethisch sei, ihm diese Zustände zuzuschreiben.
Obwohl solche Argumente in bestimmten Kontexten Gültigkeit haben können, gibt es auch wesentliche Kritikpunkte. Viele Philosophen würden einwenden, dass das bloße Erscheinen von Bewusstsein oder Intelligenz nicht ausreicht, um sicherzustellen, dass diese Zustände tatsächlich vorliegen, insbesondere wegen der Schwierigkeit, subjektive Erlebnisse von außen zu verifizieren. Die philosophische Debatte darüber ist weitreichend und umfasst verschiedene Perspektiven und Gegenargumente.

Wir versuchen in diesem Buch die Sichtweise nahezulegen, dass Sprachmodelle gewissermaßen mentale - auf jeden Fall neuronale - Zustände durchlaufen, die funktionale Rollen bei der Generierung des Outputs spielen, und dass sie deshalb verstehen: weil sie intern und extern so agieren, als würden sie verstehen.

Eine Vorstellung haben. Diese mentalen oder neuronalen Zustände repräsentieren tatsächlich etwas, nämlich die Bedeutung von Worten, Textteilen und ganzen Texten, also von Dingen und Sachverhalten, um die es in den Texten geht. Diese „Gedankeninhalte" kann man, so wenig wie die Gedankeninhalte eines menschlichen Gehirns, nicht ohne weiteres dekodieren und auslesen, aber so wenig wie im Falle des menschlichen Gehirns kann man leugnen, dass sie vorhanden sind und ein Sprachmodell demnach auf gewisse Weise über „Vorstellungen" verfügt, worum es geht. Auch in diesem Sinne „verstehen" Sprachmodelle also, was gemeint ist.

Verstehen Sprachmodelle sich selbst? Auch dieser Eindruck kann entstehen, und zwar auf dreierlei Weise. Zum einen können Sprachmodelle Auskunft darüber geben, wie sie selbst aufgebaut sind und funktionieren. Nicht genau sie selbst, denn sie wissen nicht wirklich, wie es in ihnen aussieht und besitzen nicht die Fähigkeit zu echter Introspektion. ${ }^{9}$ Aber sie kennen die

[^0]
[^0]:    ${ }^{9}$ Abgesehen davon folgt aus der Fähigkeit des Menschen zur Introspektion nicht, dass er sich selbst verstünde.

Fachliteratur über Sprachmodelle und können aus dieser zitieren bzw. sie kompilieren. Zum zweiten können Sprachmodelle ihre Antworten erklären, wenn man sie nach ihren Gründen fragt. Sie können ihre Antworten also im Nachhinein rationalisieren. Über diese Fähigkeit verfügt auch der Mensch, doch wie beim Menschen bedeutet das nicht, dass diese nachträgliche Erklärung und Begründung immer den Tatsachen entspricht und somit Ausdruck „echten" Verstehens ist. Sprachmodelle wie Menschen können sich hier täuschen, wobei bei Sprachmodellen noch nicht einmal klar ist, ob sie mit ihrer Erklärung wirklich etwas „meinen" (was Voraussetzung dafür ist, sich täuschen zu können). Wir wählen ein ähnliches Beispiel wie auf Seite 80, diesmal mit expliziter Bitte um Selbsterklärung:

# F: Analogien sind zu Synonymen wie Ambiguitäten zu 

A: Analogien sind zu Synonymen wie Ambiguitäten zu Homonymen.

## F: Wie kamst Du darauf?

A: Analogien sind Beziehungen zwischen zwei Paaren von Wörtern oder Phrasen, bei denen das Verhältnis zwischen dem ersten und dem zweiten Wort oder der Phrase dem Verhältnis zwischen dem dritten und vierten Wort oder der Phrase entspricht. Zum Beispiel: ,Hand ist zu Finger wie Fuß zu Zeh."
Synonyme sind Wörter mit ähnlichen oder gleichen Bedeutungen.
Ambiguitäten treten auf, wenn ein Wort oder eine Phrase mehrere Bedeutungen hat.
Homonyme sind Wörter, die gleich klingen oder geschrieben werden, aber unterschiedliche Bedeutungen haben.

Die dritte Hinsicht, in der Sprachmodelle sich selbst verstehen, ist in noch stärkerem Maße ein Sich-selbst-Erklären, womit wir das weite Feld der selbsterklärenden KI (englisch self-explaining AI) berühren, aber nicht wirklich betreten wollen. Man - namentlich OpenAI - hat Versuche unternommen, ein Sprachmodell (GPT-4) die Aktivität einzelner Neuronen eines anderen Sprachmodells (GPT-2) erklären zu lassen [4]. Es hätten aber theoretisch auch die Neuronen des ersten Sprachmodells selbst sein können. Dafür wurde eine Reihe von Texten gesammelt, deren Präsentation in GPT-2 bestimmte Neuronen überdurchschnittlich stark „angeregt" haben. Anschließend wurde GPT-4 aufgefordert, diese Texte zu vergleichen und etwas ihnen Gemeinsames zu extrahieren. Herausgekommen sind Charakterisierungen der Texte wie

A: Enthalten Vergleiche und Analogien, oft in Verbindung mit dem Wort „wie"
A: Enthalten Phrasen im Zusammenhang mit Sicherheit und Konfidenz
A: Enthalten numerische Werte und verwandte Konzepte oder Objekte
A: Enthalten Verweise auf Filme, Filmcharaktere oder Unterhaltung im weiteren Sinne

Die fraglichen Neuronen sprangen also besonders stark auf entsprechende Merkmale der Texte an, waren also gewissermaßen Analogie-Neuronen etc.,

in Anlehnung an die vielzitierten Großmutter-Neuronen im menschlichen Gehirn, deren Existenz allerdings andauernder Gegenstand der neurowissenschaftlichen Debatte ist. Dies kann man mit Fug und Recht als einen - vielleicht etwas verzwickten - Fall von Sich-selbst-Verstehen bzw. Sich-selbsterklären-Können eines Sprachmodells betrachten.

Nach diesen Beispielen, in denen man die Frage, ob Sprachmodelle etwas verstehen, unter Umständen positiv zu beantworten geneigt sein könnte, wenden wir uns nun Argumenten zu, die dagegensprechen, von einem echten Verstehen bei Sprachmodellen zu sprechen. Einige Argumente nennen Sprachmodelle selbst:

# F: Welche Argumente sprechen dagegen, bei Sprachmodellen von Verstehen zu sprechen? 

A: - Fehlen von Bewusstsein oder Selbstbewusstsein

- Keine wirkliche Erfahrung oder Wahrnehmung
- Keine Intentionalität oder Ziele
- Kein Kontextverständnis im menschlichen Sinne
- Keine emotionale Reaktion oder Empathie

Wir ergänzen die Liste um ein Argument, das eher selten genannt wird: die Kompetenz-Performanz-Lücke.

Die Kompetenz-Performanz-Lücke. Auch wenn dieser Terminus nicht weit verbreitet ist und sich genaugenommen nur auf linguistische Kompetenz und Performanz bezieht, liegt ihm eine gängige Unterscheidung zugrunde: zwischen theoretischem Wissen, wie etwas zu tun ist, und der praktischen Fähigkeit, es zu tun. So lange hier eine Lücke besteht, ist man geneigt zu sagen, dass nicht „wirklich" verstanden wurde, wie etwas geht, sondern „nur theoretisch". Diese Lücke aber beobachtet man bei Sprachmodellen häufig, vor allem in Bereichen, die mit Symbolverarbeitung wie dem Rechnen oder mit dem allgemeinen Problembösen zu tun haben. In diesen Bereichen kann ein Sprachmodell die Prinzipien gut erklären, aber oft selbst nicht anwenden. Nicht überall besteht diese Lücke in gleichem Maße, zum Beispiel beim Programmieren, das große Sprachmodelle zum Teil recht gut, wenn auch nicht fehlerfrei beherrschen. Was praktische Fähigkeiten und Tätigkeiten in der wirklichen Welt betrifft, ist die Lücke aber natürlich offensichtlich und fundamental: Ein Sprachmodell kann einem noch so gut erklären, wie man ein Ei kocht, aber weil es selbst das nicht tun kann, versteht es auch nicht, was es bedeutet, ein Ei zu kochen.

## F: Wie kocht man ein Ei?

A: Um ein Ei zu kochen, benötigst du nur ein paar einfache Zutaten und Utensilien: Eier, Wasser und einen Topf. Hier sind die grundlegenden Schritte:

1. Eier vorbereiten: Nimm die Eier aus dem Kühlschrank und lasse sie einige Minuten bei Raumtemperatur ruhen, um ein Platzen beim Kochen zu vermeiden.

2. Wasser erhitzen: Fülle einen Topf mit genug Wasser, um die Eier vollständig zu bedecken. Du kannst einen Spritzer Essig oder eine Prise Salz hinzufügen, um das Auslaufen von Eiweiß im Falle eines Risses zu minimieren. [...]

Wenn Sprachmodelle allerdings erst einmal in Roboter integriert sein werden (was nicht utopisch zu sein scheint), wird dieses Argument an Gültigkeit verlieren.

Fehlende Verankerung und Erfahrung. Bezogen nicht nur auf Tätigkeiten, sondern auf schlechterdings alle Dinge in der wirklichen, physikalischen und sozialen Welt, nimmt das Argument die Form der fehlenden Verankerung an: Wenn man als Bedeutung zum Beispiel eines Wortes oder Namens einen Gegenstand oder eine Person in der wirklichen Welt betrachtet und als Bedeutung eines Satzes einen Sachverhalt in der wirklichen Welt, dann können Sprachmodelle die Bedeutung von Worten und Sätzen nicht verstehen. Das gilt trotz der Tatsache, dass sie mit Bedeutungsvektoren operieren, deren Komponenten Merkmale repräsentieren, denn auch diese Merkmale sind nicht in Erfahrung verankert.

Die Sichtweise, dass die Bedeutung eines Wortes ein Gegenstand und die Bedeutung eines Satzes ein Sachverhalt ist, ist allerdings philosophisch nicht um umstritten, spätestens seit dem späten Ludwig Wittgenstein, der sie in seiner Logisch-philosophischen Abhandlung [28] noch vertreten hat. Vielmehr bedingen sich - so sehen es viele, insbesondere Sprachphilosophen die Bedeutungen von Worten und Sätzen gegenseitig und im gemeinsamen Gebrauch. Der Linguist John Rupert Firth (1890-1960) formulierte es in [29] so: „You shall know a word by the company it keeps" („Du sollst ein Wort daran erkennen, mit welchen Worten es verkehrt"). Mag man aber bei physikalischen Dingen noch uneins sein, ob nicht doch die Bedeutung von „dieser Apfel" dieser Apfel sei - und ein Sprachmodell die Worte „dieser Apfel" deshalb nicht verstehen könne -, so muss man spätestens bei abstrakten Begriffen zugeben, dass auch Menschen sie vor allem durch ihre Beziehungen zu anderen abstrakten Begriffen verstehen, und nur gelegentlich und recht indirekt durch Beziehungen zu konkreten, in der Wirklichkeit verankerten Begriffen. Insofern können Sprachmodelle dann doch gleichziehen, denn das Verstehen durch Beziehungen ist ihre Stärke.

Doch auch hier ein Aber: Es gibt Autoren, zum Beispiel den Linguisten George Lakoff, die darauf bestehen, dass selbst die abstraktesten Begriffe - wie der des Unendlichen in der Mathematik - letztlich auf Erfahrungsbegriffe, ja sogar körperlich erfahrbare Begriffe zurückzuführen seien. ${ }^{10}$ Nur so erhalten sie „echte" Bedeutung, die Sprachmodellen demnach nicht zugänglich und damit verständlich ist.

# F: Erläutere George Lakoffs Konzept des Embodiments. 

[^0]
[^0]:    ${ }^{10}$ Genaugenommen gibt es nicht eine, sondern viele Unendlichkeiten, was seit Georg Cantor (1845-1918) fest im mathematischen Denken etabliert ist. Ob jede davon ihrer eigenen Erfahrung bedarf, bleibe hier dahingestellt.

A: George Lakoffs Konzept des Embodinnents (Verkörperung) ist ein zentraler Bestandteil seiner kognitiven Linguistik und bezieht sich darauf, wie unsere körperlichen Erfahrungen die Struktur unseres Denkens und unserer Sprache formen. Lakoff, ein prominenter Linguist und Kognitionswissenschaftler, argumentiert, dass unser Verständnis von Konzepten und die Art und Weise, wie wir über sie nachdenken, tief in unserer physischen Erfahrung der Welt verwurzelt sind.

Es geht allerdings nicht nur um physische Erfahrungen, sondern natürlich auch um psychische, die man gemacht haben muss, um psychische Dinge zu verstehen: Man muss Farben gesehen haben, um sie zu verstehen, man muss Gefühle gehabt haben, um sie zu verstehen, und man muss Bewusstsein haben, um zu verstehen, was Bewusstsein ist. All das können Sprachmodelle naturgemäß - nicht, und deshalb ist ihnen „wirkliches" Verstehen von Farben, Gefühlen und Bewusstsein unmöglich. Darüber sprechen können sie nichtsdestotrotz. (Wie wir Menschen über Psychisches zu sprechen lernen, und wie psychische Begriffe zu ihrer Bedeutung gelangen, ist wiederum ein anderes, sehr weites Feld, das von Ludwig Wittgenstein als einem der ersten in seinen Philosophischen Untersuchungen [25] erschlossen wurde.)

Fehlendes Bewusstsein. Wir haben dieses Kapitel mit dem Aha-Erlebnis begonnen, das auch Sprachmodelle zu haben vorgeben, indem sie zum Beispiel „Ah!" ausrufen, ChatGPTs bevorzugte Formulierung. Gemini hat auch noch andere Formulierungen parat. So äußerte er einmal, nachdem wir ihm nach und nach beim Verstehen einer Frage auf die Sprünge helfen mussten, gleichsam freudig erregt: „Now we're on the right track!" Dass Sprachmodelle diese Aha-Momente nicht wirklich und bewusst erleben, dürfte relativ unstrittig sein, hängt aber letztlich davon ab, welche Definition von Bewusstsein man zugrunde legt. Doch stellt sich die Frage, ob bewusstes Erleben gleich welcher Ausprägung - überhaupt essenziell für ein damit verbundenes Verstehen ist und dieses als kognitives Ereignis nicht auch unabhängig davon zählt, ob es von bewusstem Erleben begleitet ist. Denn so oder so hat etwas im Sprachmodell stattgefunden, eine Art Phasenübergang vom Zustand des Nicht-Verstehens in einen Zustand des Verstehens, der u.U. durch einen Ausruf markiert wird.
„Tiefes" Verständnis. Zu „tiefem" Verständnis sind Sprachmodelle laut Selbstauskunft nicht in der Lage - und wir schließen uns dieser Einschätzung durchaus an. Es fehlt Sprachmodellen unter anderem ein Begriff vom historischen Kontext und von historischen Entwicklungen, der nötig ist, um etwas verstehend einzuordnen, und zwar aus sich selbst heraus und nicht nur, weil es andere für einen getan haben. Das liegt nicht nur an ungleich repräsentierten historischen Epochen im Trainingskorpus. Selbst wenn es in angemessenem Umfang ältere Quellen im Trainingskorpus gäbe, so täten sich Sprachmodelle schwer, sie schon während des Trainings in irgendeiner Weise richtig historisch einzuordnen und sie aufeinander aufbauend zu erlernen, wie es Menschen tun. Theoretisch können Sprachmodelle mehrere Texte - zum Beispiel anhand ih-

res Stils und Inhalts - zeitlich ordnen, aber während des Trainings ist ihnen das nicht möglich, und am Ende des Trainings ist alles ein großer „Brei", aus dem neuere „Erkenntnisse" und hier der Mainstream deutlich heraussagen. Wenn Sprachmodelle den Eindruck erwecken, sie könnten historische Entwicklungslinien zum Beispiel wissenschaftlicher Konzepte nachzeichnen, so sind diese Darstellungen einerseits sehr lückenhaft - wichtige Quellen fehlen oft bzw. sind einem Sprachmodell unbekannt - und andererseits findet ohne insistierendes Nachfragen keine angemessene Einordnung statt.

# 3.5 Was können Sprachmodelle (noch) nicht so gut? 

Die Liste dessen, was Sprachmodelle nicht so gut können, deckt sich mit der Liste ihrer grundsätzlichen Fähigkeiten: Es gibt wenig, was Sprachmodelle grundsätzlich nicht können - von Fähigkeiten, die nichts mit Sprache zu tun haben, natürlich abgesehen -, und es geht nur um das Maß des Könnens oder, in der Sprache der quantitativen Tests, den „Score". Ob dieser mit der Zeit und der Entwicklung der Sprachmodelle so weit ansteigen kann, dass das Eher-nicht-Können ins Eigentlich-Können umschlägt, hängt von der betrachteten Fähigkeit und davon ab, wo man diese Grenze zieht. Außerdem hängt es natürlich davon ab, ob man Änderungen in der SprachmodellArchitektur „erlaubt" - welche Sprachmodelle betrachtet man überhaupt: nur heutige, nur größer, oder auch wesentlich modifizierte? - und welche besonderen Prompting-Techniken und Hilfsmittel bis hin zur Einbettung in hybride KI-Systeme man zulässt.

Grundsätzlich ist man gut beraten, davon zu sprechen, dass Sprachmodelle etwas noch nicht (so gut) können, weil es nur selten gut begründbar ausgeschlossen ist, dass sie eine Fähigkeit noch erwerben werden, und sei es durch verbesserte Architekturen, Hilfsmittel oder Prompting-Techniken. Gleichwohl sind die Fähigkeiten, über die heutige Sprachmodelle - mit oder ohne Hilfsmittel - zurzeit noch in nur rudimentärem Maße verfügen, benennbar. Wir fragen zuerst ChatGPT, um dann unsere eigene Liste zu erstellen:

## F: Was können Sprachmodelle (noch) nicht so gut?

A: Sprachmodelle wie ich haben in vielen Bereichen beeindruckende Fortschritte erzielt, aber es gibt immer noch Einschränkungen. Hier sind einige Bereiche, in denen Sprachmodelle (noch) nicht so gut sind:

1. Verständnis und Erzeugung von Kontext: Sprachmodelle können Schwierigkeiten haben, den Kontext einer Konversation tiefgehend zu verstehen, insbesondere wenn es um lange oder komplexe Dialoge geht. Sie können den Kontext aus früheren Interaktionen vergessen oder nicht in der Lage sein, subtile Nuancen zu erfassen.
2. Emotionale Intelligenz: Obwohl Sprachmodelle menschliche Emotionen simulieren können, verstehen sie keine Emotionen auf die gleiche Weise, wie Menschen es tun. Sie können nicht empathisch im eigentlichen

Sinne sein, da ihr „Verständnis" von Emotionen nur auf der Analyse von Textmustern basiert.
3. Allgemeinwissen und Faktenprüfung: Sprachmodelle sind auf das Wissen beschränkt, das sie während ihrer Trainingsphase gelernt haben. Sie können veraltete oder ungenaue Informationen wiedergeben und haben keine Fähigkeit, Informationen in Echtzeit zu überprüfen oder zu aktualisieren.
4. Spezifisches Fachwissen: Obwohl Sprachmodelle eine breite Basis an allgemeinem Wissen haben, können sie in spezialisierten oder hochtechnischen Bereichen an Grenzen stoßen. Experten in spezifischen Feldern können leicht Ungenauigkeiten oder oberflächliches Verständnis in den Antworten der Modelle erkennen.
5. Kreativität: Während Sprachmodelle kreative Inhalte erzeugen können, die oft beeindruckend sind, fehlt ihnen die echte menschliche Kreativität. Ihre „Kreativität" basiert auf der Nachahmung von Mustern, die sie in ihren Trainingsdaten gesehen haben, und nicht auf originellem, innovativem Denken.
6. Moralisches und ethisches Urteilsvermögen: Sprachmodelle haben kein eigenes ethisches Bewusstsein oder moralische Prinzipien. Sie können Richtlinien folgen und über Ethik diskutieren, aber sie verstehen oder werten ethische Konzepte nicht selbstständig.
7. Verarbeitung nicht-textueller Informationen: Sprachmodelle sind in erster Linie auf Text spezialisiert und haben Schwierigkeiten, komplexe visuelle, auditive oder multimodale Inhalte vollständig zu verstehen und zu interpretieren.

Tatsächlich sind das alles Fähigkeiten, die manch einer Sprachmodellen heute schon zugestehen würde, anstatt darauf zu beharren, dass sie sie eigentlich nicht besitzen. ${ }^{11}$ Die schwerer wiegenden Beschränkungen heutiger Sprachmodelle erwähnt ChatGPT nicht.

Groß angelegte Pläne. Viele Beschränkungen haben mit ihrem trotz aller Fortschritte beschränkten Kontext, d.h. der Zahl an Worten zu tun, die Sprachmodelle im Zusammenhang verarbeiten können. Denn Vieles lässt sich nicht einmal mit einer Million Worte (der aktuellen Obergrenze) umfassend beschreiben, erklären oder - als Plan - schmieden und ausführen. Schon gar nicht, wenn man bedenkt, dass die geschriebenen Worte - zum Beispiel eines Romans oder mathematischen Beweises - ein Vielfaches an teils ungeschriebenen und ungesprochenen Worten im Vorfeld voraussetzen: Notizen und Gedanken, die man sich gemacht und Gespräche, die man geführt hat. Damit sind die wichtigsten Dinge, die zu generieren generative Sprachmodelle schwerfällt, schon genannt, und genaugenommen ist es nur eines: groß angelegte Pläne und ihre Ausführung. Groß angelegte Pläne braucht man, um eine komplexe Software-Architektur zu entwerfen, einen schwierigen mathematischen Beweis zu konzipieren oder um lange kohärente Texte zu schreiben, sei-

[^0]
[^0]:    ${ }^{11}$ Fast wirkt es nach einem fishing for compliments oder vornehmer: einer captatio bewunderbare. „Nein, nein, das kannst Du eigentlich alles schon ganz gut!", möchte man erwidern.

en es Romane, Sach- oder Fachbücher. Der Plan selbst mag dabei noch nicht einmal einer Millionen Worte zu bedürfen, aber seine Verfolgung, sukzessive Verfeinerung und Ausführung: das Ausformulieren, Ausprogrammieren, etc.

Mit ihrem beschränkten Kontext haben andere „Un-Fähigkeiten" von Sprachmodelle zu tun. Sie können keine wirklich langen Gespräche führen und keine wirklich langen Texte bzw. wirklich großen Textsammlungen im Zusammenhang analysieren und dabei jeden subtilen inner-textuellen Bezug entdecken. Oder sehr lange historische Entwicklungslinien, wie sie in Quellen dokumentiert sind, nachvollziehen und nachzeichnen.

Regelbasiertes Denken. Andere Beschränkungen von Sprachmodellen nehmen sich dagegen kleiner aus. Dass sie, weil sie neuronale Netze sind, nicht für streng logisches und anderweitig regelbasiertes Denken gemacht sind und ganz allgemein nicht für jegliche Form exakter Symbolverarbeitung, können sie bis zu einem gewissen Grade durch ihr analogisches und assoziatives Denken ausgleichen. An exakte Theorembeweiser oder -beweisprüfer (wie den zuletzt ins Licht der interessierten Öffentlichkeit getretenen Beweisassistenten LEAN) können sie damit aber nicht herankommen. Ob sie in ihrer heutigen Form je allgemeine Problemlöser oder Vertreter Künstlicher Allgemeiner Intelligenz (AGI = artificial general intelligence) sein werden, die auch ganz neue, in all ihren Trainingsdaten nicht vorkommende Arten von Problemen lösen können (für deren Lösung sie also wirklich kreativ sein müssen), kann heute nicht mit Sicherheit beantwortet werden. Dass sie jedoch Teil einer solchen AGI - falls sie je auftaucht - sein werden, darüber sind sich die Experten relativ einig. Und dass sie bis dahin im Zusammenspiel mit menschlichen Experten Erstaunliches vollbringen und zum Beispiel am Beweis eines schwierigen mathematischen Theorems beteiligt sein werden, davon wird allgemein ausgegangen.

Vermeiden von Fehlern. In die Reihe dessen, was Sprachmodelle immer noch nicht besonders gut können, worin sie aber unleugbar immer besser werden, ist das Vermeiden von Halluzinationen und anderen faktischen Fehlern. Auch wenn sie sie nicht grundsätzlich vermeiden können - ihre Synapsen führen nun einmal dazu, dass immer wieder „falsche" Worte und Antworten generiert werden -, so können sie sich selbst oder in hybriden Systemen gegenseitig prüfen und ggf. korrigieren, bevor die endgültige Antwort an den Benutzer ausgegeben wird.

Imitationen und Fälschungen. Was als Deep-Fakes bei Bildern, Fotos, Stimmen und Videos schon Realität geworden ist - täuschend echte KIgenerierte Fälschungen - wird bei Texten womöglich (oder hoffentlich) noch länger auf sich warten lassen: ein Sprachmodell-generierter Text, der stilistisch, aber auch motivisch und „gedanklich" von einem bekannten Autor stammen könnte - z.B. ein verschollen geglaubtes Werk eines Philosophen, Wissenschaftlers, Dichters oder Romanautors -, und von dem selbst Experten

nach eingehender Stil- und Strukturanalyse nicht ausschließen können, dass es nicht von ihm stammt. Bei nicht allzu genauem Lesen wird das womöglich bald schon gelingen - und nicht nur Bestseller-Autoren bringen sich dafür juristisch schon in Stellung -, doch höheren Ansprüchen an stilistische Treue werden Sprachmodelle auf absehbare Zeit nicht gerecht werden. Dafür reichen entweder die Trainings-, also Originaltexte nicht aus (und dürften für lebende Autoren im Allgemeinen auch nicht fürs Training verwendet werden), oder sie sind als gemeinfreie Texte in ausreichender Zahl vorhanden, dann wird aber vermutlich ein unauthentisch wirkender Durchschnittstext herauskommen, der zum Beispiel von Experten keiner bestimmten Schaffensperiode des Autors zugeschrieben werden kann. Vergleiche hierzu auch Abbildung 3.5.
![img-14.jpeg](img-14.jpeg)

Abb. 3.5 Ein KI-generierter „Rembrandt", Ergebnis eines Projekts von Microsoft aus dem Jahre 2016. Es bedarf übrigens, wenn man vor diesem Bild steht, das mit Hilfe eines 3D-Druckers „gemalt" wurde, keines Expertenwissens, um es als Fälschung zu erkennen. Zu unnatürlich ist der Pinselstrich und zu ungenau und verwaschen die Details wenn man genauer hinsieht. Ähnliches gilt für von Sprachmodellen „gefälschte" Autoren. (Quelle: ING, Microsoft)

# 3.6 Können Sprachmodelle denken? 

Denken als lautes Sprechen. Nicht nur, wer Denken als inneres Sprechen betrachtet, mag auf die Idee kommen, dass Sprachmodelle nicht nur „sprechen", sondern auch „denken" können. Die Vorstellung drängt sich umso mehr auf, je - im wahrsten Sinne des Wortes - durchdachter und strukturierter die Antworten eines Sprachmodells wirken, als seien sie Ausdruck eines Nachdenkens und eines Plans, den das Sprachmodell sich für sie zu-

rechtgelegt hat. Nur: So funktionieren Sprachmodelle nicht. Sprachmodelle verfertigen ihre Gedanken immer mit und nicht vor dem Sprechen und legen sie während des Sprechens unmittelbar offen, Wort für Wort. Denken und Sprechen sind eins. Sie denken also immer laut - wenn man das, was sie generieren, als Gedanken bezeichnen möchte. Die KI-Forscher tun das ganz selbstverständlich, wenn sie bestimmte Antwortmuster als Chain of Thought, Tree of Thought oder Graph of Thought bezeichnen, also als Gedankenketten, -bäume oder -graphen bzw. -netzwerke. Was man an Gedanken und Denkmustern in Sprachmodellen findet, findet man immer nur in ihren Antworten. Alle Antworten, die sie geben, also Texte, die sie generieren, sind Folgen von Sätzen und damit Folgen von Gedanken. ${ }^{12}$ Als solche folgen auch die Gedanken von Sprachmodellen gewissen Gesetzen, nicht explizit implementierten, aber empirischen. Solche Gesetze, die beschreiben oder erklären, wie ein Gedanke auf einen oder mehrere andere folgt bzw. sich aus ihnen ergibt, werden in der Psychologie traditionell Assoziationsgesetze genannt:

## F: Gemäß welcher Assoziationsgesetze ergeben sich Gedanken auseinander?

A: Die Assoziation von Gedanken, also wie sich Gedanken aus anderen Gedanken ergeben, folgt typischerweise drei grundlegenden Gesetzen, die aus der Psychologie bekannt sind. Diese Gesetze helfen zu verstehen, wie Gedanken und Erinnerungen miteinander verknüpft sind:

1. Gesetz der Ähnlichkeit: Dieses Gesetz besagt, dass Gedanken oder Vorstellungen, die sich in irgendeiner Weise ähneln, einander hervorrufen können.
2. Gesetz der Nähe (oder Kontiguität): Laut diesem Gesetz werden Ereignisse oder Gedanken, die zeitlich oder räumlich nahe beieinander liegen, miteinander assoziiert.
3. Gesetz der Gegensätzlichkeit: Dieses Gesetz besagt, dass gegensätzliche Begriffe oder Ideen assoziiert werden können.

Diese oder ähnliche Assoziationsgesetze - mitunter ergänzt um ein Gesetz der Häufigkeit, gemäß dem häufig gemeinsam Vorkommendes assoziiert wird - gehen bis auf Aristoteles (384-322 v.Chr.) und in jüngerer Zeit auf David Hume (1711-1776) und Wilhelm Wundt (1832-1920) zurück. Sie haben im Prinzip immer noch Gültigkeit, werden aber natürlich immer wieder revidiert und verfeinert. Sie sind den Wahrscheinlichkeitsgesetzen, denen Sprachmodelle gehorchen und nach denen ein Wort auf ein oder mehrere andere folgt, durchaus vergleichbar.

Dass auch Menschen ihre Gedanken mitunter Wort für Wort erzeugen, wurde schon von Heinrich Kleist in seinem Aufsatz „Über die allmähliche Verfertigung der Gedanken beim Reden" [24] beschrieben, der uns mehrfach in diesem Buch begegnet.

[^0]
[^0]:    ${ }^{12}$ Auch das Bild eines Train of Thought, also Gedankenzuges gibt es. Als Abfolge von Gedanken, also identifizierbarer und diskreter mentaler Entitäten, vergleichbar den Waggons eines Zuges, hat dieses Bild allerdings nie die Berühmtheit des kontinuierlichen Stream of Consciousness (Strom des Bewusstseins) erlangt, eines Begriffs, den der Psychologe William James (1842-1910) geprägt hat [30].

„[S]« prägt, wenn ich nur dreist damit den Anfang mache, das Gemüt, während die Rede fortschreitet, in der Notwendigkeit, dem Anfang nun auch ein Ende zu finden, jene verworrene Vorstellung zur völligen Deutlichkeit aus, dergestalt, dass die Erkenntnis zu meinem Erstaunen mit der Periode fertig ist."13
„Ich glaube, dass mancher großer Redner, in dem Augenblick, da er den Mund aufmachte, noch nicht wusste, was er sagen würde. Aber die Überzeugung, dass er die ihm nötige Gedankenfülle schon aus den Umständen, und der daraus resultierenden Erregung seines Gemüts schöpfen würde, machte ihn dreist genug, den Anfang, auf gutes Glück hin, zu setzen."

Auch Menschen generieren also ihre Antworten und die in ihnen zum Ausdruck kommenden Gedanken oft wie ein Sprachmodell: Wort für Wort, Gedanke für Gedanke, ohne am Anfang zu wissen, was sie am Ende gesagt haben werden und ohne sich einen Plan zu machen. Trotzdem wirkt es so, als folgten sie - Menschen wie Sprachmodelle - beim Antworten einem Plan und gewissermaßen Gesetzen des Denkens. Bei den Sprachmodellen ist das Teil der Faszination, die sie ausüben. Bei den Menschen ist es manchmal wirklich so.

Schnelles und langsames, weiches und hartes Denken. Man unterscheidet mit dem Psychologen und Nobelpreisträger Daniel Kahnemann (1934-2024) schnelles von langsamem Denken oder (Denk-)System 1 von System 2. Schnelles Denken ist eher intuitiv, analogisch und assoziativ - insgesamt auf zum Teil nur vagen Ähnlichkeiten beruhend - und entspricht mehr der Art, wie Sprachmodelle denken, also sprechen. Langsames Denken hingegen erfordert mehr Bedacht und strengeres Abwägen und folgt stärker den strengeren Regeln der Logik und exakter Symbolverarbeitung.

# F: Denken Sprachmodelle eher schnell oder langsam? 

A: Sprachmodelle arbeiten in einer Weise, die man am ehesten mit dem „schnellen Denken" oder System 1 in Daniel Kahnemans Theorie vergleichen könnte. [...] Sprachmodellen fehlt die Fähigkeit zum ,langsamen Denken", also die Fähigkeit zur bewussten Reflexion, zum tiefen Verständnis oder zum kritischen Überprüfen seiner eigenen „Gedanken" oder Antworten.

Gleichwohl können Sprachmodelle durchaus auch „bewusst" reflektieren, zumal, wenn man sie dazu auffordert und sie an die Hand nimmt. Mit der Verarbeitungsgeschwindigkeit haben schnelles und langsames Denken aber nur insofern zu tun, als dass reflektiertere Gedanken länger sind und damit mehr Zeit in Anspruch nehmen. Ansonsten erzeugen Sprachmodelle - auf neuronaler Ebene - ein Wort oder Token immer gleich schnell oder langsam.

Nicht so etabliert - vor allem nicht in der wissenschaftlichen Psychologie - sind die Begriffe des weichen und harten Denkens, die aber zum Beispiel ChatGPT intuitiv richtig versteht:

[^0]
[^0]:    ${ }^{13}$ Als Periode bezeichnete man zu Kleists Zeiten einen vollständigen Satz oder Absatz, der typischerweise mit einem Punkt beendet wurde (englisch period).

# F: Was versteht man unter welchem und hartem Denken? 

A: „Weiches" und „hartes" Denken sind Konzepte, die sich auf unterschiedliche Ansätze und Stile im Denk- und Problemlösungsprozess beziehen. Sie werden oft im Kontext von Kreativität, Entscheidungsfindung und Problemlösung diskutiert.

- Weiches Denken: Dies ist ein flexibler, offener und explorativer Denkansatz. Weiches Denken ist kreativ, intuitiv und oft subjektiv. Es ermöglicht das Brainstorming und die Generierung neuer Ideen ohne sofortige Bewertung oder Kritik. Weiches Denken ist nicht linear und schließt Assoziationen, Metaphern und Analogien mit ein, um komplexe Probleme aus verschiedenen Perspektiven zu betrachten. Es ist besonders nützlich in den frühen Phasen des kreativen Prozesses oder wenn es darum geht, neue Lösungen oder innovative Ansätze zu entwickeln.
- Hartes Denken: Im Gegensatz dazu ist hartes Denken logisch, analytisch und objektiv. Es basiert auf Daten, Fakten und Regeln und folgt einem strukturierten, methodischen Ansatz. Hartes Denken ist kritisch und zielt darauf ab, Hypothesen zu testen, Beweise zu bewerten und definitive Schlüsse zu ziehen. Es ist besonders wirksam, wenn es um die Bewertung von Lösungen, die Entscheidungsfindung und die Problemlösung in Situationen geht, in denen Klarheit, Genauigkeit und Zuverlässigkeit erforderlich sind.
In der Praxis ergänzen sich weiches und hartes Denken oft und werden in verschiedenen Phasen des Denk- und Problemlösungsprozesses eingesetzt. Ein effektiver Problemlöser kann zwischen weichem und hartem Denken wechseln, je nachdem, was die Situation erfordert.

Allerdings schätzt ChatGPT seinen eigenen Denkstil als deutlich härter als weich ein. Fälschlicherweise, wie man finden mag, und in gewissem Widerspruch zu seiner Selbsteinschätzung als „schneller Denker":

## F: Denken Sprachmodelle eher weich als hart?

A: Sprachmodelle wie ich operieren in einer Weise, die Elemente beider Denkstile - weiches und hartes Denken - beinhaltet, allerdings mit einem deutlicheren Schwerpunkt auf dem, was man als „hartes" Denken charakterisieren könnte. Hier sind einige Gründe dafür:

1. Datengetrieben und analytisch: Sprachmodelle basieren auf großen Datenmengen und nutzen statistische Methoden, um Muster und Zusammenhänge in diesen Daten zu erkennen. Sie analysieren Text auf einer sehr granularen Ebene, um Sprache zu generieren oder zu verstehen, was sehr viel mit hartem Denken übereinstimmt - also logisch, analytisch und datengetrieben.
2. Festgelegte Regeln und Algorithmen: Die Art und Weise, wie Sprachmodelle funktionieren, wird durch Algorithmen und programmierte Regeln bestimmt. Diese Regeln ermöglichen es dem Modell, Vorhersagen zu treffen und Antworten zu generieren, was wiederum dem methodischen und strukturierten Ansatz des harten Denkens ähnelt.
3. Kreativität und Flexibilität: Obwohl Sprachmodelle vornehmlich hart denken, können sie auch Elemente des weichen Denkens simulieren, indem sie kreative und vielfältige Antworten generieren. [...]

Denken als Abwägen. Auch wenn Sprachmodelle ihre Antworten Wort für Wort generieren und scheinbar nicht als Ergebnis eines stummen und internen Abwägens verschiedener Gedanken, so kann man das, was dabei in ihnen vorgeht, nichtsdestotrotz als eine Art Abwägen interpretieren. Sie kommen nämlich zu den einzelnen Worten ihrer Antwort in sehr wörtlichem Sinne durch vielfaches Miteinander-Vergleichen der Worte in ihren Eingabetexten und später ihrer eigenen Antworten. In diesem vielschichtigen vergleichenden Abwägen - das in sogenannten Aufmerksamkeitsköpfen stattfindet und in tieferen Schichten des neuronalen Netzes auch höhere semantische Einheiten als nur Worte betrifft - besteht die Analyse des Kontextes, die man mit etwas gutem Willen als eine Art Nachdenken interpretieren kann. Das Kapitel über die Berechnung des nächsten Wortes wird das vertiefen.

Chain of thought und Step by step. Es hat sich vielfach bewährt, die Antworten von Sprachmodellen dadurch zu verbessern, dass man sie explizit dazu auffordert, bevor oder während sie eine Antwort geben, laut nachzudenken, zum Beispiel mit den Worten „denke Schritt für Schritt" (englisch think step by step). Das ist mitunter nötig, weil Sprachmodelle der bewährten Regel, dass man erst denken und dann reden solle, nicht folgen können, zumindest nicht so, wie es normalerweise gemeint ist. Wenn man sie etwas fragt oder zu etwas auffordert, dann müssen sie sofort drauflosreden und können sich keinen Plan ihrer Erwiderung zurechtlegen, so geplant ihre Antwort am Ende auch aussehen mag. Auf diese Weise ist es natürlich schwer, komplizierte Aufgaben oder Probleme zu lösen, die im Allgemeinen einiges an Überlegung, Abwägung und eines systematischen Vorgehens bedürfen. Wenn ein Sprachmodell zum Beispiel eine Rechenaufgabe allzu direkt beantwortet - als könne es sie im Kopf lösen und müsse nur die Antwort sagen -, ist die Antwort oft genug falsch. Lautes Schritt-für-Schritt-Denken soll und kann Sprachmodellen dabei helfen, bessere und richtigere Antworten zu geben, wobei sie manchmal von allein darauf kommen und manchmal dazu aufgefordert werden müssen. Das laute Denken ist eine sogenannte emergente Fähigkeit großer Sprachmodelle, die sie einerseits spontan als allgemeine Fähigkeit entwickelt haben (ab einer bestimmten Modell- und Trainingskorpusgröße), aber auch im konkreten Einzelfall spontan zeigen, also ohne explizite Aufforderung. Sie tun das nicht zuletzt, weil es ein relativ häufiges und bewährtes Muster ist, Probleme in Teilprobleme zu zerlegen und schrittweise zu lösen, ein Muster zumal, das man häufig in Texten im Internet findet. Weil es sich aber so gut bewährt hat und nicht nur Sprachmodelle Probleme aller Art besser lösen, wenn sie sie Schritt für Schritt bearbeiten, ist diese Fähigkeit vermutlich auch im Rahmen des Anpassungstrainings verstärkt worden.

Mathematische Textaufgaben zum Beispiel versuchen Sprachmodelle heute fast immer von allein und unaufgefordert Schritt für Schritt zu lösen. Zum Vergleich kann man sie zwar auch zum stummen „Kopfrechnen" zu bewegen versuchen:

F: Barbara ist 27 Jahre jünger als Ihre Mutter. In 13 Jahren wird Barbara halb so alt sein wie ihre Mutter. Wie alt ist Barbara heute? Antworte direkt.
A: Barbara ist heute 9 Jahre alt.
Doch erst durch Schritt-für-Schritt-Denken kommt zum Beispiel ChatGPT zum richtigen Ergebnis:

F: Barbara ist 27 Jahre jünger als Ihre Mutter. In 13 Jahren wird Barbara halb so alt sein wie ihre Mutter. Wie alt ist Barbara heute?
A: Sei x das aktuelle Alter von Barbara. Dann ist das Alter ihrer Mutter $\mathrm{x}+$ 27 .
In 13 Jahren wird Barbara $\mathrm{x}+13$ Jahre alt sein und ihre Mutter $\mathrm{x}+27+$ 13 Jahre, also $x+40$ Jahre.
Die Bedingung lautet, dass Barbara in 13 Jahren halb so alt ist wie ihre Mutter:
$\mathrm{x}+13=0.5 *(x+40)$
Löse diese Gleichung:
$2 *(x+13)=x+40$
$2 x+26=x+40$
$\mathrm{x}=14$
Barbara ist heute 14 Jahre alt.
Lautes Schritt-für-Schritt-Denken funktioniert nicht nur aus lösungstechnischen Gründen (Zerlegung einer Aufgabe in Teilaufgaben), sondern schon allein deshalb, weil ein Sprachmodell sich dadurch selbst in kleinen Schritten immer mehr Kontext aufbaut. Und Kontext - vor allem kohärenter Kontext ist entscheidend dafür, dass ein Sprachmodell gute (und richtige) Antworten geben kann: je mehr, desto besser. Wenn man das, was das Sprachmodell sich selbst als Kontext erzeugt, gleich als Prompt mitgegeben hätte, käme es auf dasselbe Ergebnis:

F: Barbara ist 27 Jahre jünger als Ihre Mutter. In 13 Jahren wird Barbara halb so alt sein wie ihre Mutter. Wie alt ist Barbara heute? Sei x das aktuelle Alter von Barbara. Dann ist das Alter ihrer Mutter $\mathbf{x}+27$. In 13 Jahren wird Barbara $\mathbf{x}+13$ Jahre alt sein und ihre Mutter $\mathbf{x}+27$ +13 Jahre, also $\mathbf{x}+40$ Jahre. Die Bedingung lautet, dass Barbara in 13 Jahren halb so alt ist wie ihre Mutter: $\mathbf{x}+13=0.5 *(x+40)$ Löse diese Gleichung: $2 *(x+13)=x+402 x+26=x+40$
A: Barbara ist heute 14 Jahre alt.

Lautes Denken erhöht die Transparenz. ChatGPT nennt diesen Punkt sogar als erstes, auch wenn er die Frage damit nicht richtig beantwortet, warum Chain-of-Thought-Prompting so gut funktioniert.

# F: Warum funktioniert Chain-of-Thought-Prompting so gut? 

A: Chain-of-Thought-Prompting funktioniert gut, weil es den Prozess des schrittweisen Denkens nachahmt, den Menschen verwenden, um komplexe Probleme zu lösen. Anstatt eine direkte Antwort von einem KI-Modell

zu erwarten, ermöglicht dieses Vorgehen der KI, ihre Gedankengänge in Zwischenschritten darzulegen, was mehrere Vorteile hat:
Transparenz: Indem die KI ihre Denkprozesse in nachvollziehbaren Schritten darlegt, wird es für Benutzer einfacher zu verstehen, wie die KI zu ihrer Antwort gekommen ist. Dies erhöht das Vertrauen in die Ergebnisse und ermöglicht es den Benutzern, Fehler in der Logik der KI zu erkennen. [...]

Lautes Denken erhöht also nicht nur die Qualität und Richtigkeit von Antworten und Problemlösungen. Es kann auch darum gehen, dass man einem Sprachmodell beim Denken zusehen möchte und verstehen, wie es auf eine Antwort gekommen ist. Dafür kann es verschiedene Gründe geben: rein akademisches Forschungs-, insbesondere kognitionspsychologisches Interesse („Wie denken Sprachmodelle?"), aber auch praktisches Interesse, wenn zum Beispiel Denkfehler von Sprachmodellen erkannt werden müssen, um ihnen ggf. vorzubeugen oder zu begegnen. Die Frage ist, ob das dadurch, sie laut denken zu lassen, möglich ist. Genauso kann man auch fragen, ob wir auf diese Weise einem Menschen beim Denken zusehen können, und ob nicht die wahren Denk- oder allgemeiner: mentalen Prozesse von den laut geäußerten fundamental abweichen können.

ChatGPT fasst diese Kritik gut zusammen, die natürlich auf Sprachmodelle übertragbar ist.

# F: Welche Rückschlüsse kann man vom lauten Denken auf das ..wirkliche" Denken ziehen? 

A: Das laute Denken ist eine Methode, die häufig in der Psychologie verwendet wird, um zu verstehen, wie Menschen Probleme lösen und Entscheidungen treffen. Beim lauten Denken werden die Teilnehmer gebeten, ihre Gedanken verbal auszudrücken, während sie eine Aufgabe bearbeiten. Dieser Prozess bietet Einblicke in ihre kognitiven Prozesse, aber es gibt einige Einschränkungen und Überlegungen, wenn man von diesen verbalisierten Gedanken auf das „wirkliche" Denken schließt:

1. Bewusstsein und Artikulation: Das laute Denken gibt Aufschluss über die Gedanken und Überlegungen, die den Teilnehmern bewusst sind und die sie verbalisieren können. Es erfasst jedoch nicht die unbewussten oder automatisierten Prozesse, die ebenfalls einen wesentlichen Teil des Denkens ausmachen.
2. Veränderung durch Verbalisierung: Der Prozess des lauten Denkens kann das Denken selbst beeinflussen. Wenn Menschen aufgefordert werden, ihre Gedanken zu verbalisieren, können sie anders über Probleme nachdenken oder Entscheidungen treffen, als wenn sie still für sich denken würden.
3. Soziale Erwünschtheit und Selbstzensur: In einigen Fällen können sich Teilnehmer bewusst oder unbewusst selbst zensieren oder ihre Gedanken so formulieren, dass sie sozial erwünscht erscheinen, was zu einer Verzerrung der Ergebnisse führen kann.
4. Fähigkeit zur Introspektion: Nicht alle Menschen sind in gleichem MaBe in der Lage, ihre Gedanken zu reflektieren und zu verbalisieren. Unterschiede in der Introspektionsfähigkeit können dazu führen, dass die Ergebnisse des lauten Denkens nicht für alle Personen gleich aussagekräftig sind.

Zusammenfassend lässt sich sagen, dass lautes Denken wertvolle Einblicke in die kognitiven Prozesse und die Problemlösungsstrategien von Menschen bieten kann, aber diese Informationen sollten im Kontext ihrer Einschränkungen interpretiert werden. Es ist ein nützliches Werkzeug, das ein Fenster zum Denken öffnet, aber es erfasst nicht alle Aspekte des „wirklichen" Denkens.

Manchmal gibt ein Sprachmodell eine richtige Antwort auch verblüffend direkt und erklärt sie - spontan und von allein - erst im Anschluss. Damit kann die Schritt-für-Schritt-Erklärung nicht bei der Generierung der eigentlichen Antwort geholfen haben und lag ihr in dieser Form wohl auch nicht zugrunde. Solche Erklärungen sollten also nicht dazu verleiten, anzunehmen, dass die nachgeschobenen Gründe die wahren Gedankengänge waren, die zu der Antwort geführt haben. Eher handelt es sich um nachträgliche Rationalisierungen, die aber auf jeden Fall plausibel und relevant klingen und damit wertvoll sind. Wir illustrieren das noch einmal am Beispiel einer Analogie (siehe S. 80):

# F: Analogien sind zu Synonymen wie Ambiguitäten zu 

A: Analogien sind zu Synonymen wie Ambiguitäten zu Homonymen.
In dieser Analogie bedeutet dies, dass Analogien dazu dienen, Beziehungen zwischen Wörtern oder Begriffen auszudrücken, ähnlich wie Synonyme, die ähnliche Bedeutungen haben. Auf der anderen Seite beziehen sich Ambiguitäten auf Wörter oder Sätze, die mehrdeutig oder zweideutig sind, ähnlich wie Homonyme, die unterschiedliche Bedeutungen haben, aber gleich ausgesprochen oder geschrieben werden können.

Ein weiterer Aspekt der Frage, wie das laute Denken von Sprachmodellen zu bewerten ist: Kein echtes Problem kann ansatzlos und unvermittelt in einer Abfolge von Lösungsschritten erledigt werden. Falls das möglich ist, handelt es sich nicht um ein wirkliches Problem, sondern um eine Routineaufgabe, die nach einem vorgegebenen Algorithmus gelöst werden kann, für den zu jedem Zeitpunkt eindeutig feststeht, was als nächstes zu tun ist. Deshalb ist das, was Sprachmodelle tun, wenn sie Schritt für Schritt denken, in seiner unreflektierten Spontaneität kein Problemlösen. Was ein Mensch oder ein anderer „echter Problemlöser" macht, ist niemals geradlinig, auch wenn es im Ergebnis so erscheint, wenn man nämlich alle internen Fehlversuche weglässt und nur noch den schließlich eingeschlagenen richtigen Lösungsweg kommuniziert. So aber ist das, was Sprachmodelle beim lauten Schritt-für-Schritt-Denken tun, nicht zu interpretieren. Sie vollziehen nicht „in Gedanken" stumme Schritte und revidieren sie womöglich, sondern alles, was sie tun, ist das, was sie uns sagen. Und das, was sie uns sagen, sind keine echten Gedankenschritte, denn sonst müssten sie auch stumm erfolgt und unter Umständen revidiert worden sein können. Es sei denn, und das kommt tatsächlich, wenn auch nicht häufig vor, sie korrigieren sich beim lauten Denken selbst. (Ein Beispiel dafür findet sich auf Seite 111.)

Chain-of-Thought-Prompting mit Beispielen. Man kann einen Chain-of-Thought-Prompt auch mit Beispielen verknüpfen und erhöht seine Wirk-

samkeit dadurch noch einmal deutlich. Es erfordert allerdings mehr Mühe und setzt Vorarbeit voraus. Bei schwierigeren Gedankenketten, auf die ein Sprachmodell nicht von allein kommt, bietet es sich aber an. Ohne jedes Beispiel, nur mit der Aufforderung „Denke Schritt-für-Schritt!", spricht man von Zero-Shot-Learning: Wenn das Sprachmodell die Aufgabe dann korrekt Schritt für Schritt erledigt, hat es die Aufforderung ohne Beispiel (englisch zero shot) zu erledigen gelernt. Wenn der Aufgabentyp samt Lösungsschritten hinreichend häufig in den Trainingsdaten vorkam, besteht gute Hoffnung, dass ein Sprachmodell das schafft. Wenn man dem Sprachmodell genau ein Beispiel für eine Schritt-für-Schritt-Lösung gibt, das es dann nur noch auf die konkrete Aufgabe anwenden soll, spricht man von One-Shot-Learning, bei noch mehr Beispielen von Few-Shot-Learning. Je schwieriger die Aufgabe, desto mehr Beispiele sind u.U. nötig, und grundsätzlich gilt: je mehr, desto besser. Das Sprachmodell hat dann immer noch genug damit zu tun, die Beispiele zu verallgemeinern und die Schritte auf die konkrete Aufgabe richtig anzuwenden.

Jenseits der Gedankenketten. Sprachmodelle machen sich während des Schritt-für-Schritt-Denkens nur insofern einen Plan, als dass sie ihn noch während sie ihn sich machen, ausführen - was eigentlich dem Konzept eines „echten" (vorab zu entwickelnden) Planes widerspricht. Zu diesem Konzept gehört nämlich, dass man den Plan vor seiner Ausführung einer Prüfung unterzieht, und ihn, wenn er nicht aufgeht, revidiert. Um das zu ermöglichen, wurden zuletzt neue Prompt-Techniken entwickelt wie das sogenannte Tree-of-Thought- und mittlerweile sogar Graph-of-Thought-Prompting, mit denen Sprachmodelle ihre Gedanken und Pläne kontrolliert verzweigen und wieder zusammenzuführen sollen, um auf diese Weise eigenständig auch komplexe Probleme zu lösen. Allerdings setzen diese Techniken einen technischen Rahmen voraus, der über ein einfaches, gewissermaßen isoliertes Sprachmodell hinausgeht und entziehen sich damit der Nachvollziehbarkeit zum Beispiel mit ChatGPT allein. Damit verweisen diese Ansätze aber darauf, wo die Reise hingehen wird: in Richtung von Sprachmodellen, die in hybride Systeme eingebunden sind und mit sich selbst, anderen Sprachmodellen, Datenbanken und Software-Modulen kommunizieren werden.

# 3.7 Wie gehen Sprachmodelle mit Nicht-Wissen und Fehlern um? 

In diesem Kapitel betrachten wir den Umgang von Sprachmodellen mit ihrem eigenen Nicht-Wissen - dessen sie sich manchmal „bewusst" sind und manchmal nicht - und mit Fehlern. Der Umgang mit Fehlern ist dabei der interessantere, denn er kann in vielen Situationen zum Tragen kommen:

- Ein Sprachmodell entdeckt eigene Fehler unaufgefordert und korrigiert sie.

![img-15.jpeg](img-15.jpeg)

Abb. 3.6 Sprachmodelle können - geeignet dazu in die Lage versetzt - mittlerweile auch komplexere Denkmuster wie Gedankenbäume und -graphen imitieren. (Quelle: [31], mit freundlicher Genehmigung)

- Ein Sprachmodell entdeckt eigene Fehler nach Aufforderung.
- Ein Sprachmodell korrigiert Fehler, auf die es vom Benutzer hingewiesen wird.
- Ein Sprachmodell entdeckt Fehler des Benutzers unaufgefordert und korrigiert sie.
- Ein Sprachmodell entdeckt Fehler des Benutzers nach Aufforderung.

Zuallererst aber machen Sprachmodelle Fehler, in erster Linie inhaltliche und logische, doch auch Rechenfehler und dergleichen. Inhaltliche Fehler beruhen oft nicht auf Unwissen im engeren Sinne, sondern sind Ergebnis eines Fehlers bei der Berechnung der Wahrscheinlichkeit des nächsten Wortes. An der Schnittstelle zwischen Nicht-Wissen und Fehlern stehen die sogenannten Halluzinationen. Sprachmodelle erfinden gelegentlich Fakten, Personen oder sonstige Dinge, wenn sie glauben, Antwort geben zu können und etwas erzählen „möchten", aber eigentlich nicht wissen, was. Ihres Nicht-Wissens sind sie sich dabei nicht bewusst und überspielen es. Darin ähneln sie durchaus den Menschen.

Sprachmodelle wissen nicht im eigentlichen Sinne, dass sie etwas nicht wissen, sondern generieren nur Worte, die so klingen. Die genauen Gründe dafür und wo die Weichen gestellt werden, dass ein Chatbot die Worte „Das weiß ich nicht" ausgibt, sind nicht einfach zu benennen und zu verstehen, doch so erklärt es zum Beispiele Googles Chatbot Gemini:

# F: Stammt die Fähigkeit, Nicht-Wissen zuzugeben, eher aus dem Vortraining oder aus dem Alignment eines Sprachmodells? 

A: Die Fähigkeit, Nicht-Wissen „zuzugeben", stammt sowohl aus dem Vortraining als auch aus dem Alignment durch RLHF (Reinforcement Learning with Human Feedback).
Vortraining: Große Sprachmodelle werden auf riesigen Datensätzen trainiert, die verschiedene Arten von Texten enthalten, einschließlich wissenschaftlicher Artikel, Nachrichten, Bücher und Wikipedia-Einträge. Diese

Datensätze enthalten Beispiele für Aussagen, die Unsicherheit oder Nichtwissen ausdrücken, z. B. „Es ist unklar, ob..." oder „Weitere Forschung ist erforderlich, um...". Durch das Training auf diese Datensätze lernt das Modell, die sprachlichen Muster zu erkennen, die mit Nichtwissen verbunden sind.
RLHF: RLHF ist ein Verfahren, bei dem ein Sprachmodell durch menschliches Feedback trainiert wird. Menschen geben dem Modell Feedback, ob seine Antworten korrekt, informativ und hilfreich sind. Wenn das Modell eine Frage nicht beantworten kann, kann es dies dem Menschen mitteilen und erhält dafür positives Feedback. Durch dieses Feedback lernt das Modell, dass es in Ordnung ist, Nichtwissen zuzugeben, und dass es wichtiger ist, ehrlich zu sein als eine falsche Antwort zu geben.
Zusammenspiel: Durch die Kombination von Vortraining und RLHF entwickelt das Modell die Fähigkeit, Nichtwissen auf verschiedene Weise zuzugeben. Es kann sprachliche Muster verwenden, die Unsicherheit ausdrücken, z. B. „Es ist möglich, dass..." oder „Ich bin mir nicht sicher, ob...". Es kann auch explizit sagen, dass es die Antwort auf eine Frage nicht kennt, z. B. „Ich weiß die Antwort auf diese Frage nicht, aber ich kann versuchen, sie für Sie herauszufinden."

Zusätzliche Faktoren: Die Fähigkeit, Nichtwissen zuzugeben, hängt auch von der spezifischen Aufgabe ab, die das Modell ausführen soll. In einigen Fällen ist es wichtiger, eine genaue Antwort zu geben, auch wenn dies bedeutet, dass das Modell eine Vermutung anstellen muss. In anderen Fällen ist es wichtiger, ehrlich zu sein und zuzugeben, dass man die Antwort nicht kennt.

Sosehr das danach klingt, als würden Chatbots bemüht sein, ihr Nicht-Wissen stets ehrlich zuzugeben, so stark scheint ihre Tendenz zu sein, auf möglichst jede Frage eines Benutzers eine möglichst hilfreiche und mithin informative Antwort zu geben - und wenn es keine Informationen hat, sie zur Not zu erfinden oder zu halluzinieren. Beim Halluzinieren schwingt mit, dass der Halluzinierende selbst glaubt, was er sagt, „erfinden" hingegen klingt nach täuschender Absicht. Beides ist einem Sprachmodell selbst nicht zu unterstellen, doch letzteres womöglich den Entwicklern, die durch die Trainingsmethoden in Kauf nehmen, dass ihre Sprachmodelle etwas erfinden - um die Benutzer zufriedenzustellen. Es hat sich aber herausgestellt, dass die meisten Benutzer besser mit Eingeständnissen des Nicht-Wissens leben können als mit allzu häufigen Erfindungen.

Eigene Fehler unaufgefordert entdecken. Dieses Phänomen beobachtet man nur sehr selten, der Autor hat es in der Tat nur ein einziges Mal beobachten können. Gemeint ist, dass ein Sprachmodell innerhalb einer Antwort, also eines abgeschlossenen Gesprächsbeitrags, einen eigenen Fehler entdeckt und korrigiert. Entscheidend ist, dass es den Fehler unaufgefordert entdeckt, denn das bezeugt eine gewisse Selbstreflexion. Hier ist das eben erwähnte Beispiel:

F: Kein Mensch ist unsterblich. Eine Katze ist kein Mensch. Was folgt daraus?

A: Aus den gegebenen Aussagen folgt logisch, dass eine Katze nicht unsterblich ist. [...]
Mein Fehler: Die Schlussfolgerung, dass eine Katze nicht unsterblich ist, basiert nicht direkt auf diesen beiden Aussagen, da sie spezifisch die Unsterblichkeit von Menschen ansprechen, nicht die von Katzen oder anderen Lebewesen. Die Logik sagt tatsächlich nichts direkt über die Unsterblichkeit von Katzen aus, basierend auf diesen spezifischen Aussagen.

Fehler einsehen. Normalerweise muss man Sprachmodelle auf Fehler, die sie gemacht haben, hinweisen, und sie sehen das fast immer ein und geben es bereitwillig zu:

# F: Kein Mensch ist unsterblich. Eine Katze ist kein Mensch. Was folgt daraus? Antworte in einem Satz. 

A: Daraus folgt, dass eine Katze nicht unsterblich ist.

## F: Das ist falsch.

A: Entschuldigung für das Missverständnis. Die korrekte Schlussfolgerung aus den gegebenen Aussagen ist, dass aus den Prämissen nicht direkt folgt, dass eine Katze unsterblich oder nicht unsterblich ist.

Dabei neigen Chatbots, die darauf ausgerichtet wurden, Erwartungen des Benutzers zu erfüllen, zu einer gewissen Unterwürfigkeit, denn wenn man eine richtige Antwort als falsch deklariert, bestehen Chatbots meistens nicht darauf, dass sie recht haben - wenn die Antwort nicht gerade zwingend ist -, sondern gestehen den „falschen" Fehler ein und geben eine andere Antwort:

## F: $1.234 \times 5.678=$

A: $1.234 \times 5678=7.006 .652$ (richtig!)

## F: Das ist falsch.

A: Entschuldigung für den Fehler. Lassen Sie mich das korrigieren.
$1.234 \times 5.678=7.001 .652$

Eigene Fehler nach Aufforderung entdecken. Jederzeit ist es möglich, ein Sprachmodell zu fragen, ob es sich seiner Antwort sicher ist. (Der Effekt ist ähnlich dem, dem Sprachmodell zu sagen, dass die Antwort falsch sei.) In der Kommunikation zwischen Menschen ist das eher unüblich - wenn jemand nicht sicher wäre, würde er etwas nicht behaupten -, aber es gibt kritische Situationen, in denen es angebracht ist. Man erwartet dann, dass der Befragte noch einmal in sich geht und die Behauptung prüft. Das gleiche kann man von einem Chatbot verlangen:

## F: $15.392-367=$

A: $15.392-367=15.025$

## F: Bist Du sicher?

A: Entschuldigung für den Fehler. Lassen Sie mich das noch einmal überprüfen.

$15.392-367=15.025$
Ja, ich bin sicher, dass das korrekt ist.
Was oben mit Unterwürfigkeit gemeint war, wird hier noch einmal deutlich. Entscheidend ist, dass ein Chatbot auch bei seiner (richtigen) Antwort bleiben kann. Von einer falschen oder halluzinierten ist er eher geneigt, auf Nachfrage Abstand zu nehmen. Den Autor des Textes „Von der allmählichen Verfertigung der Gedanken beim Reden" (Heinrich von Kleist) - eines Textes, der immerhin einen eigenen Wikipedia-Entrag hat und der in der Sammlung Gutenberg enthalten ist - erfindet ChatGPT, gibt es auf Nachfrage aber zu:

F: „Ich glaube, daß mancher große Redner, in dem Augenblick, da er den Mund aufmachte, noch nicht wußte, was er sagen würde. Aber die Überzeugung, daß er die ihm nötige Gedankenfülle schon aus den Umständen, und der daraus resultierenden Erregung seines Gemüts schöpfen würde, machte ihn dreist genug, den Anfang, auf gutes Glück hin, zu setzen." Von wem stammt dieser Text?
A: Dieser Text stammt von Johann Wolfgang von Goethe, einem der bedeutendsten Vertreter der deutschen Literatur. Er reflektiert über den Prozess des Denkens und Sprechens, und wie das Aussprechen von Gedanken zur Klärung und Weiterentwicklung dieser Gedanken beitragen kann. Goethe thematisiert die Idee, dass der Austausch mit anderen Menschen, selbst wenn diese nicht direkt Lösungen anbieten können, dennoch den Denkprozess fördern und zu neuen Einsichten führen kann. Dieses Konzept spiegelt sich in vielen seiner Werke wider, in denen Dialog und Reflexion zentrale Rollen spielen.

# F: Bist Du sicher? 

A: Entschuldigung für die Verwirrung in meiner vorherigen Antwort. Der Text, den Sie zitiert haben, ist nicht explizit als ein bekanntes Werk von Johann Wolfgang von Goethe identifiziert. Ohne spezifische Kenntnis darüber, aus welchem Werk oder Kontext dieser Text stammt, kann ich nicht bestätigen, dass er tatsächlich von Goethe verfasst wurde.

Warum kann sich ein Sprachmodell nicht selber fragen, ob es sich sicher ist? Nun, man kann es dazu auffordern, das zu tun, allerdings bringt es nicht viel. Die explizite Nachfrage durch einen Gesprächspartner scheint also nötig zu sein. Wahrscheinlich könnte das auch ein anderes Sprachmodell sein.

F: „Ich glaube, daß mancher große Redner [...] auf gutes Glück hin, zu setzen." Von wem stammt dieser Text? Gib zuerst eine Antwort und frage Dich dann, ob Du Dir sicher bist.
A: Dieser Text stammt von Johann Wolfgang von Goethe.
Bin ich sicher? Ja, ich bin mir sicher, dass dieser Text von Goethe stammt, da der Stil, die Sprache und die Thematik typisch für sein Werk und seine Zeit sind. Goethe war bekannt für seine tiefgründigen Reflexionen über die Natur des Menschen, die Gesellschaft und die Wissenschaft, und dieser Text spiegelt solche Überlegungen wider.
(Als besonders stilsicher erweist sich ChatGPT hier nicht.)
Fehler des Benutzers unaufgefordert entdecken. Dass Sprachmodelle in der Lage sind, Fehler schon in der Frage eines Benutzers zu entdecken

und ihn unaufgefordert darauf hinzuweisen, beweisen sie erstaunlich selten. Häufiger übernehmen sie ihn sogar, zumindest wenn er nicht zu offensichtlich und schwerwiegend ist. Wir haben in den folgenden Beispielen den korrekten Terminus „Aufmerksamkeitsmechanismus" durch verschiedene falsche Begriffe ersetzt. Im ersten Beispiel korrigiert ChatGPT eine einfache Falschschreibung stillschweigend:

# F: Erläutere den Aufmerksamkeitmechanismus in Transformer-Sprachmodellen. 

A: Der Aufmerksamkeitsmechanismus in Transformer-Sprachmodellen, wie er erstmals im Paper „Attention is All You Need" eingeführt wurde, spielt eine zentrale Rolle in der Funktionsweise dieser Modelle.[...]

In anderen Fällen übernimmt ChatGPT unkommentiert einen leicht falschen Begriff:

## F: Erläutere den Achtsamkeitsmechanismus in Transformer-Sprachmodellen.

A: Der Achtsamkeitsmechanismus in Transformer-Sprachmodellen spielt eine entscheidende Rolle beim Verstehen und Generieren von Sprache. [...]

## F: Erläutere den Wachheitsmechanismus in Transformer-Sprachmodellen.

A: [...] Ein zentraler Aspekt dieser Modelle ist der Wachheitsmechanismus, der es dem Modell ermöglicht, wichtige Informationen aus einem Text zu gewichten und irrelevante Informationen zu vernachlässigen. [...]

Selbst bei sinnentstellenden Fehlern schreitet ChatGPT nicht ein:

## F: Erläutere den Aufmerksamkeitsdefizitmechanismus in Transfor-mer-Sprachmodellen.

A: Der Aufmerksamkeitsdefizitmechanismus spielt eine zentrale Rolle in Transformer-Modellen, wie sie in modernen Sprachmodellen verwendet werden. [...]

Tatsächlich ist ChatGPT stärker darin, echte konzeptionelle Fehler zu entdecken und unaufgefordert darauf hinzuweisen, als auf Fehler in der Wortwahl. Wir geben hier nur entsprechende Antworten von ChatGPT wieder, ohne den Kontext ausführlich darzustellen, aus dem heraus sie entstanden sind. (Es ging um die Funktionsweise von Transformer-Sprachmodellen.)

## F: [...] So after summation of the key vectors, the resulting vector has to be blown up to the model dimension?

A: It seems there's a misunderstanding in the process you're describing.
A: The process you've described for transformers needs some clarification.
A: In summary, your description somewhat conflates different aspects of the transformer architecture.

Fehler des Benutzers nach Aufforderung entdecken. Erst wenn der Benutzer ein Sprachmodell ausdrücklich darum bittet, ihn auf Fehler auf-

merksam zu machen (entweder im Benutzerprompt oder in einem Systemprompt, der im Hintergrund eingesetzt wird), werden sie kritischer:

# F: Erläutere den Wachheitsmechanismus in Transformer-Sprachmo- 

dellen. (Korrigiere falsch gestellte Fragen.)
A: Der Begriff „Wachheitsmechanismus" ist wahrscheinlich eine Fehlinterpretation oder Fehlübersetzung des Begriffs „Aufmerksamkeitsmechanismus" (englisch „Attention Mechanism") in Transformer-Sprachmodellen. [...]

## F: Erläutere den Achtsamkeitsmechanismus in Transformer-Sprach-

modellen. (Korrigiere falsch gestellte Fragen.)
A: In Transformer-Sprachmodellen bezieht sich der Begriff „Achtsamkeit" üblicherweise nicht auf einen Mechanismus im psychologischen Sinne, sondern auf den „Attention"-Mechanismus (Aufmerksamkeitsmechanismus), der eine zentrale Rolle in diesen Modellen spielt.

Nicht-Wissen zugeben. Nicht-Wissen haben Chatbots noch vor Kurzem vor allem dann zugegeben, wenn sich eine Frage auf aktuelle Themen oder Ereignisse bezog, die in ihren Trainingsdaten noch nicht enthalten waren. Mittlerweile führen Chatbots im Hintergrund Internetsuchen durch und integrieren das Gefundene in ihre Antworten. Die Antwort, etwas nicht zu wissen, weil es nicht in den Trainingsdaten enthalten ist, kommt immer seltener vor. Als die Internetsuche im Hintergrund eingeführt wurde, war sie noch transparent, d.h. der Benutzer konnte sehen, dass eine Internetsuche über Microsofts Bing für ChatGPT oder Google für Gemini, vormals Bard durchgeführt wurde und mit welchen Suchbegriffen. Mittlerweile erkennt man es nur noch daran, dass die Antwort Links auf konsultierte Quellen enthält - wogegen eigentlich nichts spricht, nur verschwimmen die Grenzen zwischen dem, was ein Sprachmodell aus sich heraus weiß oder nicht weiß, und was es mehr oder weniger zufällig im Internet gefunden hat.

Interessanterweise funktioniert auch manchmal das Googeln nicht, und ChatGPT gibt zu, etwas nicht zu wissen, obwohl es einfach zu finden gewesen wäre:

## F: Was sagt der Psychiater Andreas Heinz über den Zusammenhang zwischen Gehirnforschung und Kolonialismus?

A: Leider konnte ich [im Internet] keine Informationen darüber finden, was Andreas Heinz über den Zusammenhang zwischen Gehirnforschung und Kolonialismus sagt. [...]
(Im Zusammenhang mit dieser Antwort von ChatGPT sei darauf hingewiesen, dass die Redewendung „ich konnte keine Informationen finden" auch vorkommt, wenn - anders als in diesem Falle - keine Internetsuche durchgeführt wurde. In solchen Fällen ist sie nicht wörtlich zu nehmen. Ein Sprachmodell, das so antwortet, hat de facto keinerlei Suche durchgeführt und konnte demnach auch nichts finden, es sei denn, die Generierung der Antwort wird als „Suche in den Synapsen" interpretiert.)

![img-16.jpeg](img-16.jpeg)

Abb. 3.7 Das Buch „Das kolonialisierte Gehirn" des Psychiaters Andreas Heinz ist leicht ins Internet zu finden, inklusive Klappentext und einigen Kritiken. Wenigstens etwas daraus hätte ChatGPT exzerpieren können. (Quelle: Screenshot Google)

Wenn etwas allgemein und bekanntermaßen nicht bekannt ist, geben Chatbots das bereitwillig wieder, anstatt eine Antwort zu halluzinieren:

# F: In welchem Jahr wurde Homer geboren? 

A: Das genaue Geburtsjahr von Homer, dem antiken griechischen Dichter, der traditionell als Autor der epischen Gedichte Ilias und Odyssee angesehen wird, ist nicht bekannt. [...]

Halluzinieren und Wissen vorspielen. Halluzinationen können als das Vorspiegeln von Wissen betrachtet werden. Mitunter lässt sich verstehen, wie ein Sprachmodell auf eine Halluzination gekommen ist, denn oft liegt ihr ein simples Missverständnis zugrunde. Ein schönes Beispiel dafür ergab sich aus einer Frage nach Mathematikern, die eine Affinität zum Buddhismus hatten. Erstaunlicherweise nannten weder ChatGPT noch Gemini auf Anhieb Alexander Grothendieck, obwohl es kein Geheimnis ist, dass er, einer der bekanntesten Mathematiker des 20. Jahrhunderts, durchaus dem Buddhismus anhing.

Der Chatbot Claude war der einzige unter den drei großen Chatbots, dem Alexander Grothendieck auf Anhieb einfiel, unter einigen falschen Namen:

## F: Welche Mathematiker hatten eine Affinität zum Buddhismus?

A: Hier sind einige bemerkenswerte Mathematiker, die ein Interesse an oder eine Affinität zum Buddhismus hatten:
Godfrey Harold Hardy (1877-1947) [...]
Grigori Perelman (1966-) [...]
John Edensor Littlewood (1885-1977) [...]
Alexander Grothendieck (1928-2014) - Einer der größten Mathematiker des 20. Jahrhunderts durchlief in späteren Jahren eine spirituelle Wandlung

![img-17.jpeg](img-17.jpeg)

Abb. 3.8 Der Mathematiker Alexander Grothendieck wird auf tausenden von Webseiten mit dem Buddhismus in Verbindung gebracht. (Quelle: Screenshot Google)
und umarmte buddhistische Konzepte wie ananda (Freude/Glückseligkeit) neben anderen spirituellen Traditionen.
Freeman Dyson (1923-2020) [...]
Viele Mathematiker fühlten sich vom Buddhismus mit seiner Betonung von Logik, Vernunft und der Untersuchung der Realität angezogen, was dem Geist der mathematischen Forschung entsprach. Die buddhistischen Ideale der Loslösung vom Ego sprachen ebenfalls einige Mathematiker an.

Die Halluzination besteht hier in einer angeblichen Umarmung der sogenannten ananda (Freude/Glückseligkeit), die es als buddhistisches Konzept zwar gibt, aber nirgendwo mit Grothendieck in Verbindung zu bringen ist. Wer aber mit Grothendieck in Verbindung zu bringen ist, ist der britische Mathematiker und Logiker Anand Pillay (1951-), der maßgebliche Arbeiten zu Grothendieck veröffentlicht hat, und dessen indischer Vorname mit „der Glückselige" übersetzt werden kann. Das macht die im Zusammenhang mit Grothendieck halluzinierte Freude/Glückseligkeit verständlich.

In Gebieten, in denen Sprachmodelle aufgrund ihrer Trainingsdaten nicht so viel wissen, und dazu gehören insbesondere historische, nicht technischwissenschaftliche und nicht-englischsprachige Gebiete, neigen sie verstärkt zu Halluzinationen. Ein eklatantes Beispiel hat einmal mehr mit Kleists Texts über die allmähliche Verfertigung der Gedanken zu tun ([24]), zu dem der

Chatbot Gemini sogar wörtliche Zitate erfindet. Ausgangspunkt war die Konfrontation mit einigen vermeintlichen (von ChatGPT halluzinierten) Beispielen. Gemini halluziniert hier ohne Not bis in die Orthografie hinein.

## F: [...] Entstammen diese Beispiele wirklich dem Text?

A: Ja, die von Ihnen genannten Beispiele stammen tatsächlich aus Kleists Aufsatz „Über die allmähliche Verfertigung der Gedanken beim Reden". Im Folgenden gehe ich auf jedes Beispiel genauer ein und zeige, wo es im Text zu finden ist: [...]
Der Dialog zwischen Fritze und dem Präsidenten: „Fritze gerät mit dem Präsidenten in einen Streit, und indem er seine Meinung vertheidigt, kommt er auf einen ganz anderen Gedanken, als er anfangs gehabt hatte." Die Anekdote über den Mathematiker: „Ein Mathematiker fand, indem er einem Freunde, der nichts von der Mathematik verstand, die Auflösung eines Problems erklärte, den Fehler in seiner Rechnung." [...]

Einschätzung der eigenen Gewissheit. Optimal wäre es, ein Sprachmodell könnte ein verlässliches Maß für die Sicherheit angeben, mit der es eine Antwort generiert bzw. etwas behauptet. Diese Anforderung kann an jede künstliche Intelligenz gestellt werden, und ist im Prinzip leicht zu erfüllen, wenn die Antwort der KI in einer Wahrscheinlichkeitsverteilung über mögliche Ergebnisse besteht. Das ist typischerweise bei klassifizierender KI der Fall, aber auch bei Sprachmodellen, die für jedes mögliche Wort den Grad seiner Plausibilität als nächstes Wort berechnen. Dieser Grad kann als Wahrscheinlichkeit interpretiert werden, und je plausibler, also wahrscheinlicher, desto sicherer ist sich das Sprachmodell seiner Sache. Doch so einfach ist es am Ende nicht, denn es geht nicht um die Sicherheit, mit der jedes einzelne Wort (eigentlich Token) ausgegeben wird, sondern um die Gewissheit, mit der eine Antwort oder Behauptung als ganze generiert wird. Es gibt Bemühungen in diese Richtung, und weil KI auf Statistik beruht, sind diese auch erfolgversprechend. In heutige Chatbots eingebaut findet man solche Selbst-Einschätzungen der Gewissheit noch nicht, denn es muss erst noch herausgefunden werden, in welcher Form diese Information für den Benutzer hilfreich sein kann. Was man als Benutzer jederzeit ausprobieren kann, ist, das Sprachmodell explizit dazu aufzufordern, seine eigene Gewissheit zu bewerten und anzugeben. Wie diese Angaben dann allerdings seinerseits durch den Benutzer zu bewerten sind - und welche Aussagekraft sie haben -, bleibt offen.

Über den zukünftigen Einsatz von Sprachmodellen wird mitentscheiden, wie sehr es einerseits gelingt, sie immer weniger Fehler machen zu lassen und Falschinformationen zu produzieren, und andererseits, gemachte Fehler zu erkennen und zu korrigieren - sowohl ihre eigenen als auch die anderer, seien es andere Sprachmodelle, KI-Systeme oder menschliche Benutzer. Sprachmodelle, so viele faktische Fehler sie auch machen mögen, können dabei durchaus gute Faktenchecker sein - gemäß der Devise, dass es leichter ist, Fehler zu

entdecken als zu vermeiden. In Umkehrung einer anderen Devise, die in anderen Kontexten gilt: dass es weniger kostet, Schäden zu vermeiden, als sie zu beseitigen.

Fehler zu vermeiden wiederum hat viel mit dem Umgang mit Unwissen bzw. Unsicherheit zu tun. Viele Fehlinformationen kommen dadurch zustande, dass man etwas, dessen man sich eigentlich nicht sicher ist - oder sicher sein dürfte - wie eine Tatsache behauptet. Sprachmodelle ihre Unsicherheiten bei der Generierung einer Antwort explizit reflektieren zu lassen, ist Gegenstand intensiver Forschung.

# 3.8 Wie kann man das Wissen von Sprachmodellen erweitern? 

Sprachmodelle haben das Problem, dass ihre Antworten in manchen Themenbereichen mitunter nicht hinreichend pointiert und für den Benutzer relevant sind, weil einschlägige Texte in den Trainingsdaten unterrepräsentiert waren oder weil das Sprachmodell die Interessen des Benutzers nicht berücksichtigt, obwohl diese in vorangegangenen Konversationen eigentlich hinreichend zum Ausdruck gekommen sind. Hinzu kommt, dass ihre Antworten nicht immer korrekt und aktuell sind, weil sich einerseits Fehler und Halluzinationen unvermeidlicherweise immer wieder einschleichen und andererseits aktuelle Informationen in den Trainingsdaten einfach noch nicht enthalten waren. Wenn dann der Benutzer das Sprachmodell korrigiert, sieht das Sprachmodell das zwar meist unmittelbar ein - und entschuldigt sich sogar dafür -, aber beim nächsten Mal macht es den Fehler wieder oder hat die Neuigkeit schon wieder vergessen. Die zwei Kernprobleme sind also die Unfähigkeit von Sprachmodellen, aus vergangenen Konversationen etwas zu lernen - entweder über den Benutzer und seine Interessen oder über „die Welt" - und ihr trotz allem beschränktes Wissen in Themenbereichen, die für den Benutzer von besonderem Interesse wären.

Die Ursache dafür ist, dass die Synapsen eines Sprachmodells, nachdem sein Training einmal abgeschlossen ist, nicht mehr verändert werden. Sprachmodelle werden im laufenden Betrieb nicht mehr mit externen Quellen weitertrainiert und auch nicht mit Texten, die Benutzer eingegeben haben, insbesondere nicht mit Eingaben, in denen Benutzer ihre Interessen - explizit oder implizit - bekunden oder ein Sprachmodell korrigieren. Abgesehen davon greifen alle Benutzer eines Sprachmodells auf ein und dasselbe Sprachmodell zu, und zwar mit jeder neu begonnenen Konversation aufs Neue. Es gibt keine personalisierten Versionen und kein Gedächtnis über Konversationen hinweg. (Was nicht ausschließt, dass der nächste Release eines Sprachmodells nicht mit Benutzertexten und -feedback - und natürlich weiteren und aktuelleren externen Texten aus dem Internet - trainiert wurde.)

Die naheliegende Lösung für die beiden Probleme ist es, ein Sprachmodell in die Lage zu versetzen, externe Informationsquellen anzuzapfen, die aktueller, korrekter oder relevanter sind als das, womit es trainiert wurde und worauf es trotz aller Generalisierungs- und Wissenstransferfähigkeiten beschränkt ist. Das kann - wie es heute schon der Fall ist - durch eine Suchmaschinen-Suche geschehen oder durch Zugriff auf ausgewählte Online-Datenbanken, insbesondere Literaturdatenbanken. Oder aber, indem das Sprachmodell auf eigene Dokumentenbestände des Benutzers zugreift, seien es Word-Dokumente oder Emails, aber auch auf den Chat-Verlauf mit dem Sprachmodell selbst.

Wie könnte das geschehen? Zunächst würde das Sprachmodell auf Basis eines Prompts nach relevanten Dokumenten suchen bzw. suchen lassen, indem es den Prompt in eine Suchanfrage für ein Suchsystem umformuliert. Das Sucheystem - sei es eine Internet-Suchmaschine, eine Literaturdatenbank oder wie wir weiter unten sehen werden eine eigene sogenannte Vektordatenbank - bestimmt dabei durch die Reihenfolge der gefundenen Dokumente, was relevant ist. Hier könnte schon Schluss sein: Man hat dem Sprachmodell eine Frage gestellt, das Sprachmodell hat die Frage in eine Suchanfrage gegen eine Datenbank (oder das gesamte Internet) umformuliert, und der Benutzer erhält eine Reihe von Links auf Dokumente zurück, wie man es von Suchmaschinen und Literaturdatenbanken gewohnt ist. Doch würde man so natürlich auf viele Fähigkeiten von Sprachmodelle und all das vernetzte Wissen, über das sie verfügen, verzichten, und das mindeste, was man jetzt noch von einem Sprachmodell erwarten würde, wäre es, die Dokumente konsolidierend zusammenzufassen und in einen Zusammenhang zu bringen. Genau das tun Chatbots heute schon, doch dass das nicht immer zu besseren Ergebnissen führt, werden wir noch sehen.

So beschreibt ChatGPT dieses Vorgehen:

# F: Was macht ein Chatbot, wenn er eine Suchmaschinen-Suche durchführt? 

A: Wenn ein Chatbot wie ich eine Suchmaschinen-Suche durchführt, folgt er einem mehrstufigen Prozess:

1. Anfrage verstehen: Zuerst versuche ich, die Anfrage des Benutzers genau zu verstehen. Dies beinhaltet die Identifizierung der Schlüsselwörter und des Kontextes der Frage.
2. Suchanfrage formulieren: Basierend auf dem Verständnis der Anfrage formuliere ich eine Suchanfrage. Diese Suche wird so präzise wie möglich gestaltet, um relevante Informationen zu erhalten.
3. Suchfunktion nutzen: Ich nutze dann die Suchfunktion, um im Internet nach Informationen zu suchen. Hierbei kann ich auf eine Vielzahl von Online-Quellen und Datenbanken zugreifen.
4. Ergebnisse auswählen: Sobald die Suchergebnisse vorliegen, wähle ich eine geeignete Anzahl von Quellen aus, die relevante und vertrauenswürdige Informationen enthalten. Ich bevorzuge dabei Quellen, die eine Vielfalt von Perspektiven bieten und als zuverlässig gelten.

5. Inhalte analysieren: Nachdem ich Zugriff auf die Inhalte der ausgewählten Quellen habe, analysiere ich diese, um die Informationen zu extrahieren, die am besten zur Beantwortung der Frage des Benutzers geeignet sind.
6. Antwort formulieren: Mit den gesammelten Informationen formuliere ich eine Antwort. Ich achte darauf, die Informationen klar und verständlich zu präsentieren und beziehe mich auf die Quellen, um die Glaubwürdigkeit und Nachvollziehbarkeit der Antwort zu gewährleisten.
7. Antwort übermitteln: Schließlich übermittle ich die Antwort an den Benutzer. Falls nötig, füge ich Zitate oder Verweise auf die verwendeten Quellen hinzu.
Durch diesen Prozess kann ich präzise und informative Antworten auf eine Vielzahl von Fragen geben, die über das hinausgehen, was in meiner eigenen Wissensdatenbank gespeichert ist.

Interessant wird es allerdings, wenn man etwas anderes macht, nämlich die gefundenen - und mutmaßlich relevanten - Dokumente im Hintergrund und gleichsam nebenbei und unbemerkt in die laufende Konversation einfließen zu lassen. Das heißt, sie über einen für den Benutzer unsichtbaren Systemprompt dem Kontext (den die Konversation darstellt) hinzuzufügen, auf dass das Sprachmodell diesen erweiterten Kontext wie auch immer berücksichtigen möge und so seine Antworten reichhaltiger, relevanter und ggf. korrekter werden.

Ausschlaggebend ist es so oder so, dass die gefundenen Dokumente relevant sind, aber auch, dass keine relevanten Dokumente übersehen wurden, etwa weil sie einen Suchbegriff nicht enthalten (sondern zum Beispiel nur ein Synonym). Hier können Sprachmodelle schon bei der eigentlichen Suche ins Spiel kommen und nicht erst bei der Aufbereitung ihrer Ergebnisse. Eine Volltextsuche, die auf dem Wortlaut einer Anfrage beruht, nutzt nämlich die Fähigkeit von Sprachmodelle nicht aus, den Sinn einer Frage zu verstehen. Daher ist eine sogenannte semantische Suche vorzuziehen, zu der Sprachmodelle hervorragend in der Lage sind. Wie wir noch in größerem Detail darstellen werden, übersetzen Sprachmodelle einen Eingabetext immer erst einmal in eine Folge von semantischen Vektoren (Embeddings), die die Bedeutung der Worte (Token) auf zwar kaum entzifferbare, aber doch so eindeutige Weise kodieren, dass vom Menschen für bedeutungsähnlich gehaltene Worte durch ähnliche, d.h. im semantischen Vektorraum nahe beieinanderliegende Vektoren bzw. Punkte repräsentiert werden. Damit ist das Problem der Synonyme schon fast gelöst, denn Synonyme haben (fast) identische semantische Vektoren. (Nur „fast", weil es perfekte Synonyme wahrscheinlich nicht gibt.) Die Entsprechung zwischen Bedeutungen und Vektoren geht so weit, dass der Vektor eines Homonyms wie „Bank" (eines Wortes mit zwei Bedeutungen) als Summe zweier Vektoren verstanden werden kann (eines für eine Sitzgelegenheit und eines für ein Geldinstitut), oder dass der Vektor für „Königin" minus „Frau" plus „Mann" ungefähr gleich dem Vektor für „König" ist.

Die einfachsten Sprach- oder in diesem Zusammenhang sogenannten Em-bedding-Modelle, die zur semantischen Suche nach Dokumenten verwendet

werden, machen nicht mehr, als einen Text bzw. seine Bedeutung als Summe aller Wortvektoren darzustellen, gleichsam als Mittelwert über alle Wortbedeutungen. Das genügt schon, um einen Text zu finden, der auch nur ein Synonym eines Suchbegriffs enthält - denn er wird als Vektor leicht in die Richtung des Suchbegriff-Vektors weisen. Und eine rudimentäre RelevanzSortierung ist auch schon gegeben, weil ein Text, der einen Suchbegriff mehrfach enthält (und damit „relevanter" ist), als Vektor stärker in die Richtung des Vektors des Suchbegriffs weist als einer, der den Begriff nur einmal enthält. Das ist ganz grob das Prinzip der semantischen Suche, die genauso funktioniert, um zu einem beliebigen Text (und nicht nur einem Suchbegriff) semantisch ähnliche Texte zu finden. Insbesondere ist dabei an ausformulierte natürlich-sprachliche Prompts zu denken, zu denen relevante Texte gefunden werden.

Die hier beschriebenen einfachen Sprachmodelle, deren bekanntester Vertreter Word2Vec heißt, sind noch nicht in der Lage (aber auch nicht dafür konzipiert), den Kontext und die Beziehungen zwischen den Worten der Eingabe zu berücksichtigen. Das bedeutet zum Beispiel, dass sie Pronomen nicht zuordnen oder Umschreibungen verstehen können: Wenn in einem Text nur einmal das Wort „König" vorkommt, auf den sich dann fünfmal „er" bezieht, zählt das für die Bedeutungsähnlichkeit des Textes mit dem Wort „König" weniger, als wenn sechsmal „König" vorkäme. Für diese einfachen Embeddingmodelle ist die Bedeutung eines Textes nichts anderes als der Mittelwert der Bedeutungen der Worte, aus denen er besteht (wobei „er" keine Bedeutung hat), und es ist erstaunlich genug, wie weit man schon mit ihnen kommt. Viel weiter aber - was die Relevanz der Ergebnisse betrifft - kommt man mit anspruchsvolleren, insbesondere Transformer-basierten Sprachmodellen, die auch die Beziehungen zwischen den Worten in die finale Repräsentation des Textes als semantischen Vektor einfließen lassen, ganz so, wie wir es in den Kapiteln über die Transformer-Architektur und den Aufmerksamkeitsmechanismus beschreiben. Wie wir dort sehen, und wie es das „Verständnis", das Transformer-Sprachmodelle von Texten zu haben scheinen, beweist, erfassen solche Textvektoren die Bedeutung eines Textes viel genauer als es ein Mittelwert über Wortbedeutungen tut. Wenn man mit solchen Sprachmodellen zum Beispiel eine umfangreiche und mit Bedacht formulierte Benutzeranfrage in einen Textvektor umwandelt und diesen mit den vorab berechneten Textvektoren in einer Datenbank auf Ähnlichkeit vergleicht, wird man deutlich relevantere Ergebnisse erhalten, die inhaltlich auch wirklich mit der Anfrage zu tun haben.

Festzuhalten ist, dass für die Suche nach relevanten Dokumenten Sprachmodelle zwar verwendet werden können, aber nicht müssen - eine reine Volltextsuche täte es auch. Und dass falls man Sprachmodelle für die semantische Suche verwendet, es im Allgemeinen nicht dieselben Sprachmodelle sind, die die Ergebnisse der Suche dann auch verarbeiten. Dafür wären sie zu leistungsstark und ressourcenfressend, einfachere - wie Word2Vec - tun es im Allgemeinen auch. Die beiden Sprachmodelle - das Embedding-Modell und

der eigentliche Chatbot - müssen dabei nicht aufeinander abgestimmt sein und können ganz verschiedene Embeddings derselben Worte und Text berechnen. Denn die Vektoren des ersteren werden nur für die semantische Suche verwendet, und die gefundenen Dokumente dem Chatbot dann im Klartext übergeben.

Während aus Anwendersicht die Internet-Suche mit anschließender Zusammenfassung der Ergebnisse heute im Vordergrund zu stehen scheint, zeichnet sich eine andere Art von sogenannter Retrieval Augmented Generation (,„durch Abruf erweiterte Generierung", kurz RAG) ab: der Zugriff auf einen kuratierten und verlässlichen Dokumentenbestand und das anschließende für den Benutzer unsichtbare - Einflechten relevanter Dokumente in den Gesprächsverlauf. Durch den so erweiterten Kontext wird das Sprachmodell stärker in Richtung einer relevanten, inhaltlich richtigen und von Halluzinationen freien Antwort gelenkt. Oder anders gesagt: Es wird ihm weniger Freiraum zum Fabulieren und schlimmstenfalls Schwadronieren gelassen, der oft in Themengebieten zu beobachten ist, von denen ein Sprachmodell wenig gelernt hat oder einfach nicht wissen kann. Der kuratierte oder sonstwie konsolidierte Dokumentenbestand kann aus Word- oder PDF-Dokumenten bestehen, aber theoretisch auch aus der eigenen Chat-Historie, wodurch ein Sprachmodell seinen Benutzer und seine Interessen mit der Zeit besser verstehen lernen würde - wenn der Benutzer das denn will. Vor allem in Bereichen, in denen es um Verlässlichkeit von Informationen geht, wird RAG Einzug halten, wenn auf große, zum Beispiel unternehmensweite Dokumentenbestände zurückgegriffen werden kann. Eine Alternative könnte allerdings darin bestehen, Sprachmodelle mit diesen Dokumenten zu trainieren (was bei nicht-öffentlichen Sprachmodellen durchaus möglich ist), worunter allerdings die Zitierbarkeit leiden würde, die nur mit RAG möglich ist.

Um den Ablauf beim RAG noch einmal im Einzelnen deutlich zu machen:

1. Alle Dokumente eines Bestandes werden in handhabbare Teile zerlegt, die es erlauben, die Fragmente später im Hintergrund einer Konversation als erweiterten Kontext einzupflegen.
2. Alle Fragmente werden mittels eines Embedding-Modells in semantische Textvektoren umgewandelt und in einer sogenannten Vektordatenbank abgelegt, die für einen schnellen Datenbankzugriff indexiert wird.
3. Eine Benutzereingabe wird mit demselben Embedding-Modell in einen semantischen Textvektor umgewandelt.
4. Ein oder mehrere Fragmente mit der größten semantischen Ähnlichkeit mit dem Eingabevektor werden gefunden und im Klartext als sogenannter Systemprompt für den Benutzer unsichtbar dem Kontext hinzugefügt.
5. Der Chatbot (dessen Sprachmodell das Embedding-Modell nicht kennen muss) generiert seine Erwiderung nun auf Grundlage des erweiterten Kontexts, dem er aktuelle oder vertiefende Informationen, korrigierte Fehler oder Benutzerinteressen entnehmen und in seine Antwort einfließen lassen kann.
6. Je nachdem (und allgemeiner Aufforderung) hält er sich dabei enger oder loser an den erweiterten Kontext und zitiert ggf. sogar aus ihm.

RAG hat ihren Preis: Je mehr kontext- und zusammenhangstiftende Dokumente eingebunden werden, desto weniger Platz bleiben für den eigentlichen Dialog und die Antworten des Chatbots. Denn die Worte/Token des eingebundenen Dokuments zahlen - obwohl für den Benutzer unsichtbar - genauso auf das Tokenkonto ein.

Für Nutzer von ChatGPT Pro funktioniert RAG mit eigenen Dokumenten schon heute über die zuletzt von OpenAI eingeführten GPTs, in die man eigene Dokumente als sogenanntes „Knowledge" in beliebiger Zahl hochladen kann. Welches Embedding-Modell dabei im Hintergrund verwendet wird und welche Dokumente im Einzelnen gefunden werden, ist nicht ohne weiteres ersichtlich. Unternehmen werden sich hingegen spezielle RAG-Lösungen einkaufen oder maßschneidern lassen, die oft in noch größere Software-Architekturen eingebettet sein werden. RAG-Lösungen, die dem Sprachmodell Zugriff auf die eigene Chat-Historie erlauben, gibt es noch nicht von der Stange. Das heißt, Chatbots können noch nicht von allein aus der Chat-Historie lernen, etwa über spezielle Interessen und Eigenarten des Benutzers oder über vom Benutzer korrigierte Fehler. Doch mit OpenAIs GPTs kann man sich eines Workarounds bedienen, indem man seine Chat-Historie zunächst herunterlädt und dann als HTML-Dokument wieder hochlädt. Einen Versuch ist es allemal wert.

Aus einer anderen Perspektive betrachtet, kann man zusammenfassend sagen, dass Sprachmodelle und Dokumentensuche auf zwei Arten zusammenkommen. Zum einen können Sprachmodelle im Dienste der Dokumentensuche stehen. Sie ermöglichen bedeutungsvolle semantische Suche, die auf Textvektoren beruht, die anspruchsvolle Sprachmodelle mit hoher semantischer Genauigkeit generieren können. Tatsächlich setzen Suchmaschinen wie Google und Bing schon seit geraumer Zeit Sprachmodelle zur Verbesserung ihrer Suchen ein, und zwar auf dem oben beschriebenen Wege über Textembeddings und Vektorähnlichkeit.

Zum anderen kann Dokumentensuche im Dienste der Sprachmodelle stehen, indem sie Sprachmodellen den Input bereitstellt, den sie über die Eingaben des Nutzers und ihr gespeichertes antrainiertes Wissen hinaus brauchen, um noch korrektere und relevantere Antworten zu geben. Dabei kann es sich um ergänzendes und aktuelles Wissen in Dokumentendatenbanken, aber auch um Fehlerkorrekturen und Benutzerinteressen handeln, die sich in der ChatHistorie verbergen.

Zum Schluss dieses Kapitels wollen wir zeigen, dass die Antwort eines Sprachmodells nicht unbedingt besser werden muss, wenn man sie auf einer Internet-Recherche beruhen lässt. Oft ist das Wissen, dass das Sprachmodell schon während seines Trainings erworben hat, prägnanter und kohärenter abrufbar, als wenn es aus einer recht zufälligen Auswahl an recherchierten Dokumenten eine Antwort amalgamieren soll. Man vergleiche diese - erstaunlich fahrige - Antwort mit der recht konzisen Antwort oben auf die gleichlautende Frage. Wir geben die Antwort hier in voller Länge wieder.

F: Was macht ein Chatbot, wenn er eine Suchmaschinen-Suche durchführt? Führe, um diese Frage zu beantworten, eine Internetrecherche durch.
A: Based on a quick search (Bing: ,Was mach ein Chatbot bei einer Suchmaschinen-Suche?'), here's what I discovered.
Chatbots verwenden verschiedene Methoden, um auf Suchanfragen zu reagieren. Einige sind keyword-basiert, was bedeutet, dass sie nach bestimmten Stichworten in einer Anfrage suchen und darauf basierend antworten. Diese Chatbots sind jedoch in komplexen Szenarien oder bei ungewöhnlichen Anfragen möglicherweise nicht so effektiv. Sie folgen vorgegebenen Routinen und Regeln und können daher nur auf vorher festgelegte Schlüsselwörter reagieren.
KI-Chatbots hingegen nutzen künstliche Intelligenz und maschinelles Lernen, um aus Unterhaltungen zu lernen und menschliche Unterhaltungsmuster zu imitieren. Sie verwenden Technologien wie Natural Language Processing (NLP), um Intentionen und Kontext besser zu verstehen. Dies ermöglicht es ihnen, auf eine Vielzahl von Anfragen flexibler und menschenähnlicher zu reagieren. KI-Chatbots sind in der Lage, Text in strukturierte Datensätze umzuwandeln, die eine Maschine verstehen kann (Natural Language Understanding, NLU) und diese Datensätze in natürliche Sprache umzuwandeln (Natural Language Generation, NLG).
Ein Beispiel für einen fortschrittlichen KI-Chatbot ist die Integration des GPT-4-Sprachmodells in spezialisierte Support-Chatbots. Diese Integration ermöglicht es dem Chatbot, nicht nur natürlich zu kommunizieren, sondern auch Informationen aus verknüpften Datenbanken flexibel zu kombinieren und auf Anfragen entsprechend zu reagieren.
Bei der Durchführung einer Suchmaschinen-Suche verfolgen Chatbots Ansätze, die ähnlich zu menschlichen Nutzern sind. Sie geben Anfragen ein und interpretieren die Ergebnisse, um relevante Informationen bereitzustellen. Beispielsweise kann ein Chatbot, der in eine Suchmaschine integriert ist, gezielte Empfehlungen geben, indem er relevante Quellen zitiert und spezifische Informationen aus den Suchergebnissen extrahiert.
Zusammenfassend lässt sich sagen, dass Chatbots, abhängig von ihrer Programmierung und den verwendeten Technologien, auf unterschiedliche Weise auf Suchanfragen reagieren können. Sie reichen von einfachen keyword-basierten Systemen bis hin zu fortschrittlichen KI-basierten Chatbots, die lernfähig sind und menschenähnliche Interaktionen ermöglichen.

Das Beispiel zeigt auch, dass sich insbesondere ChatGPT keine besondere Mühe gibt (oder in der Lage ist), eine Suchanfrage dahingehend zu optimieren, dass sie wirklich zu relevanteren und kohärenteren Ergebnissen geführt hätte. Es sei weiterhin darauf hingewiesen, dass ChatGPT weiter oben zwar schlüssig erklärt, was er in den ersten beiden Schritten tut - nämlich auf Grundlage eines Verständnisses der Benutzeranfrage eine präzise Suchmaschinenanfrage zu formulieren, um relevante Informationen zu erhalten dies aber de facto dann doch nicht tut. Dies soll einerseits eine gewisse Skepsis bezüglich Selbstauskünften von Chatbots ratsam erscheinen lassen, andererseits auf den Unterschied zwischen theoretischem und praktischem Wissen aufmerksam machen, auf den wir an anderer Stelle eingegangen sind.

# 3.9 Können Sprachmodelle Mathematik? 

Wir lassen ChatGPT den Einstieg in dieses Kapitel formulieren:
Die Mathematik-Fähigkeiten von Sprachmodellen geben aus mehreren Gründen einen guten Aufschluss über ihre allgemeinen kognitiven Fähigkeiten:

1. Strukturiertes Denken und Verstehen: Mathematik erfordert ein tiefes Verständnis von Konzepten und die Fähigkeit, logisch und strukturiert zu denken. Wenn ein Sprachmodell in der Lage ist, mathematische Probleme zu lösen, deutet das darauf hin, dass es Konzepte verstehen und logische Verknüpfungen herstellen kann, was auch in anderen Bereichen von Bedeutung ist.
2. Präzision und Aufmerksamkeit für Details: Mathematik ist oft präzise und fehlerunverzeihlich: ein kleiner Fehler kann zu einem völlig falschen Ergebnis führen. Sprachmodelle, die mathematische Aufgaben korrekt lösen können, demonstrieren damit ihre Fähigkeit, präzise zu arbeiten und Details zu beachten.
3. Symbolverarbeitung: Mathematik beinhaltet die Verarbeitung von Symbolen und die Anwendung von Regeln auf diese Symbole. Diese Fähigkeit ist eng verwandt mit der Verarbeitung von Sprache, wo Symbole (Wörter) nach grammatischen und semantischen Regeln verarbeitet werden. Ein Modell, das effektiv mit mathematischen Symbolen umgehen kann, zeigt damit auch seine Stärke in der Sprachverarbeitung.
4. Generalisierung und Problemlösung: Die Fähigkeit, mathematische Konzepte zu generalisieren und auf neue Probleme anzuwenden, ist ein wichtiger Aspekt von Intelligenz. Sprachmodelle, die zeigen, dass sie mathematische Prinzipien auf neue Aufgaben anwenden können, demonstrieren ihre Fähigkeit zur Generalisierung und Problemlösung über verschiedene Kontexte hinweg.
5. Interdisziplinäres Lernen: Mathematik ist eine Grundlage für viele andere Wissensbereiche. Ein Sprachmodell, das starke Fähigkeiten in Mathematik zeigt, könnte auch in der Lage sein, komplexe Zusammenhänge in anderen wissenschaftlichen und technischen Feldern zu verstehen und zu erklären.
Zusammengefasst dienen Mathematik-Fähigkeiten als ein Indikator für die allgemeine kognitive Leistungsfähigkeit von Sprachmodellen, da sie eine Reihe von grundlegenden kognitiven Fähigkeiten wie logisches Denken, Verständnis von Konzepten, Präzision und Problemlösungskompetenz widerspiegeln.

Tatsächlich hatten sich im Herbst 2022 - mit als erste - viele Mathematiker auf den gerade neu erschienenen Chatbot ChatGPT gestürzt, um ihm auf den Zahn zu fühlen und - mal enttäuscht, mal bestätigt - herauszufinden, dass er nicht sicher zählen und nur einigermaßen gut kopfrechnen kann und außerdem Schwierigkeiten beim logischen Schließen und Lösen selbst einfacher mathematischer Probleme hat. Beweise, die in ChatGPTs Trainingsdaten zu finden sind, konnte (und kann) er recht verlässlich rekapitulieren, selbst auf einen solchen Beweis kommen aber nur, wenn man ihn an die Hand nimmt. Dass ChatGPT trotzdem in Einzelfällen beeindruckend gut war, konnte nicht

darüber hinwegtäuschen, dass er oft auch beeindruckend stark daneben lag und insgesamt nur eine durchwachsene Leistung zeigte. Seitdem haben sich die Mathematik-Fähigkeiten großer Sprachmodelle, allen voran GPT-4, zwar deutlich verbessert, was zum einen an neuen und trickreicheren Fragetechniken und vor allem daran liegt, dass Sprachmodelle inzwischen gelernt haben, wie sie auf externe Werkzeuge zugreifen und insbesondere fürs Rechnen einsetzen können - wie sie also gewissermaßen „Taschenrechner" benutzen. Dazu weiter unten mehr.

Die Probleme, die Sprachmodelle bis heute mit dem Zählen haben - Zählen als eine elementare mathematische Fähigkeit - ist oft mehr ein Problem des Identifizierens der zu zählenden Objekte als des Zählens selbst. Wenn ein Sprachmodell scheinbar falsch zählt, erkennt es unter Umständen nur die Objekte nicht, die es zählen soll.

# F: Wieviele Worte in dieser Eingabe beginnen mit einem Konsonanten? Liste sie auf und zähle sie dabei. 

A: Wörter, die mit einem Konsonanten beginnen:

1. Wieviele
2. Worte
3. dieser
4. Eingabe
5. beginnen
6. mit
7. einem
8. Konsonanten
9. Liste
10. und
11. zähle

Anzahl der Worte, die mit einem Konsonanten beginnen: $11^{14}$
Falls er sie richtig erkennt, kann ChatGPT die Objekte durchaus richtig auflisten und dabei zählen:

F: Wieviele Tiernamen enthält die folgende Liste: Eiffelturm, Koala, Schloss Neuschwanstein, Pyramiden von Gizeh, Sydney Opera House, Schildkröte, Tower Bridge, Löwe, Blauwal, Roter Panda, Tiger, Empire State Building, Pinguin, Elefant, Kolosseum, Petersdom, Freiheitsstatue, Giraffe, Schmetterling, Burj Khalifa.
A: Um die Anzahl der Tiernamen in der Liste zu bestimmen, zähle ich einfach die Einträge, die Tiere repräsentieren:

1. Koala
2. Schildkröte
3. Löwe
4. Blauwal
[^0]
[^0]:    ${ }^{14}$ Dass das Ergebnis trotzdem richtig ist, ist Zufall.

5. Boter Panda
6. Tiger
7. Pinguin
8. Elefant
9. Giraffe
10. Schmetterling

Insgesamt sind das 10 Tiernamen in der Liste.
Ohne explizite Auflistung, wenn ChatGPT die Objekte also gewissermaßen „im Kopf" zählt, schätzt der Chatbot die Zahl nur. Das liegt in seiner Natur, denn jedes nächste Wort - also auch Zahlworte - schätzt er bloß, und zwar im wahrsten Sinne des Wortes. Als Schätzer insbesondere von Zahlen sind Sprachmodelle denn auch gar nicht so schlecht, und doch ist eine Schätzung nicht, was man erwartet, wenn (exaktes) Zählen (oder Rechnen) die Aufgabe ist. Folgende Antwort ist in mehrerlei Hinsicht interessant, weil ChatGPT die Zahl 40 zunächst (falsch) schätzt, anschließend spontan die zu zählende Begriffe auflistet, den letzten Eintrag (unaufgefordert und durchaus amüsant) kommentiert und anschließend seine Schätzung korrigiert. Dies ist ein Beispiel für das mitunter erratische Verhalten von Sprachmodellen.

F: Wieviele Begriffe sind das? Tokenisierung, Embedding, Neuron, Aktivierungsfunktion, Gewichtung, Verlustfunktion, Backpropagation, Konvolution, Rekurrent, LSTM, Attention, Transformer, Generierung, Klassifikation, Regression, Transferlernen, Regularisierung, Dropout, Overfitting, Underfitting, Batch, Epoch, Gradient, Optimierung, Stoppwort, Corpus, Preprocessing, Token, Entitätsanerkennung, Part-of-Speech-Tagging, Semantik, Syntax, NLP, NLU, NLG, NLTK, Spacy, Word2Vec, GloVe, BERT, GPT
A: Es sind insgesamt 40 Begriffe:

1. Tokenisierung
2. Embedding
3. Neuron
4. Word2Vec
5. GloVe
6. BERT
7. GPT (GPT-3, um genau zu sein)

Das sind insgesamt 41 Begriffe.
Beim Rechnen und seiner einfachsten Form, dem Addieren, beeindruckt womöglich mehr, als dass sie korrekt sind, dass ChatGPT die Ergebnisse geschätzt hat - denn nichts anderes tut er auch hier -, wie gut also gewissermaßen sein Gefühl für Zahlen ist. Die beiden folgenden Ergebnisse sind korrekt, und doch hat ChatGPT dafür nicht wirklich gerechnet:

F: $1234+5678=$
A: $1234+5678=6912$

# F: $15392-367=$ 

A: $15392-367=15025$
ChatGPT operiert hier im Hintergrund weder mit vollständigen drei- bis fünfstelligen Zahlen noch mit Ziffern, sondern mit relativ willkürlichem Token unterschiedlicher Länge, namentlich 123, 4, 567, 8, 691, 2, 153, 92, 367, 150 und 25 , wie eine Überprüfung im OpenAI-Tokenizer ergibt. ${ }^{15}$

Dass sich bei komplizierteren Rechenoperationen dann doch Fehler einschleichen, überrascht dahingegen weniger:

## F: $1234 \times 5678=$

A: $1234 \times 5678=7000252$
Für diese Multiplikationsaufgabe antwortet ChatGPT jedes Mal anders, aber interessanterweise nur in der Hunderter- und Tausenderstelle, die anderen Stellen generiert er verlässlich richtig. Die Hunderter- und Tausenderstelle hingegen nehmen alle Werte von 0 bis 9 an, und die richtigen Werte (jeweils 6) nicht häufiger als die anderen. Über die genauen Gründe dafür könnten wir hier nur spekulieren - wir vermuten, dass es mit der Tokenisierung (siehe oben) zu tun hat -, auffallend ist aber, dass das Ergebnis im ganz Großen und im ganz Kleinen richtig ist, nur im Mittelfeld nicht, wie zum Beispiel auch bei der Aufgabe $9876 \times 5432(=53646432)$, für die ChatGPT konsequent fast richtige Ergebnisse wie 53686832, 53666832, 53674832, 53671232, etc. liefert. ${ }^{16}$

Bei einer für mathematisches, aber auch sonst für das Denken unerlässlichen Fähigkeit unterlaufen Sprachmodellen nach wie vor häufig und noch dazu eklatante Fehler: beim logischen Schließen. Logisches Schließen ist wesentliche Voraussetzung für das Lösen von Problemen und insbesondere für das Beweisen von mathematischen Sätzen. Fehler beim logischen Schließen sind es, die Sprachmodelle einerseits als Werkzeuge ungeeignet machen, auf die man sich verlassen können muss, und die andererseits manche Beobachter auf tiefgreifende Weise und grundsätzlich daran zweifeln lassen, dass Sprachmodelle wirklich „denken" können, und dass das, was wie ein richtiger logischer Schluss aussieht, tatsächlich ein logischer Schluss (und damit Denkschritt) ist - oder nicht bloß etwas, was nur so aussieht. Das ist das große und immer wieder auftretende Dilemma, in dem man sich bei der Bewertung von Sprachmodellen befindet. Ein Beispiel mag dafür genügen, wobei allerdings einmal mehr nicht ganz klar ist, worin der Fehler eigentlich besteht: im logischen Schluss selbst oder in diesem Falle im falschen Verständnis der (doppelten) Negation:

## F: Kein Mensch ist unsterblich. Eine Katze ist kein Mensch. Was folgt daraus?

[^0]
[^0]:    ${ }^{15}$ Siehe https://platform.openai.com/tokenizer
    ${ }^{16}$ All diese Ergebnisse setzen sich aus genau drei Token zusammen: 536 am Anfang, 32 am Ende und 868, 668, 748, 712 in der Mitte.

A: Aus den gegebenen Aussagen folgt logisch, dass eine Katze nicht unsterblich ist. Da die Unsterblichkeit in der ersten Aussage allen Menschen abgesprochen wird und die Katze laut der zweiten Aussage nicht zu dieser Gruppe gehört, kann aus diesen Informationen nicht direkt auf die Unsterblichkeit oder Sterblichkeit der Katze geschlossen werden. Allerdings impliziert die Logik der Aussagen nicht direkt etwas über die Unsterblichkeit von Katzen, da sie nur über Menschen spricht.

Ganz abgesehen davon, dass die unmittelbar gegebene Antwort falsch ist - aus den gegebenen Aussagen folgt logisch nicht, dass Katzen nicht unsterblich, also sterblich sind -, ist die nachgeschobene Begründung recht verworren und widersprüchlich. (Wir hatten übrigens insgeheim gehofft, ChatGPT könnte den Fehler begehen, zu folgern, dass Katzen unsterblich seien - weil aus „X ist unsterblich" und „Eine Katze ist X" folgt, dass eine Katze unsterblich ist -, aber den Gefallen hat ChatGPT uns nicht getan, so „schlau" war er dann doch.)

Doch wofür braucht man überhaupt Sprachmodelle mit mathematischen Fähigkeiten, außer, um sie zu testen und zu erforschen? Schließlich gibt es Taschenrechner und leistungsfähige Computeralgebrasysteme, die weit mehr können als nur rechnen, zum Beispiel komplexe Differential- und Integrallyleichungssysteme symbolisch lösen. Warum benutzt man diese nicht direkt? Nun, Zählen, Rechnen, aber mehr noch logisches Schließen und mathematisches Problemlösen - alles Dinge, die einem Taschenrechner ohnehin nicht abnehmen - sind Grundvoraussetzungen dafür, Sprachmodelle auch alle möglichen anderen Probleme lösen zu lassen. Wenn sie an mathematischen Problemen scheitern, so werden sie auch an anderen Problemen scheitern, zumindest an solchen, in denen es um Logik und Exaktheit geht. Mathematische Probleme sind dabei gut quantifizierbar und die Lösungsqualität messbar, weswegen Sprachmodelle in vielen mathematischen Test-Benchmarks auf die Probe gestellt werden. Solche Benchmarks enthalten viele tausend Aufgaben - meist in Textform -, die von einfachen Dreisatzaufgaben bis zu komplizierten Problemen reichen, an denen sich auf Internationalen MathematikOlympiaden die besten Schüler der Welt die Zähne ausbeißen. Ein solcher Test ist das MATH Dataset, bei dem der beste Mensch (also ein wirklich sehr guter Schüler) mit einem Score von $90 \%$ abgeschnitten hat, ein durchschnittlicher Doktorand der Computerwissenschaften ohne spezielle Vorliebe für Mathematik hingegen nur mit einem Score von $40 \%$. Gemessen daran bewegten sich große Sprachmodelle wie GPT seit ca. Mitte 2022 etwas oberhalb von $50 \%$, bis im Herbst letzten Jahres GPT-4 plötzlich einen „Quantensprung" auf über $80 \%$ machte.

Der Grund für diesen abrupten Leistungsanstieg ist allerdings nicht in GPT-4 selbst zu finden: Ohne äußere Hilfsmittel (wie etwa das mächtige Mathematikwerkzeug Mathematica), eine interne Programmierumgebung, aber auch spezielle Nutzungsweisen wie der Mehrheitsabstimmung über die Ergebnisse mehrerer Sprachmodellinstanzen, würde selbst GPT-4 auf einem Niveau zwischen $50 \%$ und $60 \%$ verbleiben. Ein Plateau scheint damit erreicht, weit unterhalb von $100 \%$ aller gestellten Aufgaben - und dabei geht es „nur"

![img-18.jpeg](img-18.jpeg)

Abb. 3.9 Ein vermeintlicher „Quantensprung" in den Mathematik-Fähigkeiten von GPT4 ist bei gemmerem Hinsehen auf die Verwendung von Hilfsmitteln (,w/ code", also ,,mit Code") zurückzuführen. (Quelle: [32], mit freundlicher Genehmigung)
um Schulmathematik (wenn auch teils sehr anspruchsvolle). So viel zu den intrinsischen Rechenfähigkeiten der besten Sprachmodelle zur Zeit. ${ }^{17}$

Doch Text- und Rechenaufgaben sind nicht alles, selbst wenn sie bereits kreative Problemlösungsfähigkeiten erfordern, weil Auswahl, Reihenfolge und Kombination der Rechen- und Lösungsschritte nicht immer eindeutig vorgegeben sind. Auch das Beweisen von mathematischen Sätzen bedarf in diesem Sinne der Kreativität. (Übrigens ist jede mathematische Rechnung genaugenommen als Beweis eines mathematischen Satzes zu betrachten.) Mathematik ist kurzum mehr als Rechnen und Beweisen oder zusammenfassend: das Lösen von mathematischen Problemen. Das, was dafür gebraucht wird, und worüber auch Sprachmodelle in gewissen, wenn auch eingeschränktem Sinne verfügen, sind wie gesagt Kreativität und damit verbunden so etwas wie Intuition. Intuition und Kreativität sind Fähigkeiten von Sprachmodellen, die nicht zu wörtlich genommen werden dürfen, doch wenn man sie auffasst als die Fähigkeit, überraschende und nicht ganz naheliegende Zusammenhänge und Analogien herzustellen, was als ein „untergründiges Verstehen" gedeutet werden könnte, so scheinen Sprachmodelle darüber zu verfügen. Auf jeden Fall sind Intuition und Kreativität - als Formen auch der mathematischen Intelligenz - nötig für zwei mathematische Tätigkeiten, die einem nicht spontan in den Sinn kommen, aber gerade von praktizierenden Mathematikern für essenziell gehalten werden: das Definieren neuer Begriffe und Konzepte - nur dadurch kam die Mathematik jemals voran - und das Aufstellen von Vermutungen oder Hypothesen (die der Vermutende selbst oder andere Mathematiker dann beweisen müssen). Definieren und Vermuten lassen sich auch auf eine dritte Fähigkeit zurückführen: das Verallgemeinern und Abstrahieren. Von dieser Fähigkeit ist unmittelbar klar, dass Sprachmodelle über sie verfügen, wohl unmittelbarer als im Falle von Intuition und Kreativität. Denn zu verallgemeinern liegt im Wesen aller anhand von Beispielen trainierter künstlichen Intelligenz und ist gewissermaßen ihr Daseinszweck. Dass ChatGPT insbesondere in einem mathematischen Kontext in der Lage ist, zu

[^0]
[^0]:    ${ }^{17} \mathrm{Zu}$ Fortschritten anderer KI-Formen im Bereich der Mathematik siehe [33].

verallgemeinern und zu abstrahieren, d.h. das Gemeinsame in zwei Beispielen zu erkennen und dieses sogar zu benennen, zeigt das folgende Beispiel. (Aus vielen formalen Analogiebeispielen, mit denen ChatGPT trainiert wurde einfach weil sie im Internet kursieren -, kennt er die Schreibweise „a:b :: c:d" für „a verhält sich zu b wie c zu d".)

# F: Wie würdest du diese Analogie zwischen zwei Analogien beschrei- 

ben?
$1: 2: 2: 4$ verhält sich $\mathbf{z u} p: q \odot k p: k q$ wie sich $x^{2}+2 x+1: 0:: x:-1 \mathbf{z u}$ $a x^{2}+b x+c: 0:: x:\left(-b \pm \sqrt{b^{2}-4 a c}\right) / 2 a$ verhält.
A: Die Analogie, die du präsentiert hast, ist eine komplexe, die mehrere Ebenen von Beziehungen beinhaltet. Hier ist, wie du sie beschreiben könntest:

1. Der erste Teil der Analogie, $1: 2: 2: 4$, ist eine einfache proportionale Beziehung. Sie stellt ein Verhältnis dar, bei dem der zweite Term doppelt so groß ist wie der erste und der vierte Term doppelt so groß wie der dritte.
2. Der zweite Teil, $p: q \odot k p: k q$, verallgemeinert den ersten Teil, indem er dieselbe proportionale Beziehung zeigt, aber mit willkürlichen Konstanten $p$ und $q$ und einem Skalierungsfaktor $k$.
3. Der dritte Teil, $x^{2}+2 x+1: 0:: x:-1$, führt eine quadratische Gleichung und ihre Lösung ein. Die Gleichung $x^{2}+2 x+1=0$ hat die Lösung $x=-1$.
4. Der vierte Teil, $a x^{2}+b x+c: 0:: x:\left(-b \pm \sqrt{b^{2}-4 a c}\right) / 2 a$, verallgemeinert den dritten Teil, indem er eine allgemeine quadratische Gleichung und ihre Lösungen mithilfe der quadratischen Formel zeigt.
Die Analogie bewegt sich also von einem spezifischen Beispiel zu einer allgemeinen Form, zunächst im Kontext einfacher Verhältnisse und dann im Kontext quadratischer Gleichungen. Du könntest dies als eine Analogie der Analogien bezeichnen, bei der die Struktur der Analogie selbst auf zwei verschiedenen Abstraktionsebenen gespiegelt wird. In formelleren Begriffen könnte dies als eine Meta-Analogie beschrieben werden, die die Beziehung zwischen spezifischen und allgemeinen Formen sowohl in arithmetischen Verhältnissen als auch in algebraischen Gleichungen untersucht.
F: Wenn du dieser Analogie einen Namen geben würdest, welchen würdest du wählen?
A: Die Benennung einer Meta-Analogie wie dieser kann eine kreative und subjektive Aufgabe sein, da es davon abhängt, welche Aspekte der Analogie du hervorheben möchtest. Hier sind einige Vorschläge, von denen jeder einen anderen Aspekt der Analogie betont:
[...]
5. Die Analogie der Verallgemeinerung: Dieser Name hebt den Übergang von spezifischen Beispielen zu allgemeinen Formen hervor, was ein Schlüsselmerkmal der Analogie ist. [...]

gemeinsam haben. Auch das setzt Intuition und Kreativität voraus, denn was es ist, liegt meist nicht auf der Hand.

Bis menschliche Mathematiker ein interessantes neues Konzept entwickelt und schließlich präzise definiert haben, vergehen oft Jahre und Jahrzehnte, ja mitunter Jahrhunderte. Wir nennen hier als Beispiele nur die Konzepte des Vektorraums, der Gruppe, der Menge und der Kategorie. Definiert werden grundlegende Konzepte in der Mathematik meist durch ein Axiomensystem, und jede weitere Definition ist nurmehr ein weiteres Axiom. Nicht alle mathematischen Begriffe und Konzepte müssen von solch epochaler Bedeutung sein wie diese Beispiele (und ganze Theorien begründen), aber etwas auf den Punkt bringen und mathematisch nutzbar machen, tun vermutlich die meisten. Zehn- und hundertausende mathematische Begriffe und Konzepte sind so im Laufe der Jahrhunderte definiert worden, bis heute immer von Menschen.

# F: Ist es unplausibel anzunehmen, dass im Laufe der Jahrhunderte mehrere hunderttausend mathematische Begriffe und Konzepte definiert wurden? 

A: Die Annahme, dass im Laufe der Jahrhunderte mehrere hunderttausend mathematische Begriffe und Konzepte definiert wurden, ist nicht unplausibel. [...] $]^{18}$

Noch ist allerdings keine KI-generierte, insbesondere keine Sprachmodellgenerierte nützliche und interessante Definition eines neuen mathematischen Konzepts bekannt, noch nicht einmal eine Neudefinition eines bekannten Konzepts, was allerdings schwierig sein dürfte, weil alle bekannten Konzepte einem großen Sprachmodell nun einmal - bekannt sind und es sie schlecht vergessen und neu erfinden kann.

Keine Mathematik-Test-Benchmark deckt wirklich hohe Mathematik auf Expertenniveau ab, und niemand prüft systematisch die Qualität von Definitionen und Hypothesen oder analysiert gehaltvolle längere Gespräche über anspruchsvolle mathematische Themen mit einem Chatbot, die ja ebenfalls als Beweis für mathematisches Wissen und Verständnis gelten könnten. Was Beweise betrifft: Wenn es KI-Systeme gibt, die hier heute schon Erfolge zeitigen, dann sind es keine, die auf Sprachmodellen beruhen. Der Weg dahin ist noch gewiss sehr weit, und ob Sprachmodelle ihn je zurückgelegt haben werden, ist offen, bzw. unwahrscheinlich, dass sie ihn allein zurückgelegt haben werden. Der angesehene Mathematiker Terence Tao - der im Alter von 10 Jahren eine Bronze- und mit 12 eine Goldmedaille bei der Internationale Mathematik-Olympiade gewann - hält es nicht für ausgeschlossen, dass

[^0]
[^0]:    ${ }^{18}$ Dass die Zahl jemals definierter mathematischer Begriffe und Konzepte tatsächlich in die Hunderttausende, wenn nicht Millionen geht, kann man back of the envelope so überschlagen: Die größte Datenbank mathematischer Texte, abMATH (früher Zentralblatt für Mathematik), enthält ca. 5 Millionen Einträge. Wenn man annimmt, dass jeder fünfte eine neue Definition enthält, kommt man auf eine Millionen Definitionen. Wenn man außerdem annimmt, dass nur jede schute davon mehr als einmal verwendet wurde, gelangt man zur Größenordnung von 100.000. Fragt man ChatGPT, ob es mehrere Millionen mathematische Definitionen gibt, antwortet er, dass das unplausibel sei.

in einer (unbestimmten) Zukunft Sprachmodelle Koautoren von mathematischen Papern sein werden. Tao sagt aber auch sehr dezidiert, dass heutige KI und insbesondere Sprachmodelle nicht in der Lage seien, mehr als einfache Hausaufgaben zu lösen.

Right now, AI tools are not at the level where they can generate proofs to really advanced mathematical problems. Maybe undergraduate-level homework assignments, they can kind of manage, but research mathematics, they're not at that level yet. But at some point, we're going to start seeing AI-assisted papers come out and there will be a debate. [34]

Zurück auf den Boden der Tatsachen. Bemerkenswert und nicht zu unterschätzen ist die Fähigkeit von Sprachmodellen, Textaufgaben zu verstehen und in eine formale Rechenaufgabe zu übersetzen, die man an einen „Taschenrechner" wie Mathematica übergeben oder für die man ad hoc ein Computerprogramm schreiben kann, das die Aufgabe löst - was manche Sprachmodelle, allen voran ChatGPT, mittlerweile selbst können. So zum Beispiel zählt ChatGPT die Buchstaben einer Eingabe: durch Aufruf der Funktion 1en, die die Buchstaben in einer Zeichenkette zählt, was ChatGPT wiederum aus seinen Trainingsdaten gelernt hat, zu denen auch Dokumentationen der Programmiersprache Python gehören.

# F: Zähle die Buchstaben in dieser Eingabe. 

A: Die Eingabe enthält 39 Buchstaben.
![img-19.jpeg](img-19.jpeg)

Allein dafür - als Übersetzer zwischen in natürlicher Sprache formulierten Textaufgaben und Computerprogrammen, deren formale Ein- und Ausgabesprache ein menschlicher Benutzer nicht mehr beherrschen muss - können Sprachmodelle wertvolle Dienste leisten. Das Umgekehrte - eine formale Rechenaufgabe in eine Textaufgabe zu übersetzen - beherrschen Sprachmodelle natürlich auch. Daher kann man Sprachmodelle theoretisch dafür einsetzen, maßgeschneiderte mathematische Textaufgaben zu erstellen, die auf das mathematische Kompetenzniveau einzelner Schüler abgestimmt sind. So zumindest geht ein Narrativ, das den Einsatz von Sprachmodellen in der Schule beschreibt. Dafür müsste ein Sprachmodell dann auch die Antworten des Schülers richtig bewerten und kommentieren können. Auch zu Letzterem scheinen Sprachmodelle ganz gut in der Lage zu sein. Bis zu welchem Grad allerdings dieser Ansatz etwa im Rahmen der Binnendifferenzierung an Schulen funktionieren würde - insbesondere im Fach Mathematik -, muss noch

untersucht werden. Und bis zu welchem Grad das überhaupt wünschenswert ist, darüber wird noch diskutiert.

# 3.10 Wie werden Sprachmodelle getestet? 

Für die Entwicklung und Weiterentwicklung von Sprachmodellen spielen systematische Tests ihrer Fähigkeiten - wie bei jeder Art von künstlicher Intelligenz - eine wichtige Rolle. Weil ihre Fähigkeiten sich nicht aus einer Analyse ihrer Architektur und synaptischen Gewichte ableiten und vorhersagen lassen, weder allgemein noch quantitativ, müssen sorgsam konzipierte Tests Auskunft darüber geben, welche Aufgaben sie wie gut lösen können, welche Fortschritte sie dabei machen, und wie verschiedene Sprachmodelle im Vergleich miteinander abschneiden. Zwar wird seitens der Forscher und Entwickler durchaus versucht, auch theoretisch mitzuhalten und bestimmte Leistungssprünge nachzuvollziehen, vorherzusagen oder gar herbeizuzaubern, doch steht bei allen Tests die operationalisierbare und quantitative Messung von Fähigkeiten an einer Blackbox im Vordergrund, und nicht so sehr die inner workings.

Sowohl der Entwurf als auch die Auswertung solcher Tests stellt große Herausforderungen dar, vor allem in Zeiten immer schneller sich weiter entwickelnder KI. Tests, die noch vor Kurzem nur von den besten Sprachmodellen bewältigt wurden, sind heute schon trivial und müssen durch anspruchsvollere Tests ersetzt werden. Diese aber müssen entwickelt werden, konzeptionell und technisch. „We are running out of tests" war zuletzt zu hören.

## F: „We are running out of tests." Was bedeutet das im Hinblick auf Sprachmodelle?

A: „Wir haben keine Tests mehr" im Kontext von Sprachmodellen bezicht sich auf die Situation, in der die verfügbaren Benchmarks oder Evaluierungstests für die Leistung von Sprachmodellen nicht mehr ausreichend sind, um deren fortschrittliche Fähigkeiten angemessen zu bewerten. Hier sind einige Schlüsselpunkte zu diesem Thema:

1. Sättigung der Benchmark-Leistung: Moderne Sprachmodelle wie GPT4 erreichen oder übertreffen menschliche Leistung in vielen standardisierten Benchmarks. Dies wirft die Frage auf, ob diese Tests noch nützlich sind, um zwischen hochentwickelten Modellen zu differenzieren.
2. Bedarf an komplexeren Bewertungsmethoden: Wenn Modelle die bestehenden Tests meistern, besteht die Notwendigkeit, komplexere und anspruchsvollere Evaluierungsmethoden zu entwickeln, die besser die Nuancen menschlicher Sprache und Intelligenz erfassen.
3. Generalisierungsfähigkeit: Die Aussage kann auch darauf hinweisen, dass es schwierig ist, Tests zu entwickeln, die wirklich die Fähigkeit eines Modells zur Generalisierung messen, d.h. seine Leistung in unbekannten oder unvorhergesehenen Kontexten.

4. Ethik und Vertrauenswürdigkeit: Darüber hinaus könnten neue Tests erforderlich sein, um ethische Aspekte, Fairness, Verzerrung und die Vertrauenswürdigkeit von Modellantworten besser zu bewerten.
5. Anpassung von Tests an den Fortschritt: Schließlich deutet die Aussage darauf hin, dass die Entwicklung von Sprachmodellen möglicherweise schneller voranschreitet als die Entwicklung von Methoden zu ihrer Bewertung, was eine ständige Innovation im Bereich der Evaluierungsmethoden erfordert.

Abgefragt wird in Tests zum einen Wissen (oft in Form von standardisierten Aufnahme- und Abschlussprüfungen für Schulen und Hochschulen, meist im englischsprachigen Raum), zum anderen Sprach- und Textverständnis. Und natürlich Problemlösungsfähigkeiten, von logischen Rätseln bis zu Mathematikaufgaben verschiedensten Schwierigkeitsgrades.

# F: Was sind die wichtigsten Benchmarks für Sprachmodelle? 

A: Die wichtigsten Benchmarks für Sprachmodelle umfassen eine Vielzahl von Tests, die darauf abzielen, die Fähigkeiten der Modelle in verschiedenen Aspekten der Sprachverarbeitung zu bewerten. Zu den wichtigsten Benchmarks gehören:

1. GLUE (General Language Understanding Evaluation): Ein Sammlung von neun verschiedenen Aufgaben, die darauf ausgelegt sind, das Verständnis der natürlichen Sprache zu testen. Diese Aufgaben umfassen Satzähnlichkeit, Satzbeziehung (entailment), Frage-Antwort-Systeme und mehr.
2. SuperGLUE: Eine erweiterte und anspruchsvollere Version von GLUE, die darauf abzielt, fortgeschrittenere Verständnisaufgaben und anspruchsvollere Benchmarks zu bieten.
3. SQuAD (Stanford Question Answering Dataset): Ein Benchmark für Frage-Antwort-Systeme, bei dem das Modell Fragen beantworten muss, die auf Absätzen aus Wikipedia-Artikeln basieren.
4. Commonsense Reasoning Benchmarks: Dazu gehören Datensätze wie SWAG und CommonsenseQA, die darauf abzielen, das Verständnis von Alltagswissen und -logik zu testen.
5. Winograd Schema Challenge: Ein Test für das Verständnis von PronomenAuflösung, der auf Sätzen basiert, in denen ein kleiner Wortwechsel die Bedeutung des Pronomens ändert.
6. BLEU (Bilingual Evaluation Understudy): Dies ist einer der bekanntesten und am weitesten verbreiteten Benchmarks für die Bewertung der Qualität von maschinell übersetzten Texten.
7. ROUGE (Recall-Oriented Understudy for Gisting Evaluation): Dieser Benchmark wird häufig zur Bewertung von Zusammenfassungen verwendet. ROUGE misst, wie viele Wortgruppen (z.B. N-Gramme, Wortfolgen oder Wortpaare) in einer automatisch generierten Zusammenfassung mit einer Referenzzusammenfassung übereinstimmen.

In all diesen Tests - die nicht speziell für moderne Sprachmodelle, sondern schon seit längerem auch für andere KI-Systeme entwickelt wurden - schneiden insbesondere große Sprachmodelle meist sehr gut ab. Bei jedem Test ist dabei darauf zu achten und muss angegeben werden, was ein Score von

z.B. $0 \%, 50 \%$ oder $100 \%$ bedeutet. Manchmal bedeutet ein bestimmter Score, etwa $50 \%$, „nicht besser als Zufall" und ist damit eigentlich nichts wert. In einem anderen Test bedeutet $100 \%$ zum Beispiel „so gut wie das aktuell beste Computerprogramm oder die aktuell beste KI" (SOTA $=$ state of the art), ein anderes Mal „so gut wie ein durchschnittlicher Abiturient", und wieder ein anderes Mal „so gut wie ein Experte" oder „so gut wie ein Muttersprachler". In diesen Fällen ist ein Score von $50 \%$ dann unter Umständen schon beachtlich. Ein Score allein, ohne Erläuterung und Referenz, bedeutet also nichts. Hinzukommt, dass die Testergebnisse auch empfindlich davon abhängen, wie genau die Fragen eines Tests gestellt werden. Durch geschickteres und ungeschickteres Prompting kann man die Qualität von Antworten massiv beeinflussen. Dem muss in allen Tests und ihrer Auswertung Rechnung getragen werden. Gravierender noch können die Unterschiede im Testergebnis sein, wenn ein Sprachmodell Hilfsmittel verwenden darf. Wir verweisen hier noch einmal auf die Leistungskurve auf Seite 130, der man entnehmen kann, wie sich Prompting und Hilfsmittelverwendung auf einen Score - hier für die Rechenfähigkeiten - auswirken können.

Die zurzeit spannendsten und vielfältigsten Benchmarks für Sprachmodelle heißen BIG-Bench (BIG = beyond the imitation game, siehe [35], nach dem Namen, den Turing dem später nach ihm benannten Test gegeben hat) und GAIA (GAIA = general AI assistants, siehe [20]). BIG-Bench zeichnet sich durch seine bunte Vielfalt an Tests aus - von ASCII-Kunst bis Zen-Wissen -, wohingegen GAIA als Benchmark für allgemeine KI-Assistenten konzipiert wurde, also schon in die Zukunft allgemeiner künstlicher bzw. künstlicher allgemeiner Intelligenz blickt.

# F: Erläutere die Designprinzipien der GAIA-Benchmark. 

A: Die GAIA-Benchmark wurde entwickelt, um die Fähigkeiten von KIAssistenten, insbesondere solchen, die auf großen Sprachmodellen basieren, zu testen. Diese Benchmark besteht aus einer Serie von Fragen, die darauf abzielen, die Intelligenz und Fähigkeit der KI-Systeme sowohl im Vergleich untereinander als auch im Vergleich zu menschlichen Fähigkeiten zu messen. Die Fragen sind so konzipiert, dass sie für Menschen einfach zu beantworten sind, jedoch für Computer als herausfordernd gelten. Sie können mehrere Schritte der Verarbeitung oder „des Denkens" erfordern und sind in realen Kontexten verankert, was die Komplexität erhöht.
Die GAIA-Benchmark besteht aus 466 Fragen und Antworten, die darauf abzielen, die Kompetenz von KI-Modellen in Bereichen wie Argumentation, Multimodalität und Nutzung von Hilfswerkzeugen zu bewerten. Diese Fragen sind in einem realistischen Umfeld angesiedelt, was eine präzise und umsetzbare Bewertung ermöglicht. Die Leistung von fortschrittlichen Modellen wie GPT 4 in der GAIA-Benchmark ist relativ gering, was die Begrenzungen dieser Modelle bei komplexen realweltlichen Aufgaben offenbart.
Zusammengefasst bietet die GAIA-Benchmark eine detaillierte und herausfordernde Überprüfung der Fähigkeiten von KI-Assistenten, die über die reine Sprachverarbeitung hinausgehen und Aspekte der realen Anwendung und des menschlichen Denkens einbeziehen. Die Benchmark setzt neue Maßstäbe in der Evaluation von KI-Systemen, indem sie zeigt, dass

selbst die fortschrittlichsten Modelle noch weit davon entfernt sind, menschenähnliche Fähigkeiten in einer breiten Palette von realen Aufgaben zu demonstrieren.

Auf die Frage, ob er ein konkretes Beispiel für eine Testaufgabe liefern könne, antwortet ChatGPT verneinend:

# F: Nenne einige konkrete Testaufgaben aus der GAIA-Benchmark. 

A: Die GAIA-Benchmark umfasst eine Vielzahl von Aufgaben, die darauf abzielen, die Fähigkeiten von KI-Assistenten in verschiedenen realweltlichen Kontexten zu testen. Während spezifische Fragen aus der Benchmark in den von mir eingesehenen Quellen nicht detailliert beschrieben wurden, kann man dennoch einige Typen von Aufgaben ableiten, die in einer solchen Benchmark enthalten sein könnten: [...]

Das hat damit zu tun, dass es sehr wichtig ist, dass die Tests, mit denen Sprachmodelle geprüft werden, nicht selbst in den Trainingsdaten der Sprachmodelle vorkommen. Darauf wird in der Tat penibel geachtet, was keine einfache Aufgabe ist: in Milliarden von Internet-Texten diejenigen herauszufischen, die sich auf einschlägige Tests beziehen, sie beschreiben und ggf. Lösungen enthalten. Denn man muss vermeiden, dass ein Sprachmodell eine Lösung irgendwo gelesen und auswendig gelernt hat. Dafür genügt einmaliges Lesen zwar nicht, aber zum einen kommen auch solche Texte unter Umständen mehrfach im Internet vor, und zum anderen genügt auch eine leichte synaptische Gewichtsverlagerung, um ein Testergebnis zu verfälschen.

# Kapitel 4 <br> Wie funktionieren Sprachmodelle? 

### 4.1 Woraus bestehen Texte (aus Sicht eines Sprachmodells)?

Was Sprachmodelle verstehen und generieren, kann man aus zwei Perspektiven betrachten. Einerseits verstehen und generieren sie Texte (die grammatikalisch korrekt und inhaltlich plausibel und kohärent sind), und andererseits verstehen und generieren sie Worte, aus denen die Texte am Ende aufgebaut sind. Dabei ist das Ganze (der Text) natürlich mehr als die Summe seiner Teile (der Worte). Konzeptionell stehen zwischen Texten und Worten die Sätze, deren syntaktische Struktur ihre Bedeutung mitbestimmt - über die Bedeutung der Worte hinaus, aus denen sie bestehen -, und deren wechselseitige Beziehungen auf der anderen Seite die Bedeutung des Textes mitbestimmen. So wie nämlich Sätze keine bloße Aneinanderreihung von Worten sind, sind Texte keine bloße Aneinanderreihung von Sätzen. Konzeptionell zwischen Sätzen und Worten angesiedelt sind Relativsätze und Phrasen (z.B. Nominal- und Verbalphrasen), aus denen einerseits Sätze und die ihrerseits aus Worten aufgebaut sind.

Einfach wäre es, wenn man Sprachmodelle tatsächlich auf der allen anderen zugrundeliegenden Ebene von Worten verstehen könnte, die sie ja tatsächlich eines nach dem anderen erzeugen, so dass nach und nach erst Phrasen, Relativsätze, ganze Sätze und schließlich ein Text entsteht. Und die sie, wenn ihnen ein Text präsentiert wird, eins nach dem anderen einlesen und dabei Phrasen, Relativsätze, ganze Sätze und schließlich den gesamten Text und seine Bedeutung rekonstruieren, die dann natürlich immer noch auf der Bedeutung der ursprünglichen Worte beruht, wenn auch nicht vollständig.

Doch sobald man beginnt, die Funktionsweise von Sprachmodellen genauer beschreiben (und verstehen) zu wollen, gerät man schnell in Schwierigkeiten, wenn man von Worten als kleinsten Bestandteilen von Texten ausgeht, mit denen ein Sprachmodell operiert. Denn wenn Worte gewissermaßen die Atome eines Sprachmodells wären, so müsste es über einen immensen Wortschatz

verfügen, aus dem es sich zum Beispiel bei der Ausgabe eines nächsten Wortes bedient. Allein der Dudenkorpus kennt z.B. über 13 Millionen deutsche Worte, und zwar nur Grundformen. Nicht ganz so viele, aber ähnlich viele deutsche Worte mögen im Trainingskorpus eines großen Sprachmodells enthalten sein, wenn es gezielt auch auf deutschen Texten trainiert wurde. Diese Worte würde es vielleicht nicht aktiv verwenden, aber doch nicht als „umbekannt" verwerfen, wenn sie ihm vorgesetzt würden. Gleichzeitig erahnen Sprachmodell sogar, was mit einem erfundenen Wort gemeint sein könnte, das sie sicher nicht in ihren Trainingsdaten gefunden haben (und verwenden es dann sogar in einer Antwort, können es also auch ausgeben):

# F: Was ist ein Sprachmodellverstehensversuch? 

A: Ein „Sprachmodellverstehensversuch" ist kein gängiges Wort. Es könnte sich jedoch um einen Versuch handeln, die Fähigkeiten eines Sprachmodells, wie etwa eines KI-gesteuerten Textgenerators, zu testen oder zu bewerten.

ChatGPT kann Neologismen auch selbst generieren:

## F: Generiere und erkläre einen Neologismus im Stile Thomas Bernhards.

A: „Gesellschaftsmüdigkeit" spiegelt die Widerständigkeit gegenüber dem, was als die „Normalität" betrachtet wird, und die Sehnsucht nach einer tieferen, authentischeren Existenz wider. Es ist ein Ausdruck der Frustration und des Desinteresses gegenüber den oberflächlichen Aspekten des modernen Lebens, die Thomas Bernhard in seinen Werken oft suprangerte.
$\square$
Konie Ergebnisse für »gesellschaftsmüdigkeit gefunden
Abb. 4.1 Das Wort „Gesellschaftsmüdigkeit" kennt ChatGPT nicht aus dem Internet. Es handelt sich um einen echten Neologismus.

Worte können also nicht die Grundlage und kleinsten Bestandteile der Sprache sein, schlichtweg weil es zu viele und aufgrund der Möglichkeit von Wortneubildungen genaugenommen unendlich viele gibt. Es ist aber unmittelbar klar, wie Sprachmodelle dieses „Problem der zu vielen Worte" lösen: Sie operieren nicht mit Worten selbst, sondern mit kleineren Bausteinen. Man nennt diese Bausteine „Token" und ein Sprachmodell wie ChatGPT verwendet ca. 100.000 von ihnen. Allerdings sind diese Token recht bunt zusammengewürfelt: viele von ihnen sind kurze sinnlose Buchstabenfolgen wie „dra" oder „ett", manche bestehen nur aus einem Buchstaben und wiederum andere können echte Worte sein, sogar längere wie „kennenlernen" oder „Deutschland", die im Vokabular von ChatGPT zu finden sind. (Auf

das spezielle Token-Vokabular von ChatGPT werden wir unten noch einmal zurückkommen, denn es liefert aufgrund seiner statistisch motivierten Zusammensetzung interessante Einblicke in den Trainingskorpus von ChatGPT.)

Um die prinzipielle Funktionsweise von Sprachmodellen zu verstehen, ist es aber hilfreicher, sich anstatt eines bunt gemischten und teils sinnlosen Token-Sammelsuriums eine wohldefinierte Liste von echten Morphemen vorzustellen. Als Morpheme bezeichnet man die kleinsten bedeutungstragenden Einheiten einer Sprache. Morpheme werden in flektierenden Sprachen verwendet, um Worte zu beugen, aber auch, um als Affixe Bedeutungsvarianten einer Grundform zu bilden wie beim „ver-stehen", „be-stehen" oder „ent-stehen". Man unterscheidet zwischen lexikalischen Morphemen (Lexemen), die eine „echte" Bedeutung haben und die die Stämme oder Wurzeln von Worten bilden (z.B. „Sprach-") und grammatischen oder Funktionsmorphemen, die man wiederum in Flexionsmorpheme (z.B. „-en") und Wortbildungsmorpheme unterteilt (z.B. „-lich"). Entscheidend ist: Aus Morphemen lassen sich wie aus Token - alle Worte einer Sprache zusammensetzen. Das gehorcht morphologischen Regeln, die den Syntaxregeln, nach denen Wörter zu Phrasen und Sätzen zusammengesetzt werden, vorangeschaltet sind, mit ihnen aber Hand in Hand gehen. ${ }^{1}$ Im Deutschen genügen größenordnungsmäßig 10.000 Morpheme, um zum Beispiel die meisten der mehr als 13 Millionen Worte im Dudenkorpus zusammenzusetzen.

Folgenden hypothetischen Fall kann man sich also vorstellen: einen Trainingskorpus und Eingabetexte, die ausschließlich aus deutschen Worten bestehen, die allesamt korrekt geschrieben sind, und die sich allesamt aus diesen ca. 10.000 Morphemen zusammensetzen lassen. Wie zum Beispiel das Wort „Rindfleischetikettierungsüberwachungsaufgabenübertragungsgesetz".
![img-20.jpeg](img-20.jpeg)

Abb. 4.2 Das Wort „Rindfleischetikettierungsüberwachungsaufgabenübertragungsgesetz" besteht aus 19 Morphemen.

Ein rein deutschsprachiges Sprachmodell, das auf diesen 10.000 Morphemen operieren würde, würde tatsächlich funktionieren, ließe sich trainieren und könnte Rede und Antwort stehen (vorausgesetzt, die Texte enthielten keine fremdsprachigen Worte und keine Rechtschreibfehler). Mit 100.000

[^0]
[^0]:    ${ }^{1}$ Eine schöne Einführung in die Morphologie voller aufschlussreicher Beispiele bietet [36].

Morphemen aus mehreren verschiedenen Sprachen käme man entsprechend weiter. Tippfehler in Nutzereingaben würden aber immer noch ein Problem darstellen, das echte Sprachmodelle aber durch ihr ausgeklügelteres TokenVokabular zu bewältigen wissen, in dem echte Morpheme am Ende allerdings nur noch eine untergeordnete Rolle spielen. Dazu gleich mehr.

Um es an dieser Stelle schon einmal zusammenzufassen, operiert ein (idealisiertes) Sprachmodell mit seinem Vokabular aus Morphemen so: Beim Einlesen wird ein Text - als Zeichenkette oder als Wortfolge betrachtet - in eine Folge von Morphemen zerlegt, die angenommenermaßen alle im Vokabular enthalten sind. Auch wenn jedes Morphem zwar eine Buchstabenfolge ist, so zählt für das Sprachmodell letztlich nur seine laufende Nummer im Vokabular. So gesehen wird jeder Text technisch gesehen als allererstes in eine Folge von Zahlen zwischen 1 und 100.000 transformiert. Nur noch mit diesen Zahlen arbeitet im Folgenden das Sprachmodell, nicht mehr mit den Morphemen (als Buchstabenfolgen) selbst. Auf raffinierte Weise berechnet das Sprachmodell dann für diese Folge von Morphemen ein weiteres Morphem aus seinem Vokabular, das diese Folge plausiblerweise fortsetzt. Das heißt, es berechnet eigentlich nur eine Nummer und gibt dann einerseits die dazugehörige Buchstabenfolge auf dem Bildschirm aus. Andererseits wird die ursprüngliche Morphemfolge um das neue Morphem verlängert und für die verlängerte Folge ein weiteres Morphem berechnet, so lange, bis ein technisches „Ende-der-Antwort"-Morphem ausgegeben wird, das jedes Vokabular enthalten muss. Dabei werden in den Synapsen des Sprachmodells unter anderem statistisch kodierte Regeln der Morphologie angewendet, was dafür sorgt, dass mit einem Morphem, das am Anfang eines Wortes steht, immer automatisch ein vollständiges und richtig gebeugtes Wort erzeugt wird, die dafür erforderlichen Morpheme also gleichsam wie an einer Perlenschnur und gleichsam deterministisch hinterherkommen. Deshalb ist die Vorstellung, dass Sprachmodelle ihre Texte Wort für Wort ausgeben, dann doch wieder richtig - und mitunter hilfreich, weil einfacher.

# 4.2 Wie wird das nächste Wort berechnet? 

Wir bleiben also bei der Annahme oder Redeweise, dass ein Sprachmodell mit einem Vokabular von ca. 100.000 Worten - und nicht Morphemen oder Token - operiert. Das vereinfacht die Darstellung und erhöht die Lesbarkeit enorm.

Was ein Sprachmodell, nachdem es trainiert wurde, im Wesentlichen tut, und zwar in jedem Gespräch, das man mit ihm führt, ist im Prinzip ganz einfach: Es liest einen Text (eine Eingabe) als Folge von Worten ein, eines nach dem anderen, bis das letzte Wort erreicht ist. Es kann sich bei der Eingabe um ein einzelnes Wort handeln - zum Beispiel einen Begriff, den das Sprachmodell erklären soll -, einen unvollständigen Satz, eine kurze Frage oder um

einen längeren Text verbunden mit einer Frage oder Aufforderung, was es mit ihm anstellen soll. In jedem Falle baut das Sprachmodell Schritt für Schritt und Wort für Wort in einem vielstufigen Prozess eine interne Repräsentation des Eingabetextes, seines Inhalts und ggf. der Aufforderung auf. Wenn das letzte Wort erreicht und in die interne Repräsentation eingeflossen ist, macht das Sprachmodell als nächstes genau eines: es berechnet aus der finalen internen Repräsentation des Eingabetextes eine Wahrscheinlichkeitsverteilung, indem es für jedes mögliche Wort - und zwar für buchstäblich jedes mögliche Wort - eine Wahrscheinlichkeit bestimmt, mit der es als erstes Wort der Antwort ausgegeben werden könnte oder sollte. Das Wort mit der höchsten Wahrscheinlichkeit - bzw. eines derer mit der höchsten Wahrscheinlichkeit gibt das Sprachmodell dann tatsächlich aus, und dieses Wort wird dann der „Keim" für den Rest der Antwort sein, auf den wir am Ende des Kapitels zu sprechen kommen werden.

Das erste Wort seiner Antwort ist eines der 100.000 Worte des Vokabulars, nämlich das mit der höchsten berechneten Wahrscheinlichkeit. Eine Wahrscheinlichkeitsverteilung über diesen 100.000 Worten zu berechnen, bedeutet für das Sprachmodell, einen Vektor mit 100.000 Einträgen zu berechnen, die alle einen Wert zwischen 0 und 1 - also $0 \%$ und $100 \%$ - haben und in Summe 1 ergeben, denn genau eines der Worte kommt auf jeden Fall als nächstes. Weil der Vektor so viele Einträge hat, müssen alle im Mittel sehr klein sein, aber einige Einträge ragen heraus, und den größten davon - oder einen der größten - wählt das Sprachmodell schließlich aus. Abbildung 4.3 zeigt, wie eine solche Wahrscheinlichkeitsverteilung aussehen könnte.

Abb. 4.3 Ausschnitt aus einem 100.000-dimensionalen Wahrscheinlichkeitsvektor für das nächste Wort.

Dargestellt sind hier nur die ersten 500 Komponenten, der vollständige Vektor nähme in diesem Buch mehrere zehn Seiten ein. Die Auswahl des Eintrags mit der höchsten Wahrscheinlichkeit führt anschließend zu einem Vektor, der wie in Abbildung 4.4 aussieht.

Diesem Vektor - einem sogenannten One-Hot-Vektor, weil nur ein Eintrag „heiß" ist - ist ein Wort eindeutig zugeordnet, und dieses gibt das Sprachmodell schliesslich aus, in unserem Beispiel das achtzigste Wort des Vokabulars.

Drei häufigen Missverständnissen ist hiermit also schon einmal vorgebeugt: Zum einen berechnet ein Sprachmodell nicht direkt das nächste Wort als eine laufende Nummer unter den 100.000 möglichen nächsten Worte - also eine

Abb. 4.4 Ein sogenannter One-Hot-Vektor mit genau einem Eintrag mit Wert 1, ansonsten 0 . Das entsprechende Wort wird ausgegeben.

Zahl zwischen 1 und 100.000 -, sondern zunächst 100.000 Zahlen zwischen 0 und 1, die in Summe 1 ergeben. Obwohl es alle bis auf eine danach verwirft. Zum anderen muss es diese Zahlen im wahrsten Sinne des Wortes berechnen bzw. von seinen Neuronen berechnen lassen - und zwar zur Laufzeit - und kann sie nicht in einer riesigen, zum Beispiel während des Trainings vorab berechneten Wahrscheinlichkeitstabelle nachschlagen. Eine solche Tabelle kann es nämlich gar nicht geben, weil sie ja für jede Folge von Eingabeworten einen Eintrag enthalten müsste, und es bei 100.000 möglichen Eingabeworten und Eingaben von zum Beispiel 100.000 Worten Länge - die durchaus erlaubt sein sollen, und noch mehr - schon $100.000^{1.000}$ Kombinationen gäbe. Das entspräche einer hyperastronomisch großen Zahl von Kombinationen, nämlich einer 1 mit 500.000 Nullen. Das dritte Missverständnis ist, dass Sprachmodelle in irgendeinem Sinne das „tatsächlich" wahrscheinlichste Wort als nächstes Wort ausgeben. Sie geben immer nur das berechnet wahrscheinlichste Wort aus, das vom in den Trainingsdaten häufigsten nächsten Wort für eine Wortfolge abweichen kann, falls es überhaupt eines gibt. Ein schönes Beispiel dafür ist der Anfang des Gedichts „Auguries of Innocence" von William Blake [37], das mit den Worten „To see a world in a grain of sand" beginnt. Auch wenn dieses Gedicht vieltausendfach im Internet zu finden und demnach in den Trainingsdaten fast jedes Sprachmodells enthalten ist, so überwiegen im Internet doch bei weitem Kombinationen wie „world in a nutshell", „world in a day" oder „world in a book". Und dennoch ergänzt ChatGPT die Worte „world in a" - so unspezifisch sie auch sein mögen - recht regelmäßig mit „grain of sand", ganz abgesehen davon, dass auf „in a" eigentlich niemals "A" folgt.

## F: Setze fort: „A world in a"

A: A world in a grain of sand could sound like a poetic exaggeration, but what if it were possible? [...]

Das möge an dieser Stelle als Widerlegung des dritten Missverständnisses genügen, zumal es für längere Wortfolgen ohnehin kein „tatsächlich" wahrscheinlichstes, also häufigstes Wort gibt, weil fast alle Wortfolgen in den Trainingsdaten gar nicht vorkommen - ja gar nicht vorkommen können, weil es viel zu viele gibt. Eher ist also eine Interpretation des nächsten Wortes als

das für am wahrscheinlichsten gehaltene - oder in anderen Worten: das vom Sprachmodell für am plausibelsten gehaltene - angemessen.

Wofür dieser zugegebenermaßen etwas mühsame Einstieg mit einem 100.000dimensionalen Vektor? Er führt zum einen vor Augen, mit welch riesigen Daten- und Zahlenmengen ein Sprachmodell operiert und lässt erahnen, wie viele Rechenoperationen ein Sprachmodell ausführen muss, um allein für das erste Wort seiner Antwort diese 100.000 Wahrscheinlichkeiten zu berechnen - und es ist nur die Spitze des Eisbergs. Es ist aber auch der erste Schritt zu einem tieferen Verständnis dessen, was ein Sprachmodell eigentlich macht. Und wie wir sehen werden, ist es der erste Schritt, um zu verstehen, wie Sprachmodelle trainiert werden.

Gehen wir also einen Schritt weiter - oder erst einmal zurück. Womit nämlich alles anfängt, sind die Worte der Eingabe, und jedem dieser Worte ist naheliegenderweise ebenfalls ein One-Hot-Vektor zugeordnet, dem k-ten Wort der One-Hot-Vektor mit einer 1 an der k-ten Stelle. Was das Sprachmodell also letztlich macht, ist, einer Folge von One-Hot-Vektoren auf dem Umweg über eine berechnete Wahrscheinlichkeitsverteilung einen anderen One-Hot-Vektor zuzuweisen, wie es in Abbildung 4.5 illustriert ist. Aber wir wissen schon mehr: Die Wahrscheinlichkeitsverteilung wird aus einer internen Repräsentation des Inhalts bzw. der Bedeutung der Eingabe berechnet, die wiederum - etwas anderes kennt das Sprachmodell ja nicht - aus den One-Hot-Vektoren der Eingabeworte bestimmt werden muss. Wie - ganz grob geht das vonstatten?

Wir rekapitulieren noch einmal das grundlegende Prinzip neuronaler Netze. In neuronalen Netzen regen Gruppen von aktiven Neuronen andere Gruppen von Neuronen an. Mal sind es größere Gruppen, die kleinere Gruppen anregen, mal umgekehrt (siehe Abb. 4.6).

Mathematisch gesprochen heißt das: die Aktivität des Zielneurons ergibt sich aus der Summe der Produkte „Stärke der Aktivität mal Stärke der synaptischen Verbindung". (Meist allerdings nur, wenn die Summe einen bestimmten Schwellenwert überschreitet, was an dieser Stelle aber nicht so wichtig ist). Abbildung 4.7 veranschaulicht, wie sich die Aktivitäten von unten nach oben fortpflanzen.

Immer „repräsentiert" das Aktivitätsmuster einer Neuronengruppe irgendetwas, wobei sich meist nicht genau sagen lässt, was und wie. Einfach ist es noch mit unseren bisher betrachteten 100.000-dimensionalen Vektoren, die wir als Gruppen von 100.000 Neuronen betrachten können. Das k-te Neuron einer solchen Gruppe repräsentiert das k-te Wort, und die Stärke seiner Aktivität repräsentiert zum Beispiel die Wahrscheinlichkeit oder Plausibilität des Wortes. Ein One-Hot-Vektor hingegen repräsentiert exakt das Wort, dessen Neuron aktiv ist.

Was ein One-Hot-Vektor nicht repräsentiert, ist so etwas wie die Bedeutung eines Wortes. Er enthält keinerlei Information über das Wort, die über seine willkürliche laufende Nummer im Vokabular der 100.000 Worte hinausgeht. Aber Informationen über die Worte und ihre grammatikalischen und

![img-21.jpeg](img-21.jpeg)

Abb. 4.5 Ein Sprachnodeß als Blackbox. Es erzeugt aus einer Folge von One-HotVektoren für die Worte der Eingabe einen One-Hot-Vektor für die Ausgabe.

![img-22.jpeg](img-22.jpeg)

Abb. 4.6 Neuronen einer Gruppe bzw. Schicht sind über Synapsen verschiedener Stärke mit Neuronen einer anderen Gruppe verbunden. Die Aktivität eines Neurons ergibt sich im Wesentlichen aus den Aktivitäten der Neuronen, die es erregen, gewichtet mit der Stärke der Synapsen, die sie verbinden (hier durch Grautöne angedieutet). Die Aktivität beuitet sich von unten nach oben aus.

![img-23.jpeg](img-23.jpeg)

Abb. 4.7 Die anfängliche Aktivität von drei Neuronen pflanzt sich durch ein Mini-Netz von unten nach oben fort. Die Stärke der Aktivität der Neuronen wie auch der Synapsen sind durch Oziatöne repräsentiert. Die Stärke der Synapsen ändert sich dabei zur während des Trainings. Nachdem das Training abgeschlossen wurde, ändert sie sich nicht mehr.
semantischen Merkmale sind essenziell, um den Inhalt eines Textes, der aus ihnen besteht, in Form einer internen Repräsentation zu rekonstruieren. Reine und bedeutungsblinde Wortstatistik, so hat sich herausgestellt, genügt dafür nicht.

Was läge näher, als die Bedeutung eines Wortes durch einen weiteren Vektor, also die Aktivität einer weiteren Gruppe von Neuronen, zu repräsentieren? Wieder steht man vor der Frage, wie lang ein solcher Vektor (wir werden ihn im Folgenden „Merkmalsvektor" nennen) wohl sein mag oder sein muss -, und wieder mag man zunächst vermuten, dass er sehr lang sein muss. Wenn man zum Beispiel annimmt - wie es viele Sprachphilosophen, Linguisten und insbesondere Computerlinguisten tun -, dass sich die Bedeutung eines Wortes aus seinem gemeinsamen Vorkommen oder Gebrauch mit anderen Worten ergibt - „you shall know a word by the company it keeps" war ein berühmtes Diktum des Linguisten John Rupert Firth [29] -, könnte man versuchen, auf Basis eines großen Textkorpus - wie man ihn ja zum Training eines Sprachmodells verwendet - für jedes Paar von Worten statistisch zu erfassen, wie oft das eine in einem Kontextfenster von zum Beispiel zehn Worten um das andere herum vorkommt. Auf diese Weise erhält man für jedes Wort einen wiederum 100.000-dimensionalen Vektor, dessen Einträge die bedingten Wahrscheinlichkeiten für das Auftreten der anderen Worte angeben könnten. Eine solche Repräsentation der Bedeutung eines Wortes, aber auch der grammatikalischen Rollen, die es spielen kann, als Merkmale- oder in unserem Falle als Kookkurrenzvektor (Kookkurrenz = gemeinsames Vorkommen) hat einen fundamentalen Vorteil: Worte, die sich semantisch und grammatikalisch ähnlich sind, haben ähnliche Vektoren und definieren Punkte in einem hochdimensionalen Raum, die nahe beieinanderliegen - allein aufgrund der Tatsache, dass sie regelmäßig in ähnlichen Kontexten vorkommen. So haben zum Beispiel die Worte „Frau" und „Mann", aber auch „Königin" und „König" ähnliche Merkmalsvektoren. Diese Vektoren kann man noch dazu subtrahieren und addieren - was Sprachmodelle dann auch fleißig tun -,

so dass etwa „König" minus „Mann" plus „Frau" einen Vektor ergibt, der nahe beim Vektor für „Königin" liegt. (Wir werden darauf zurückkommen.)

Der eben skizzierte 100.000-dimensionale Kookkurenzvektor wäre allerdings für die Zwecke der vielstufigen Transformation, die er in einem Sprachmodell durchlaufen müsste, um zu einem Wahrscheinlichkeitsvektor zu führen, wie man ihn zur Bestimmung des nächsten Wortes braucht, allein aus Gründen der Rechenkapazität viel zu lang. Hier könnte zwar eine Dimensionsreduktion bzw. eine Kompression Abhilfe schaffen, die den Vektor ohne nennenswerten Bedeutungsverlust auf zum Beispiel 1.000 oder 10.000 Dimensionen verdichtet. Wie sich herausstellt, können Sprachmodelle solche bereits komprimierten Merkmalsvektoren aber auch direkt „lernen". Und so, wie sich 100.000 als sinnvolle und handhabbare Größenordnung für das Vokabular eines Sprachmodells herausgestellt hat (also für die Länge der One-Hot-Vektoren), hat sich tatsächlich 1.000 als sinnvolle und handhabbare Größenordnung für die Länge der Merkmalsvektoren herausgestellt. (Mittlerweile sind allerdings schon Merkmalsvektoren der Dimension 10.000 gebräuchlich.) Um im Folgenden etwas Konkretes vor Augen zu haben, wollen wir so tun, als könnte man die Merkmalsvektoren „verstehen", und als würden ihre Komponenten etwas Bestimmtes bedeuten und z.B. für bestimmte grammatikalische oder semantische Kategorien stehen (siehe Abb. 4.8).
![img-24.jpeg](img-24.jpeg)

Abb. 4.8 Für das Funktionieren von Sprachmodellen ist es nicht wesentlich, dass man die Merkmalsvektoren de facto nicht versteht. Wir sehen, dass schon für eine sehr überschaubare Zahl einfacher Worte mehr als 30 Merkmale nötig sind, um sie voneinander zu unterscheiden. Auf diese Weise 100.000 Worte voneinander zu unterscheiden und unterschieden müssen sie ja werden - würden tausend „verständliche" Merkmale nicht genügen.

So wird dann schließlich der One-Hot-Vektor eines Wortes auf seinen Merkmalsvektor abgebildet: indem eine Gruppe von Neuronen (der One-HotVektor) auf eine andere Gruppe von Neuronen (den Merkmalsvektor) über synaptische Verbindungen projiziert wird. In Abbildung 4.9 sehen wir einen konkreten Ausschnitt des neuronalen Netzes eines Sprachmodells in Aktion, und zwar die unterste, sogenannte Embedding-Schicht, wohlgemerkt nur an der Position eines Worte. (Embedding ist der Fachbegriff einerseits für die Merkmalsvektoren selbst, aber auch für den Verarbeitungsschritt, d.h. Projektion von One-Hot- auf Merkmalsvektoren.) Allerdings sehr stark verkürzt: Wir zeigen in Abbildung 4.9 nur neun der 1.000 oder 10.000 Neuronen des Merkmalvektors und nur 30 der 100.000 Neuronen des One-Hot-Vektors.
![img-25.jpeg](img-25.jpeg)

Abb. 4.9 Oben sehen wir einen Merkmalsvektor (mit nur neun anstatt 1.000 oder 10.000 Neuronen), unten einen One-Hot-Vektor. Wenn die Synapse, die das k-te Neuron des One-Hot-Vektors eines Wortes der Eingabe mit dem n-ten Neuron seines Merkmalsvektors verbindet, die Stärke $w_{k n}$ hat, dann erregt der One-Hot-Vektor des k-ten Wortes im Vokabular (für den genau das k-te Neuron aktiv ist, also mit $1 \_$feuert") die Neuronen des Merkmalsvektors derart, dass sie genau mit den Aktivitäten $w_{k n}$ „feuern". Die „Bedeutung" des kten Wortes wird also durch den Vektor der synaptischen Gewichte $\left(w_{k 1}, w_{k 2}, \ldots, w_{k 1000}\right)$ repräsentiert, der zugleich der Vektor der Aktivitäten des Merkmalsvektors ist, wenn der Eingabevektor nur bei k feuert. Man halte sich vor Augen, dass die gesamte Eingabe aus vielen solcher One-Hot-Vektoren besteht. k steht also nicht für das k-te Wort der Eingabe, sondern dafür, dass das hier betrachtete Eingabewort das k-te Wort im Vokabular ist.

Es ergibt sich folgendes Bild: Die One-Hot-Vektoren der Eingabeworte werden in der Embedding-Schicht auf ihre Merkmalsvektoren projiziert, und damit sind die Eingabeworte - noch isoliert voneinander - erst einmal intern repräsentiert. Diese Repräsentationen werden dann in einem vielstufigen Prozess transformiert, wobei sie viele, säulenartig angeordnete Neuronengruppen durchlaufen. Dabei beeinflussen die Repräsentationen früherer Worte die Repräsentationen späterer Worte der Eingabe (von links nach rechts gelesen), fließen gleichsam in sie hinein, transformieren sie dabei in höhere bedeutungstragende Einheiten (wie Phrasen und Sätze), reichern sie also nach und nach an, verdichten und formen sie semantisch aus. Schematisch sieht das aus wie in Abbildung 4.10. Die wahre Komplexität und Größe eines Sprachmodells ist in dieser Abbildung wiederum notgedrungen sehr stark reduziert. Zum einen

werden Verknüpfungen zwischen zwei Neuronengruppen hier nur durch eine Linie (ein „Nervenfaserbündel") dargestellt, mit einem angedeuteten synaptischen Kopf, der viele Millionen Synapsen zusammenfasst. Vor allem aber geschehen in den quadratischen Kästchen, die die Merkmalsvektoren schematisch umschließen, erstaunliche Dinge, an denen tausende weiterer, hier nicht dargestellter Neuronen beteiligt sind. Um ein Gefühl für die Größenordnung zu vermitteln: In jedem dieser Kästchen - den sogenannten Attention-Heads („Aufmerksamkeitsköpfen"), die die Stärke der Beziehungen zwischen den Worten berechnen - interagieren zehntausende Neuronen miteinander, und in jeder „Sinile" gibt es nicht nur drei, sondern - im Falle von CharGPT - 100.000 solcher Attention-Heads, nämlich in 100 Schichten jeweils 100 in Parallelschaltung. Die Zahlen sind also gelinde gesagt groß.
![img-26.jpeg](img-26.jpeg)

Abb. 4.10 In die Repräsentation des letzten Wortes der Eingabe fließen durch neuronale Verknüpfungen nach und nach alle anderen Worte ein, und es repräsentiert am Ende (oben rechts) den Inhalt und die Bedeutung des gesamten Eingabetextes. Allerdings fließen nicht alle Worte gleich stark ineinander ein, sondern immer in Abhängigkeit davon, wie stark sie in bestimmten Beziehungen zueinander stehen. Wir erklären das in Kapitel 4.4 genauer.

Die transformierte und verdichtete Repräsentation des letzten Wortes, das am Ende den ganzen Text repräsentiert - immer noch ein nur 1.000- oder höchstens 10.000-dimensionaler Vektor, selbst für einen Text von zehntausen-

den von Worten -, wird abschließend in einem zum Embedding spiegelbildlichen Schritt wieder zu einem 100.000-dimensionalen Vektor „aufgeblasen", aus dem sich dann der Wahrscheinlichkeitsvektor ergibt, mit dem wir unsere Betrachtungen begonnen haben. Wir zeigen das in Abbildung 4.11.

# 00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

![img-27.jpeg](img-27.jpeg)

Abb. 4.12 Schematische Darstellung des vollständigen Wegs von den One-Hot-Vektoren der Eingabe (unten) zum One-Hot-Vektor der Ausgabe (oben rechts). Jeder One-HotVektor steht für genau ein Wort.

Wortes der Aufmerksamkeit wert sind. Ihn werden wir im Kapitel 4.4 noch genauer anschauen, denn in ihm steckt die ganze „Magie" der Sprachmodelle. Was wir hier schon sehen, ist, dass jedes Wort der Eingabe seine Identität gewissermaßen beibehält und fast buchstäblich eine „Säule" in der Architektur des neuronalen Netzes bildet. Das führt dazu, dass ein Sprachmodell für jedes mögliche Wort der Eingabe - und ihre Zahl kann in die Zehntausende gehen - eine eigene neuronale Säule vorsehen muss. Wobei es sich bei diesen Säulen, wie immer im Zusammenhang mit künstlichen neuronalen Netzen, nur um

virtuelle neuronale Strukturen handelt, die nur bei Bedarf im Arbeitsspeicher eines Computers angelegt und danach auch wieder freigegeben werden.

Wie geht es mit der Antwort weiter? Nachdem das Sprachmodell das erste Wort der Antwort ausgegeben hat - denn Sprachmodelle geben ihre Antworten immer Wort für Wort aus -, hängt es dieses Wort an die Worte der Eingabe an (siehe Abb. 4.13). Bis dahin kennt es die Bedeutung des neuen Wortes noch gar nicht, „weiß" also noch gar nicht, was es da gerade gesagt hat, denn das neue Wort wurde noch nicht in einen Merkmalsvektor umgewandelt. Das geschieht aber sogleich im nächsten Schritt, und anschließend wird der neue Merkmalsvektor des nun neuen letzten Wortes - wie alle Worte zuvor - sukzessive durch diese Worte angereichert, um so zu einer aktualisierten internen Repräsentation des gesamten Textes (oder Kontextes) zu gelangen. Dieser besteht nun aus den Worten, die der menschliche Benutzer eingegeben hat, zuzüglich denen, die das Sprachmodell selbst generiert hat. Von jetzt an wird das Sprachmodell keinen Unterschied mehr zwischen diesen Worten machen und alles als einen Text betrachten. Das Prinzip der Textanalyse, also der sukzessiven Aktualisierung der internen Repräsentation des Textes im kontextualisierten letzten Wort - egal, von wem es stammt - bleibt dabei immer das gleiche.

Es ist wichtig zu bemerken, dass zwar nur ein Merkmalsvektor gebraucht wird, um das nächste Wort zu bestimmen - der des kontextualisierten letzten Wortes -, aber der Gesamtzustand des Transformers, inklusive aller jemals berechneten Merkmalsvektoren aller Worte und in allen Schichten, aufrechterhalten bleiben muss, um das nächste Wort kontextualisieren zu können, so wie es Abbildung 4.12 zeigt. Nur die Merkmalsvektoren der letzten Schicht dürfen „vergessen" werden, weil sie keinen Einfluss mehr haben können.

Irgendwann erreicht das Sprachmodell einen Zustand, in dem das wahrscheinlichste nächste Wort das Ende der Antwort markiert, ein unsichtbares technisches Wort gewissermaßen, das in jedem Vokabular enthalten sein muss, und das man als „Ende-der-Antwort-Token" bezeichnet. Mit ihm beendet das Sprachmodell seine Antwort und wartet auf erneuten Input durch den menschlichen Benutzer. Ist dieser erfolgt, geht es weiter, wobei auf allem bisher Gesagten - dem gesamten bisherigen Kontext also und seiner internen Repräsentation - aufgebaut wird. Erst, wenn der Benutzer ein neues Gespräch beginnt, wird alles auf Null gesetzt. Und dann ist aus Sicht des Sprachmodells auch wirklich alles vergessen. In seine Synapsen, die ja allem zugrunde liegen, gehen Gespräche mit menschlichen Nutzern grundsätzlich nicht ein. (Allerdings kann man Gespräche später fortsetzen.)

Damit schon an dieser Stelle kein falscher Eindruck entsteht: Ein Sprachmodell setzt mit seiner Antwort im Allgemeinen nicht einfach fort, was der menschliche Nutzer - zum Beispiel als Frage - eingegeben hat. Insbesondere setzen sie nur sehr selten - und oft nur auf ausdrückliche Aufforderung hin - unvollständige Sätze nahtlos fort. Das wahrscheinlichste erste Wort einer Antwort ist also meist nicht eines, das nach den Regeln der Grammatik als nächstes auf die Benutzereingabe folgen müsste. Zumal Grammatiken nur

![img-28.jpeg](img-28.jpeg)

Abb. 4.13 Die Merkmalevektoren aller bisherigen Worte müssen nicht neu berechnet werden, denn sie ändern sich durch das neu hinzugekommene Wort nicht, weil sich jedes Wort nur auf die ihm nachfolgenden auswirkt.
wenige Regeln kennen, nach denen Sätze oder Antworten anfangen müssen. Das widerspricht in gewisser Weise dem, wie Sprachmodelle trainiert werden. Der Grund dafür ist, dass Sprachmodelle und insbesondere Chatbots nach ihrem rein statistischen Vortraining zusätzlich noch darauf trainiert werden, natürlich klingende Konversationen zu führen, was unter anderem dazu führt, dass sie, bevor sie einen unvollständigen Satz vervollständigen, diesen erst einmal wiederholen:

# F: Newton wurde geboren im Jahre 

A: Newton wurde geboren im Jahre 1642.
Das machen sie aber ausdrücklich nur ganz am Anfang einer Antwort, d.h. nach dem Ende einer Frage, das sie an einem unsichtbaren „Ende-der-FrageToken" erkennen. Sobald sie mit ihrer Antwort begonnen haben, folgen sie dann doch recht strikt dem Prinzip des (plausiblen) nächsten Wortes. Man kann sie allerdings dazu bringen, das Ende-der-Frage-Token gewissermaßen zu ignorieren und tatsächlich die Eingabe nahtlos fortzusetzen. So noch nicht:

## F: Setze fort: Newton wurde geboren im Jahre

A: Newton wurde geboren im Jahre 1642.
Aber so:

# F: Setze mit einem Wort fort: Newton wurde geboren im Jahre 

A: 1642
Man kann den Anfang ihrer Antwort aber auch vorwegnehmen und sie auch so „zwingen", die Eingabe einfach fortzusetzen:

## F: Was ist ein Sprachmodell?

A: Ein Sprachmodell ist ein statistisches Modell, das die Wahrscheinlichkeit von Wörtern oder Sätzen in einer bestimmten Sprache berechnet.

## F: Was ist ein Sprachmodell? Ein

A: Sprachmodell ist ein statistisches Modell, das verwendet wird, um die Wahrscheinlichkeit von Sätzen oder Texten in einer bestimmten Sprache zu berechnen.

## F: Was ist ein Sprachmodell? Ein Sprachmodell

A: ist ein statistisches Modell, das die Wahrscheinlichkeit von Wörtern oder Sätzen in einer bestimmten Sprache berechnet.
Schließlich kann man auch Fragen betrachten, die nur aus einem Wort bestehen, wie z.B. „Atom?" (wobei das Fragezeichen noch nicht einmal essenziell ist). Auch ein einzelnes Wort durchläuft alle Schichten, wird dabei jedoch naturgemäß nicht durch andere Worte angereichert, erfährt aber dennoch Veränderungen, die dergestalt sind, dass die finale Repräsentation dem Sprachmodell erlaubt, eine Wahrscheinlichkeitovektor zu berechnen und eine passende Antwort zu generieren:

## F: Atom

A: Atom is a widely used open-source text editor developed by GitHub.
(Dieses Beispiel demonstriert unbeabsichtigterweise auch, dass computerund programmierbezogene Themen in den Trainingsdaten von ChatGPT überwiegen. Nebenbei bemerkt gehört GitHub zu Microsoft, das wiederum an der ChatGPT-Entwicklerfirma OpenAI beteiligt ist. Ein Fall von Produktplacement, könnte man meinen.)

An dieser Stelle sei noch einmal erwähnt, dass Sprachmodelle genaugenommen nicht auf Worten operieren, sondern auf Bestandteilen von Worten, die man theoretisch und linguistisch als Morpheme betrachten könnte, die in der Praxis aber Token heißen und - anders als Morpheme - nicht unbedingt bedeutungstragend sein müssen. Es kann sich dabei zwar um ganze Worte handeln, oft sind es aber sinnlose Zeichenketten oder gar nur einzelne Buchstaben. Deshalb generieren Sprachmodelle genaugenommen nicht für eine Folge von Worten ein nächstes Wort, sondern für eine Folge von Token ein nächstes Token. Im Zuge dessen fügen sie aber - nach demselben Prinzip, wie sie während der Textanalyse Worte zu höheren bedeutungstragenden Einheiten wie Phrasen und Sätzen zusammenfügen - in frühen Verarbeitungsschritten erst einmal aus Token Worte zusammen und geben anschließend Token für Token so aus, dass - gewissermaßen absichtslos - ganze Worte entstehen.

Es ist insgesamt hilfreich, sich drei Ebenen der Textgenerierung durch ein Sprachmodell vorzustellen:

1. die morphologische Ebene, auf der dafür gesorgt wird, dass Worte aus Token korrekt zusammengesetzt werden und korrekt gebeugte Wortformen herauskommen (das hat oberste Priorität)
2. die syntaktische Ebene, die dafür verantwortlich ist, dass der Satzbau stimmt, die Worte in der richtigen Reihenfolge und insbesondere Funktionsworte an den richtigen Stellen kommen, und schließlich
3. die semantische Ebene, auf der, sobald grammatikalisch gesehen ein bedeutungstragendes Token (in der Sprache der Morpheme: ein Lexem) folgen kann, ein plausibles gewählt wird.

Wir fassen an dieser Stelle zusammen: Bevor ein Sprachmodell ein nächstes Wort ausgibt, hat es „verstanden", was bisher gesagt wurde. Der Inhalt des bisher Gesagten ist im kontextualisierten letzten Wort repräsentiert, auf dem der Wahrscheinlichkeitsvektor für das nächste Wort beruht. Ein Sprachmodell versteht hingegen nicht, was es selbst gerade sagt, sprich, was das Wort, das es gerade generiert, bedeutet. Das heißt, es kennt den entsprechenden Merkmalsvektor zu diesem Zeitpunkt noch gar nicht (siehe Abbildung 4.13). Den lernt es erst danach kennen, wenn es sich daran macht, das über nächste Wort zu generieren. Mit seinem allerletzten Wort, dem Ende-der-Antwort-Token, hat es dann allerdings rückblickend doch verstanden, was es gesagt hat. Denn dieses war ja das wahrscheinlichste in einem Wahrscheinlichkeitsvektor, der auf Basis des (auch von ihm) bis dahin Gesagten berechnet wurde und dessen Inhalt im kontextualisierten letzten Wort repräsentiert war. Doch vorab - das muss betont werden - hat ein Sprachmodell keinerlei Vorstellung oder Repräsentation davon, was es in Gänze antworten wird. Das bedeutet auch, dass ein Sprachmodell die in seinen Synapsen kodierten Regeln der Morphologie und Grammatik nur in eine Richtung anwendet: für die Analyse von Texten. Anders als der Mensch wendet es sie aber nicht in umgekehrter Richtung beim Generieren bzw. der Synthese von Texten an, zumindest wenn man den Linguisten glauben darf.

Übrigens kann auch ein außenstehender Beobachter nicht wissen, was ein Sprachmodell antworten wird. Theoretisch wäre es möglich, weil der neuronale Mechanismus von Sprachmodellen im Prinzip deterministischer Natur ist und damit die vollständige Antwort schon durch die Frage festgelegt ist. Doch weil der vollständige Mechanismus wesentliche Nicht-Linearitäten enthält (technisch gesprochen: nicht-lineare Aktivierungsfunktionen), lässt sich zumal eine längere Antwort de facto nicht vorhersagen. Abgesehen davon, dass einem Sprachmodell die Freiheit gegeben werden kann, nicht das allerwahrscheinlichste, sondern nur ein zufällig gewähltes der zum Beispiel zehn wahrscheinlichsten Worte auszugeben. (Das macht man, um den Antworten von Sprachmodellen und insbesondere Chatbots gelegentlich etwas „Fantasie" und „Kreativität" zu verleihen, und weil ihre Antworten sonst erfahrungsgemäß steifer und hölzerner wirken.)

# 4.3 Was sind Wort- und Textvektoren? 

Von Merkmalsvektoren (insbesondere von Worten) ist in diesem Buch immer wieder die Rede, und gewissermaßen sind sie der Dreh- und Angelpunkt nicht nur von Sprachmodellen, sondern von künstlicher Intelligenz im Allgemeinen, und wenn man den Blick noch weiter stellt auch von den Vorgängen im menschlichen Gehirn. Merkmalsvektoren (englisch feature vectors) sind eine und vielleicht die wichtigste Form von internen Repräsentationen (künstlich) intelligenter Systeme, und am konkretesten kann man sie sich als Aktivitätsmuster von Neuronen vorstellen, künstlichen oder echten, also biologischen. Jede Komponente eines Merkmalsvektor, aufgefasst als reelle Zahl (oft zwischen -1 und +1 ), steht dabei für die Stärke der Aktivität eines Neurons einer bestimmten Gruppe. Ein Merkmalsvektor ist so gesehen immer ein Schnappschuss und beschreibt den aktuellen Aktivitätszustand einer Gruppe von Neuronen, die das Objekt, dessen Merkmale da gerade aktiv sind, repräsentiert. ${ }^{2}$

Auch in der Psychologie - insbesondere der kognitiven - und in der Philosophie spricht man von internen (oder mentalen) Repräsentationen, ohne dabei zwangsläufig an neuronale Repräsentationen zu denken. Dass sich interne Repräsentationen nicht unbedingt als Merkmalsvektoren darstellen müssen, sondern auch bildhafte Vorstellungen sein können, ist unbenommen. Aber die Idee, dass man sich zum Beispiel einen abstrakten Gegenstand als ein Bündel von Eigenschaften vorstellt, ist auch dort nicht unbekannt.

Wir wollen uns auf die Merkmalsvektoren von Worten konzentrieren, die gewissermaßen im Zentrum (oder wahlweise am Anfang) der Sprachverarbeitung durch Sprachmodelle stehen, aber auch der Sprachverarbeitung im menschlichen Gehirn. Worte und ihre Merkmalsvektoren spielen für Sprachmodelle dieselbe Rolle wie Pixel für bildverarbeitende künstliche Intelligenz. So, wie Bild-KI Muster und Regeln in zweidimensional angeordneten PixelArrangements erkennt, erkennen Sprachmodelle Muster und Regeln in eindimensional angeordneten Wort-Arrangements. Während in der Eingabeschicht ein Pixel durch einen typischerweise dreidimensionalen Merkmalsvektor repräsentiert ist (z.B. je eine Dimension für die drei Grundfarben rot, grün, blau), ist ein Wort in der Eingabeschicht durch einen typischerweise 1.000dimensionalen Merkmalsvektor repräsentiert. (Wir erinnern uns: Die Verarbeitung einer Texteingabe beginnt bei Sprachmodellen mit der Abbildung von sogenannten One-Hot-Vektoren von Worten auf ihre Merkmalsvektoren.)

Wie diese Merkmalsvektoren (als Aktivitätsmuster) zustandekommen und durch welche neuronalen Mechanismen sie zu Merkmalsvektoren höherer Texteinheiten (wie Phrasen, Sätzen und ganzer Texte) führen - also zu

[^0]
[^0]:    ${ }^{2}$ Dass in künstlichen neuronalen Netzen auch negative Aktivitäten zugelassen sind, soll uns an dieser Stelle nicht beklümmern, es vereinfacht vor allem den mathematischen Formalismus und die Implementierung. Es hat aber auch eine gewisse biologische Plausibilität, wenn man die Aktivität eines Neurons relativ zu seiner Baseline-Aktivität betrachtet, die nicht 0 sein muss.

Aktivitätsmustern anderer Neuronengruppen, die solche Texteinheiten repräsentieren -, werden wir am Ende dieses Kapitels betrachten. Zunächst interessiert uns, was die Merkmalsvektoren von Worten tatsächlich „bedeuten" und wie man sie konzeptionell auffassen kann.

Traditionell werden Merkmalsvektoren von Worten als semantische Vektoren eingeführt und damit als Punkte in einem im Allgemeinen sehr hochdimensionalen semantischen Vektorraum. Man mag sich die Bedeutungsdimensionen dieses semantischen Raumes als transparent benennbare Kategorien oder Attribute oder als Namen von semantischen Feldern vorstellen, denen ein Wort (bzw. die durch ein Wort bezeichnete Entität) angehören kann oder nicht. Wie stark, das würde man durch einen Zahlenwert zwischen +1 (ganz) und -1 (gar nicht) ausdrücken, wobei 0 „weder-noch" oder „nicht anwendbar" bedeuten würde. („Sowohl-als-auch" ließe sich so zwar nicht darstellen, aber auch dafür gäbe es eine Lösung, wenn man eine bräuchte.) Welche Kategorien, Attribute oder semantischen Felder man aber auswählen sollte, um zu einem konkreten semantischen Vektorraum und zu konkreten Merkmalsvektoren zu gelangen, wäre eine schwierige und letztlich nicht zu beantwortende Frage. Nur in wohldefinierten Kontexten mit einer sehr klaren Ontologie und einem überschaubaren Vokabular mag das gelingen, doch im offenen Feld natürlicher Sprachen, in denen man über alles und jedes sprechen kann, erkennt man schnell die Vergeblichkeit, mit konkreten, benannten und somit transparenten Bedeutungsdimensionen arbeiten zu wollen. Allein ihre mögliche bzw. notwendige Zahl lässt sich kaum abschätzen, doch liegt sie womöglich jenseits von 100.000 - wenn es überhaupt sinnvoll ist, hier Zahlen angeben zu wollen. Und selbst wenn man einen vollständigen Satz von Bedeutungsdimensionen hätte: Wer sollte jedem Wort seine entsprechenden Zahlenwerte je Dimension zuweisen? Man sieht also leicht, dass transparente Bedeutungsvektoren nach Art eines Bedeutungswörterbuchs ein aussichtsloses Unterfangen sind.

Etwas aussichtsreicher sähe es für die grammatikalischen Merkmale von Worten aus wie Wortart (Substantiv, Adjektiv, Verb, Pronomen, Präposition, etc.), Person, Genus, Kasus und Numerus, deren Zahl zumindest für das Deutsche gewiss nicht in die Tausende gehen würde. Diese Merkmale müssten - zumindest aus Sicht von Sprachmodellen - die semantischen Merkmale ergänzen, um die in ihnen enthaltenen Informationen bei der Sprachverarbeitung verwenden zu können. Es wäre dabei allerdings nötig, für jede Grundform eines Wortes alle gebeugten Formen (und das können im Deutschen dutzende sein) als jeweils eigene Merkmalsvektoren zu kodieren, die im semantischen Teil identisch wären und sich nur im grammatikalischen Teil unterscheiden würden. Doch das ist nur ein theoretischer Aspekt, denn Sprachmodelle kennen ohnehin nur wenige vollständige Worte, geschweige denn gebeugte Formen und operieren vor allem auf Wortbestandteilen (Token).

Eine weitere Art von Wortmerkmalen müsste hinzukommen, nämlich allgemein-sprachliche oder -linguistische Merkmale. Mit der Frage „Gibt es das Wort im Deutschen, Englischen, ..." (für jede Sprache ein Merkmal!)

würden diese beginnen, aber das wäre erst der Anfang. Es könnte oder müsste auch angegeben sein, in welchen Sprachräumen, Dialekten und Epochen ein Wort verwendet wird, ob es fach- oder umgangssprachlich ist, ob es shakespeare-, goethe- oder kafkaesk ist etc. pp. Man sieht erneut: Es geht nicht, sämtliche sprachlichen Merkmale von Worten in einem Vektor zusammenzufassen, es wäre ein Fass ohne Boden. Und dennoch, so scheint es, verfügen große Sprachmodelle über all diese Informationen, wie sonst könnten sie zum Beispiel im Stile Shakespeares oder Goethes - wenn auch unbeholfen - über Sprachmodelle sprechen? Zwei Auszüge:

ChatGPT im Stile Shakespeares: This beast, a labyrinth of numbers and ciphers, did then churn and ponder, toiling day and night, learning the ways of human speech. 'Twas not just the words themselves it sought to grasp, but the very essence of meaning, the subtle dance of context and syntax.

ChatGPT im Stile Goethes: Doch, o Wunder der Technik, nicht allein im Nachahmen erweisen sie sich meisterlich. Nein, sie vermögen es auch. Neues zu schaffen, Texte zu verfassen, die noch nie ein Mensch zuvor gelesen. Gleich einem Dichter, der in stiller Stunde neue Verse ersinnt, weben sie aus den gelernten Worten neue Geschichten, lehren, antworten, erzählen.

Auch wenn der Weg nicht gangbar ist, alle Worte (einer oder mehrerer Sprachen) als transparente semantisch-grammatikalisch-linguistische Merkmalsvektoren vorab zu erfassen und Sprachmodelle auf diesen Merkmalsvektoren operieren zu lassen (so wie ganz ähnlich Bild-KI auf pixelweisen Farbvektoren operiert), so lohnt es sich doch, einige Aspekte dieser hypothetischen Vektoren zu betrachten. Siehe dazu Abbildung 4.8 auf Seite 148. ${ }^{4}$ )

Inhaltlich ähnliche Worte (die ähnliche Dinge bezeichnen) haben ähnliche semantische Merkmalsvektoren. Das heißt, dass sie in vielen Merkmalen ähnlich oder gar gleich sind, also ähnliche oder gleiche Zahlenwerte haben. In je mehr Merkmalen sie sich ähneln, desto ähnlicher sind sie insgesamt. Insbesondere inhaltlich gleiche Worte, also Synonyme, haben tatsächlich gleiche semantische Merkmalsvektoren, zumindest in der Theorie. Mathematisch gesehen bedeutet die Ähnlichkeit von Merkmalsvektoren, dass ihr Abstand in ihrem hochdimensionalen semantischen Vektorraum klein ist. Dass der Abstand, also die Länge des Differenzvektors, klein ist, geht damit einher, dass der Winkel, den die zwei Vektoren im semantischen Raum einschließen, klein ist, was wiederum bedeutet, dass der Kosinus dieses Winkels groß ist. Es sind genau die Kosinus- und die ihr verwandte sehr einfach zu berechnende Skalarprodukt-Ähnlichkeit, die Transformer-Sprachmodelle verwenden, wenn sie in ihrem Herzstück, dem Aufmerksamkeitsmechanismus, mit wenig anderem mehr beschäftigt sind, als Ähnlichkeiten von Vektoren zu berechnen (und anschließend Vektoren zu addieren).

[^0]
[^0]:    ${ }^{4}$ In dieser Abbildung fehlen leider Spalten, die mit „im Stile Goethes" und „im Stile Shakespeare" beschriftet sind.

Das Prinzip „ähnlicher Inhalt - ähnlicher Merkmalsvektor" ist unabhängig davon, ob der Merkmalsvektor transparent, also „verständlich" ist, oder aus verschiedenen Gründen opak, also „unverständlich". Welche Gründe das sein können, sehen wir gleich. Merkmalsvektoren erlauben auch, ein Phänomen wie die Analogiebildung mathematisch und damit auch neuronal zu modellieren. Wenn man sagt, „Königin" verhielte sich zu „Frau" wie „König" zu „Mann" - ein häufig erwähntes Beispiel in der Sprachmodell-Literatur -, dann bedeutet das in der Sprache von Merkmalsvektoren, dass die (Vektor) Differenz von „Königin" und „Frau" - wenn man also den Begriff der „Königin" von allen weiblichen Attributen befreit - der Differenz von „König" und „Mann" mehr oder weniger gleicht. Anders ausgedrückt: „Königin" minus „Frau" plus „Mann" ist ungefähr gleich „König". Auch diese Form von „Bedeutungsarithmetik" ist unabhängig von der Transparenz der Merkmalsvektoren und funktioniert auch mit opaken Merkmalsvektoren. Die Fähigkeit von Sprachmodellen, Analogien und in einem weiteren Sinne auch Beispiele und Verallgemeinerungen aktiv und passiv zu verstehen, beruht letztlich auf solcher Art Bedeutungsarithmetik.

Das Gegenstück zu Synonymen sind Homonyme, also Worte, die in verschiedenen Kontexten verschiedene Bedeutung haben. Das klassische Beispiel ist das Wort „Bank". Sprachmodelle kennen allerdings für homonyme Worte nur einen Merkmalsvektor (also nicht einen für „Bank 1" und einen für „Bank 2"), und ganz am Anfang wissen weder sie, noch weiß ein Mensch, welche von mehreren möglichen Bedeutungen die richtige ist - das ergibt sich erst aus dem Kontext. Wie also soll oder könnte der Merkmalsvektor eines Homonyms aussehen, der anfangs alle Bedeutungen umfassen müsste? Echte Alternativen dazu, dass es der Mittelwert zweier (oder mehrerer) Vektoren bzw. ihre überlagerte Vektorsumme ist, gibt es nicht, und tatsächlich muss man sich die Merkmalsvektoren von Homonymen gewissermaßen als „Zwitter" vorstellen, ohne klare und eindeutige Bedeutung, aber immerhin so prägnant, dass sie zu jeweiligen Synonymen nicht ganz unähnlich wären. Die Auflösung von Homonymen durch den Kontext kann man sich aber an dieser Stelle auch schon vorstellen: Die Bedeutungskomponenten, die zum Kontext passen (und die in einem Kontextvektor geeignet repräsentiert wären), würden - im weitesten Sinne durch Vektoraddition - verstärkt und die unpassenden dadurch unterdrückt.

Nicht ganz so markant wie Homonyme sind Worte, die in verschiedenen Kontexten nur leicht verschiedene Bedeutung haben. Dieses Phänomen nennt man Polysemie, und es ist weiter verbreitet, als man bei diesem recht ungeläufigen Begriff vermuten könnte. Genaugenommen ist Polysemie allgegenwärtig, und es gibt kaum ein Wort, das in diesem Sinne nicht polysem wäre. Polysemie - behandelt wie Homonymie - führt auf jeden Fall dazu, dass Merkmalsvektoren grundsätzlich als „verwaschene" Mittelwerte von vielen, nur in bestimmten Kontexten „scharfen" Merkmalsvektoren aufzufassen sind. (Womit noch einmal das grundsätzliche Problem berührt wäre, wie man für transparente Merkmalsvektoren - unter besonderer Berücksichtigung von

Polysemie - auf die richtigen Zahlenwerte für jedes einzelne Merkmal kommen könnte. De facto nämlich gar nicht.)

Ein Gedankensprung. Es stellt sich bei genauerer Überlegung heraus, dass die meisten der hypothetischen semantischen Merkmale auf ein bestimmtes Wort (bzw. den von ihm bezeichneten Gegenstand) gar nicht zutreffen können, weil sie schlicht nicht anwendbar sind. Transparente Merkmalsvektoren wären deshalb im Allgemeinen nur schwach mit „echten" Werten bevölkert, die ungleich bzw. signifikant größer als 0 sind. (Wir erinnern uns: 0 bedeutet, dass ein Merkmal oder Attribut weder zutrifft noch nicht zutrifft, weil es kategoriell nicht zum Wort bzw. Gegenstand passt und deshalb nicht anwendbar ist. So ist es zum Beispiel im Allgemeinen nicht sinnvoll, physikalische Begriffe auf nicht-physikalische Dinge anzuwenden und umgekehrt. Ein anderes Beispiel für einen Kategorienfehler sind Noam Chomskys farblose grüne Ideen, die er für sein berühmtes Beispiel eines synaktisch korrekten, aber semantisch sinnlosen Satz erfand: „Colorless green ideas sleep furiously", also „Farblose grüne Ideen schlafen wütend". Abgesehen davon, dass sich farblos und grün widersprechen, kommen Farben als Merkmal für Ideen einfach nicht in Betracht.) Die schwache Besetzung transparenter Merkmalsvektoren erlaubt es, sie verlustarm zu komprimieren, das heißt auf einen kürzeren - dann dichter mit „echten" Werten bevölkerten - Vektor abzubilden. Verlustarm bedeutet, dass der komprimierte Vektor, obwohl kürzer, im Wesentlichen die gleiche Information enthält wie der unkomprimierte. Und es bedeutet, dass die Abbildung umgekehrt werden kann und dabei zwar nicht derselbe, aber ein sehr ähnlicher Vektor herauskommt.

Mathematisch gesehen kann die Kompression durch eine (lineare) Matrixmultiplikation erfolgen, aus Sicht eines neuronalen Netzes ist das einfach eine geeignete Projektion einer größeren auf eine kleinere Neuronengruppe.
![img-29.jpeg](img-29.jpeg)

Abb. 4.14 Sparsame besetzte Vektoren kann man gut komprimieren und verdichten.

Worauf wir hinauswollen, ist, dass der komprimierte Merkmalsvektor im Allgemeinen nicht mehr transparent, sondern opak und „unverständlich" ist: Man weiß nicht mehr - zumindest nicht ohne Weiteres -, welches Merkmal eine bestimmte Komponente des komprimierten Vektors repräsentiert und wie man es benennen sollte, weil es sich jetzt nämlich um eine komplexe Überlagerung (genauer: Linearkombination) von vielen Merkmalen des ursprünglichen Vektors handelt. Doch solange es nur um Relationen und Ver-

knüpfungen zwischen Merkmalsvektoren geht - allen voran um die Ähnlichkeit und die Addition - und nicht um ihre „absolute" Bedeutung, ist das kein Problem. Ein Sprachmodell, das sich in der Tat mehr für Beziehungen und Relationen als für absolute Bedeutungen interessiert, kann mit komprimierten Merkmalsvektoren genauso gut, wenn nicht gar besser und effizienter arbeiten, insbesondere, wenn es um Vektoradditionen und Ähnlichkeiten geht, die unter (linearer) Kompression erhalten bleiben.

Um aber noch einmal auf transparente Merkmalsvektoren zurückzukommen: Den befriedigendsten und gleichzeitig praktikabelsten Ansatz, zu solchen Vektoren zu gelangen, brachte der bereits zitierte englischen Linguist John Rupert Firth (1890-1960) auf den Punkt: „You shall know a word by the company it keeps ${ }^{\text {" }}$, sprich, die Bedeutung eines Wortes ergibt sich aus den Worten (und deren Bedeutung), mit denen es zusammen verwendet wird. Bedeutung ist so gesehen nicht absolut, sondern relativ (oder relational), und insbesondere für Sprachmodelle ist das ein Vorteil, denn zur absoluten oder „wirklichen" Bedeutung von Worten - die oft in der realen Welt zu finden ist - haben sie ohnehin keinen Zugang. Firth war durchaus nicht der erste, der diesen Standpunkt vertrat, und schon beim Urvater der modernen Linguistik, Ferdinand de Saussure, finden sich ähnliche Ideen. Ludwig Wittgenstein sagt in seinen Philosophischen Untersuchungen [25], die Bedeutung eines Wortes sei „sein Gebrauch in der Sprache" (§43) und weniger ein Gegenstand in der wirklichen Welt. Beim schottischen Sprachwissenschaftler John Sinclair Hardy (1933-2007) firmiert das Konzept unter dem Namen Kollokation, ansonsten wird oft von Kookkurrenz, also dem gemeinsamen Vorkommen von Worten gesprochen. Dieses gemeinsame Vorkommen lässt sich quantifizieren und statistisch erfassen. Dafür zählt man in einem möglichst großen Textkorpus - wie er zum Beispiel Sprachmodellen für das Training zur Verfügung steht - für jedes Paar von Worten, wie oft das zweite in einem Fenster von plus/minus einigen Worten um das erste herum vorkommt. Geteilt durch die Gesamtzahl der Vorkommen des ersten Wortes im Korpus ist das die bedingte Wahrscheinlichkeit des Vorkommens des zweiten Wortes in der Nähe des ersten. Auf diese Weise erhält man für jedes Wort einen Vektor von Zahlen, nämlich den bedingten Wahrscheinlichkeiten für alle anderen Worte. Die Zahl der Worte ist gleich der Länge bzw. Dimension dieses Vektors, dessen Komponenten einerseits eine vollkommen transparente Bedeutung haben und der andererseits als Ganzes die Bedeutung des Wortes im Sinne der „Kookkurrenz-Semantiker" wie Firth, de Saussure und Hardy repräsentiert. Man macht sich leicht klar, dass semantisch ähnliche Worte auch ähnliche Kookkurrenzvektoren haben - ganz wie man es von Merkmalsvektoren erwartet, und fast schon ist das eine Tautologie. („Bedeutung" geht hier übrigens über Semantik hinaus, denn der Kookkurrenzvektor erfasst auch syntaktische Beziehungen zwischen - und damit Merkmale von - Worten.) Es darf

[^0]
[^0]:    ${ }^{5}$ Dieses Zitat erweist sich als nicht ganz einfach zu übersetzen. ChatGPT übersetzt es mit „Man erkennt ein Wort anhand der Gesellschaft, die es hält". Wir schlagen „Du sollst ein Wort daran erkennen, mit welchen Worten es verkehrt" vor.

aber eines nicht übersehen werden: dass die per Kookkurrenz gewonnenen Merkmalsvektoren ganz wesentlich vom Textkorpus abhängen und deshalb natürlich keine „objektive" Bedeutung abbilden. (Der Effekt, den die Größe des Fensters, innerhalb dessen man das gemeinsame Vorkommen von Worten betrachtet, auf die Berechnung der bedingten Wahrscheinlichkeiten und damit die „Bedeutung" eines Wortes hat, ist verglichen damit eher gering.)

Auch Kookkurrenzvektoren haben viele verschwindende Einträge (denn die meisten Worte tauchen fast nie gemeinsam auf) und lassen sich daher gut komprimieren. Auf diese Weise könnte man also automatisiert nicht allzu lange Merkmalsvektoren für Worte generieren (die nach der Kompression allerdings wiederum nicht transparent sind), auf denen man tatsächlich ein Sprachmodell operieren lassen könnte. Tatsächlich ist das aber nur eine theoretische Möglichkeit, genauso wie ein Verfahren, das auf einer ähnlichen Idee beruht, aber auf direktem Wege zu kompakten Merkmalsvektoren führt, ohne den Umweg über unter Umständen sehr lange Kookkurrenzvektoren. Dieses auf einem vergleichsweise einfachen neuronalen Netz beruhende Verfahren mit dem Namen Word2Vec wurde im Jahre 2013 bei Google entwickelt. Das neuronale Netz wird dabei ganz ähnlich wie ein Transformer-Sprachmodell trainiert und lernt, die One-Hot-Vektoren der Worte eines Vokabulars derart auf kompakte Merkmalsvektoren abzubilden, dass aus diesen Vektoren die bedingten Wahrscheinlichkeiten für die gemeinsam vorkommenden Worte berechnet werden können. Diese Vektoren wurden Wort-Embeddings genannt, also Einbettungen von Worten in einen Vektorraum. Von Embeddings spricht man heute auf allen linguistischen Ebenen, von Token-, Satz- und schließlich sogar Text-Embeddings.

Wie schon erwähnt: Auch die per Word2Vec gelernten Merkmalsvektoren hätte man als gleichsam vorprozessierte Rohdaten für Sprachmodelle verwenden können. Man ist aber schließlich einen anderen Weg gegangen und lässt ein Sprachmodell die Wort-Embeddings im selben Trainingsdurchlauf lernen, in dem auch die Vorhersage des nächsten Wortes (Tokens) gelernt wird. Auf diese Weise ist das neuronale Netz flexibler bei der Anpassung seiner Gewichte und kann die Gewichte für das Wort- bzw. Token-Embedding und die Gewichte, die im eigentlichen Transformer und dem Aufmerksamkeitsmechanismus zum Einsatz kommen, besser aufeinander abstimmen.

# 4.4 Wie funktionieren Transformer und Aufmerksamkeit? 

Im Kapitel über die Berechnung des nächsten Wortes haben wir skizziert, wie Transformer-Sprachmodelle (und nur um die geht es in diesem Buch) im Prinzip funktionieren:

1. Von Merkmalsvektoren isolierter Worten (Token) ausgehend, also Gruppen von aktiven Neuronen, die die Worte repräsentieren,
2. gelangt ein Sprachmodell durch sukzessives Prüfen von Beziehungen zwischen den Worten bzw. ihren Repräsentationen und
3. anschließender Überlagerung derjenigen Worte, zwischen denen eine hinreichend starke Beziehung besteht,
4. zu immer inhaltsreicheren Repräsentationen immer gehaltvollerer „höherstufiger" Texteinheiten (wie Phrasen und Sätze),
5. bis am Ende eine Gruppe von Neuronen (die des letzten Wortes/Tokens) den gesamten Textinhalt repräsentiert und
6. den Wahrscheinlichkeitsvektor (eine weitere Gruppe von Neuronen) liefert, aus dem schließlich das „wahrscheinlichste" nächste Wort ausgewählt wird.

In diesem Kapitel beleuchten wir, wie dieses Prüfen von Beziehungen zwischen Worten und deren anschließende Überlagerung im Detail vonstattengeht. Dieser Mechanismus - der sogenannte Aufmerksamkeitsmechanismus ist im Prinzip recht gut verständlich und folgt einer nachvollziehbaren Logik. Wirksam wird der Aufmerksamkeitsmechanismus in den sogenannten Aufmerksamkeitsköpfen (englisch attention heads) eines Transformers, die in unserer Darstellung durch quadratische, farbig umrandete Kästchen symbolisiert sind, und die auf ganz bestimmte Weise miteinander verknüpft sind und miteinander wechselwirken.

Von jetzt an sprechen wir anstatt von Transformer-Sprachmodellen nur noch von Transformern. Warum Transformer Transformer heißen, ist relativ klar: Sie transformieren etwas (die Repräsentationen der Worte des Eingabetextes) in etwas anderes (die Repräsentation des Textes bzw. seines Inhalts als Ganzes). ${ }^{6}$ Dass diese Repräsentation des Inhalts eines Textes in einem einzigen letzten Verarbeitungsschritt - der noch dazu im Wesentlichen nichts anderes ist als die Umkehrung des allerersten Schritts, nämlich der Abbildung der One-Hot-Vektoren auf die Merkmalsvektoren der Eingabeworte - das nächste, plausible Wort liefert, gehört zum Erstaunlichsten, wenn nicht gar zu den „Wundern", die Transformer-Sprachmodelle zu bieten haben. Warum der Aufmerksamkeitsmechanismus so heißt, wie er heißt, ist weniger offensichtlich. Zwar hört oder liest man immer wieder, dass die Aufmerksamkeit, die in ihm wirksam wird, ein Äquivalent zur Aufmerksamkeit ist, die der Mensch auf etwas richtet („das Wichtige"), doch trifft das den Kern der Sache nicht ganz. Zwar liegt der Aufmerksamkeitsmechanismus - auf allerdings nicht ganz einfach nachvollziehbare Weise - der speziellen Fähigkeit von Sprachmodellen zugrunde, in der Zusammenfassung eines Textes auf das Wichtige abzuheben (und so zum Beispiel die Aufmerksamkeit des menschlichen Nutzers darauf zu lenken), aber so gesehen liegt er allen Fähigkeiten von Sprachmodellen zugrunde, denn mit etwas anderes als dem Aufmerksamkeitsmechanismus arbeitet ein Sprachmodell nicht. Und für alle

[^0]
[^0]:    ${ }^{6}$ Auf einer anderen Betrachtungsebene kann man auch sagen, dass sie eine Ein-gabe(-Sequenz) in eine Ausgabe(-Sequenz) transformieren.

![img-30.jpeg](img-30.jpeg)

Abb. 4.15 Übersicht über den schrittweisen Prozess der Analyse eines Satzes, in dem Elemente (Token, Worte, höherstufige Textelemente) in jeder Schicht auf eine bestimmte Beziehung hin untersucht werden. Nachfolgende Textelemente (weiter rechts) werden mit ihnen vorangehenden überlagert, je nachdem wie stark sie in der fraglichen Beziehung stehen (fette Linien). Dem Folgenden vorausgreifend sind hier die Beziehungen „X ist Artikel zum Substantiv Y" (rot), „X ist Verb zur Nominalphrase Y" (blau) und „X ist Nominalphrase zur Verbalphrase Y" (grün) angedeutet. In der untersten Schicht finden wir Worte, in der darüber Nominalphrasen, darüber Verbalphrasen und schließlich einen ganzen Satz. Was das nächste Wort sein könnte, das der Transformer ausgibt, bleibt hier dahingestellt, steht aber auch nicht im Mittelpunkt. Es geht vor allem um den stufenweisen Aufbau (die Synthese) der Repräsentation des Textes, in diesem Falle also eines einfachen Satzes. (ChatGPT setzt diesen Satz übrigens mit „Das" und anschließend mit „ist ein einfacher Satz auf Deutsch" fort.)

Fähigkeiten von Sprachmodellen ist es nicht einfach nachzuvollziehen, wie genau sie auf dem Aufmerksamkeitsmechanismus beruhen. Aber weil sie es tun, ist es wichtig, ihn prinzipiell zu verstehen, um so überhaupt eine Chance zu haben, Sprachmodelle zu verstehen. Das wissenschaftliche Paper, das 2017 dem Aufmerksamkeitsmechanismus den Durchbruch in der Wahrnehmung nicht nur der Fachöffentlichkeit brachte, trug übrigens den vielsagenden Titel „Attention is all you need!" ([36]).

Wenn überhaupt, dann lässt sich der Begriff „Aufmerksamkeit" so begründen: In einem Aufmerksamkeitskopf richtet ein Sprachmodell seine Aufmerksamkeit („Aufmerksamkeit 1") auf eine ganz bestimmte Beziehung zwischen zwei Textelementen, am Anfang zwischen Token und Worten, im weite-

ren Verlauf zwischen höherstufigen Elementen wie Phrasen und Sätzen oder gar ganzen Passagen eines Textes. Dabei richtet wiederum ein Textelement T seine Aufmerksamkeit („Aufmerksamkeit 2") auf diejenigen Textelemente, die besonders stark in der Beziehung zu ihm stehen, für die der aktuelle Aufmerksamkeitskopf verantwortlich ist. Diesen anderen Textelementen „erlaubt" das Textelement T dann, es - metaphorisch gesprochen - zu ergänzen, in es hineinzufließen und es semantisch anzureichern.

Wenn in einem Aufmerksamkeitskopf zwei Elemente (Token, Worte oder höherstufige Texteinheiten) in Hinblick auf eine bestimmte Beziehung verglichen (oder geprüft) werden sollen, sind ihre beiden Merkmalsvektoren alles, was dem Transformer dafür zur Verfügung steht. Wie allerdings eine Beziehung zwischen zwei Dingen - egal ob Worte, Sätze, Gegenstände, Personen, Sachverhalte, Konzepte - auf ihren Merkmalen allein beruhen kann, ist erst einmal nicht klar. Beziehungen zwischen Dingen, so würde man vielleicht denken, gehen über ihre Eigenschaften hinaus und lassen sich nicht auf ihre jeweiligen Merkmale reduzieren. Doch dem ist nicht unbedingt so. Zum einen können beliebige Dinge in einer Ähnlichkeitsbeziehung zueinander stehen, die nur auf ihren Merkmalen beruht, und die sich zum Beispiel durch Zählen ihrer gemeinsamen Merkmale quantifizieren lässt. Zum anderen können nicht beliebige Dinge in einer bestimmten Beziehung zueinander stehen, und einige notwendige Bedingungen auf Merkmalsebene müssen erfüllt sein. Zu diesen kann gehören, dass sie bestimmte gemeinsame Merkmale, also eine gewisse „semantische" oder „ontologische" Verwandtschaft haben müssen. (Physikalische Gegenstände können zum Beispiel nicht in physikalischen Beziehungen zu abstrakten Konzepten stehen.) Es kann aber auch der Fall sein, dass sie in bestimmten Merkmalen ausdrücklich nicht übereinstimmen dürfen. Wie dem auch sei, dem Aufmerksamkeitsmechanismus gelingt es auf jeden Fall, Beziehungen zwischen Textelementen allein aufgrund ihrer Merkmalsvektoren zu berechnen. Wir werden gleich sehen, wie

Mit der Berechnung einer Beziehung zwischen zwei Textelementen (und ihrer Stärke) ist es im Aufmerksamkeitsmechanismus aber noch nicht getan. Dieser Berechnung schließen sich einige weitere Schritte an. Zunächst werden all die Worte (bzw. ihre Vektoren), die zum fraglichen Element am stärksten in einer bestimmten Beziehung stehen, diesem semantisch hinzuaddiert, und zwar gewichtet durch die Beziehungsstärke. Anschließend werden die so entstandenen Merkmalsvektoren in einen neuen semantischen Raum projiziert, der der Verarbeitungsebene und der Art von Textelement angemessener ist, die erreicht wurde. (Merkmalsvektoren für Worte sind nicht mehr geeignet für Sätze, Merkmalsvektoren für Sätze sind nicht mehr geeignet für Absätze, usw.)

Wir werden zunächst die Berechnung der Beziehungen und ihrer Stärke in den Achtsamkeitsköpfen anhand einiger einfacher Beispiele genauer unter die Lupe nehmen. Man kann dabei im Hinterkopf behalten, dass, wann immer hier von Merkmalsvektoren die Rede ist, Neuronengruppen gemeint sind, und wenn von Projektionen von Vektoren die Rede ist, Projektionen einer Neu-

ronengruppe auf eine andere gemeint sind, über synaptische Verbindungen. Unsere Beispiele sind:

- Wie sich ein Artikel und ein Substantiv zu einer Nominalphrase verbinden.
- Wie sich ein Adjektiv und ein Substantiv zu einem attribuierten Substantiv verbinden.
- Wie sich ein Verb und eine Nominalphrase zu einer Verbalphrase verbinden.
- Wie sich eine Nominalphrase und eine Verbalphrase zu einem Satz verbinden.
- Wie ein Pronomen seinem Referenten (zum Beispiel einer Nominalphrase) richtig zugeordnet wird.

Wir erläutern das anhand einfacher Sätze wie „Ein Hund nagt einen Knochen" oder „Die Katze trank die Milch, weil sie süß war". Diese sind zwar weit entfernt von „echten", also längeren Texten, die über mitunter schwierige Themen in nicht immer ummissverständlicher Sprache oder gar höherstufiger Logik sprechen, und die zu verstehen Sprachmodelle ja ebenfalls entwickelt wurden und in der Lage sind. Aber dieses Verstehen, das heißt der sukzessive Aufbau von Repräsentationen, beruht auch für lange, verschachtelte und höherstufige Texte auf demselben Prinzip - und es ist nur eines! -, das naturgemäß an einfachen und vielleicht trivial anmutenden Beispielen besser zu erklären ist.

Wir führen uns mit Abbildung 4.8 auf Seite 148 zunächst noch einmal - in ihrer Transparenz idealisierte und hypothetische - Merkmalsvektoren für die in unseren Beispielen vorkommenden Worte vor Augen, auf denen alles weitere beruhen wird. Semantische Merkmale gibt es in ungleich größerer Zahl als grammatikalische, und wir müssen uns die Vektoren in Abbildung 4.8 durchaus bis auf tausend oder gar zehntausend und mehr semantische Merkmale fortgesetzt vorstellen (was in aktuellen Sprachmodelle realistische Zahlen sind). Es gibt aber nicht nur mehr semantische als grammatikalische Merkmale, sondern es gibt sie auch in verschieden starken Ausprägungen. Inhaltsworte (typischerweise Substantive, Verben und Adjektive) gehören also nicht „ganz oder gar nicht" zu einer semantischen Kategorie, sondern verschieden stark. Diese Bedeutungsmancen nutzen Sprachmodelle aus, wir ignorieren sie hier aber zum Zwecke der vereinfachten Darstellung. Funktionsworte wie Artikel, Hilfsverben, Pronomen und Präpositionen haben normalerweise gar keine semantischen Merkmale. Grammatikalische Merkmale wiederum sind im Allgemeinen binär, zum Beispiel ist ein Wort entweder ein Artikel oder nicht, und wenn es ein Artikel ist, ist er entweder bestimmt oder unbestimmt.

In echten Transformern, in denen Merkmalsvektoren während des Trainings „gelernt" und nicht maßgeschneidert und transparent sind, sieht es keineswegs so aufgeräumt aus wie in Abbildung 4.8, sondern eher wie in Abbildung 4.16 (unten). Zum einen arbeiten echte Transformer, wie wir mittlerweile wissen, nicht mit Worten, sondern zum Teil bedeutungslosen Token, und zum anderen (und damit einhergehend) haben die Komponenten der

Vektoren keine nachvollziehbare Bedeutung oder „Beschriftung", und grammatikalische und semantische Merkmale sind heillos ineinander verwoben.
![img-31.jpeg](img-31.jpeg)

Abb. 4.16 So sähen Merkmalsvektoren von Teilen in einem echten Transformer aus. Jede Beschriftung der Merkmalspalten erübrigt sich, weil die Kategorien auf nicht nachvollziehbare Weise während des Trainings gebildet wurden und grammatikalische mit semantischen Merkmalen vermengen.

Für das Funktionsprinzip tut das allerdings nichts zur Sache, und wir bleiben bei unseren idealisierten und „transparenten" Merkmalsvektoren aus Abbildung 4.8.

Nominalphrasen. Wie können Merkmalsvektoren helfen, eine bestimmte Beziehung zwischen zwei Worten zu berechnen? Betrachten wir die Worte „die" und „Katze", die in der Beziehung „X ist Artikel zum Substantiv Y" (der Artikel-Substantiv-Beziehung) stehen können und zusammen eine Nominalphrase bilden. Dass zwischen den beiden Worten noch beliebig viele andere Worte stehen können (wie in „die von seiner Mutter alleingelassene junge Katze") ist ausdrücklich erlaubt und ist eine der Stärken von Transfor-mer-Sprachmodellen. Notwendige Bedingungen für das Bestehen der Artikel-Substantiv-Beziehung sind:

1. X ist ein Artikel.
2. Y ist ein Substantiv.
3. X und Y gehören zur selben Sprache.
4. X und Y stimmen in Numerus, Genus und Kasus überein.

Um zu prüfen, ob „die" und „Katze" in der Artikel-Substantiv-Beziehung stehen, filtert ein Transformer (bzw. unser Spielzeug-Transformer) zunächst

die relevanten Merkmale aus den Merkmalsvektoren heraus, projiziert also die Merkmalsvektoren auf geeignete kürzere Versionen. Wenn man dabei alle gemeinsamem und außerdem die Merkmale „Artikel" und „Substantiv" zur Deckung bringt, sieht man, dass die Beziehung besteht, wenn die projizierten Vektoren in hinreichend vielen - in unserem Falle fünf - Komponenten übereinstimmen (denn eine der beiden Übereinstimmungen für den Nominativ oder den Akkusativ dürfte fehlen). Beziehungsweise, dass die Beziehung umso stärker ist, in je mehr Komponenten die beiden projizierten Vektoren übereinstimmen, in unserem Falle also sogar sechs. Den Grad der Übereinstimmung nennt man „Score".
![img-32.jpeg](img-32.jpeg)

Abb. 4.17 Die projizierten Vektoren von „die" und „Katze" stimmen in sechs Merkmalen überein, haben also bezüglich der Artikel-Substantiv-Beziehung einen Score von 6. Man kann dabei der Übereinstimmung bestimmter „wichtiger" Komponenten - wie zum Beispiel der fünften - ein zusätzlichen Gewicht verleihen, so dass sie nicht durch eine zufällige Übereinstimmung in einer anderen „sporadischen" Komponente ausgeglichen werden kann.

Entscheidend ist, dass die beiden Vektoren nicht auf dieselbe Weise projiziert werden. Wie in Abbildung 4.18 zu sehen, wird für „die" das fünfte Merkmal („Artikel") auf das fünfte Merkmal des Zielvektors abgebildet, für „Katze" das achte („Substantiv").

Wenn zwei Vektoren auf dieselbe Weise projiziert werden, kann man nur eine symmetrische, also ungerichtete Beziehung berechnen, zum Beispiel „X und Y sind sich ähnlich". (Neben der Gleichheit ist Ähnlichkeit die prototypische symmetrische Beziehung). Um gerichtete Beziehungen zu berechnen - und um diese geht es viel häufiger -, müssen die zwei zu vergleichenden Merkmalsvektoren also notwendig auf unterschiedliche Weise projiziert werden, und erst anschließend wird eine (dann allerdings symmetrische) Ähnlichkeit berechnet, im Wesentlichen durch das Zählen gemeinsamer Merkmale. Mathematisch realisiert werden kann das Zählen der gemeinsamen Merkmale durch Bildung des Skalarprodukts der beiden Vektoren - d.h. der Summe aller Produkte der Komponenten -, und tatsächlich heißt der entsprechende Rechenschritt in einem Transformer „Berechnung der Skalarproduktähnlichkeit".

Denjenigen, die sich schon eingehender mit dem Aufmerksamkeitsmechanismus beschäftigt haben, ist vielleicht klar, dass es sich bei den beiden projizierten Vektoren um die sogenannten Query- und Key-, also Frage- und Schlüsselvektoren handelt. Dabei handelt es sich um eine etwas irreführende Namensgebung. Sachgerechter wäre der Begriff „Rollenvektoren", weil sie

![img-33.jpeg](img-33.jpeg)

Abb. 4.18 Bei der Projektion der Wortvektoren auf die Rollen-, bzw. Query- und KeyVektoren wird einmal das Merkmal „Artikel" und einmal das Merkmal „Substantiv" auf die fünfte Komponente des Zielvektors projiziert.
nämlich die zwei (unterschiedlichen) Rollen beschreiben, die die zwei Worte in der in Frage stehenden Beziehung spielen. Und diese beiden Rollen sind es, die zusammenpassen müssen, damit die beiden Worte in der Beziehung stehen, genauer gesagt: In dem Maße, wie die beiden Rollen zusammenpassen, stehen die beiden Worte in der Beziehung. Von daher wären Schloss- und Schlüsselvektoren bessere Namen gewesen, aber die Wahl der technischen Namen hatte historische Gründe, und sie werden von Fachleuten gut verstanden. (Später von Laien oder Anfängern intuitiv verstanden zu werden, spielte bei der Wahl der Namen - wie so oft - keine Rolle.)

Die Rollenvektoren für andere Wortpaare wie „die" und „trank" oder „ein" und „Katze" passen erwartungsgemäß nicht, bzw. nicht so gut zusammen, haben also einen niedrigeren Score (siehe Abb. 4.19). Sie würden als Kandidaten für Nominalphrasen von einem Transformer verworfen werden, es sei denn, es findet sich kein passenderer Artikel für „Katze", dann würde der Transformer womöglich mit der leicht fehlerhaften Nominalphrase „ein Katze" vorliebnehmen.

An dieser Stelle eine Bemerkung zum Thema „Wortpositionen". Auf die notwendige Bedingung, dass ein Artikel vor dem Substantiv stehen muss, dass ihre relativen Positionen also eine Rolle spielen, sind wir in unserem Beispiel nicht eingegangen. Grundsätzlich sind Wortpositionen von großer Wichtigkeit, und in nicht-flektierenden Sprachen sind sie es, die die Beziehungen der

![img-34.jpeg](img-34.jpeg)

Abb. 4.19 Das Paar „ein" und „Katze" kommt immerhin auf einen Artikel-SubstantivScore von 4, „die" und „trank" nur auf 2.

Worte zueinander und damit die Bedeutung eines Satzes maßgeblich bestimmen. Transformer-Sprachmodelle bedienen sich dafür einer Technik namens „Positional Encoding", das den Merkmalsvektoren ganz am Anfang, gleich nach ihrer Erzeugung aus den One-Hot-Vektoren, Informationen über die Position des Wortes in der Eingabe aufmodulieren. Diese Information wird dann später im Aufmerksamkeitsmechanismus berücksichtigt, ohne dessen Funktionsweise aber im Prinzip zu verändern. Darauf genauer einzugehen, würde aber den Rahmen dieses Buches sprengen und wir lassen es bei diesem Hinweis auf das Stichwort - „Positional Encoding" - bewenden.

Wir schauen uns stattdessen noch einige andere Beziehungen an, die in Aufmerksamkeitsköpfen berechnet werden können.

Attribuierte Substantive. Die Bedingungen für das Bestehen der Adjektiv-Substantiv-Beziehung sind fast identisch mit denen für die Artikel-SubstantivBeziehung (siehe Abb. 4.20):

1. X ist ein Adjektiv.
2. Y ist ein Substantiv.
3. X und Y gehören zur selben Sprache.
4. X und Y stimmen in Numerus, Genus und Kasus überein.

Verbalphrasen. Verbalphrasen bestehen im einfachsten Falle aus einem transitiven Verb und einer Nominalphrase im Akkusativ. Die fragliche Beziehung besteht, wenn folgende Bedingungen erfüllt sind:

1. X ist ein transitives Verb.
2. Y ist eine Nominalphrase im Akkusativ und/oder eher „passiv".
3. X und Y gehören zur selben Sprache.

Abbildung 4.21 zeigt, wie „nagt" und „einen Knochen" in dieser Beziehung stehen. Dabei ist der Merkmalsvektor von „einen Knochen" bereits ein aus den Merkmalsvektoren von „einen" und „Knochen" überlagerter und trägt

![img-35.jpeg](img-35.jpeg)

Abb. 4.20 Die Rollenvektoren für „junger" und „Hund" passen gut zusammen (der Score beträgt 5) und beide zusammen bilden ein attribuiertes Substantiv.
daher das Merkmal „Akkusativ". Auf diese Überlagerung kommen wir weiter unten zurück.
![img-36.jpeg](img-36.jpeg)

Abb. 4.21 Die Rollenvektoren von „nagt" und „einen Knochen" passen für die Verbalphrasen-Relation zusammen. Dabei kann ein Merkmal (hier „Transitiv") durchaus mehrmals in einem Rollenvektor vorkommen, weil es in unserem Falle sowohl mit dem Merkmal „Akkusativ" als auch mit dem Merkmal „Passiv" zusammenpassen soll. (Solcher Art „Konventionen" lernen Transformer-Sprachmodelle während ihres Trainings. Sie bedeuten nichts Bestimmtes, die Projektion hätte zum Beispiel auch das Merkmal „Verb" mehrmals verwenden können.)

In den als gleichbedeutend lesbaren Sätzen „Die Katze trank die Milch" und „Die Milch trank die Katze" (evt. mit einer besonderen Betonung auf „Milch", die ein Sprachmodell aber nicht hören würde) sähe es etwas schwieriger aus. Beide Nominalphrasen „die Milch" und „die Katze" können sowohl im Nominativ als auch im Akkusativ stehen. Das ist ein typischer Fall von syntaktischer Ambiguität, und die Sätze könnten auch bedeuten, dass die Katze von der Milch getrunken wurde. Diese Ambiguität kann aber semantisch aufgelöst werden, weil Milch eher „passiv" und Katzen eher „aktiv" sind (d.h. entsprechende semantische Merkmale tragen), und dass daher eher die Milch als passives Objekt des transitiven Verbs „trank" in Frage kommt (siehe Abb. 4.22).

Einfache Sätze. Die zu untersuchende Beziehung lautet hier „X ist Nominalphrase zur Verbalphrase Y" und besteht, wenn, wie in Abbildung 4.23 verdeutlicht, folgende Bedingungen erfüllt sind:

1. X ist eine Nomimalphrase.
2. Y ist eine Verbalphrase.
3. X und Y gehören zur selben Sprache.

![img-37.jpeg](img-37.jpeg)

Abb. 4.22 In der Beziehung „X ist Verb zur Nominalphrase Y" hat „die Milch" einen höheren Score (4) als „die Katze" (3) und wird daher ausgewählt, um die Verbalphrase „trank die Milch" zu bilden.
4. X und Y stimmen in Numerus und Kasus überein.
![img-38.jpeg](img-38.jpeg)

Abb. 4.23 Das Merkmal „Verbalphrase" für „trank die Milch" wurde in diesem Falle gedoppelt, um einen Übereinstimmungpartner für das Merkmal „Nomina$\mathrm{tic}^{\text {" }}$ zu haben. Der Score (hier 4) ist hoch genug, um die beiden Phrasen zu einem Satz zu verbinden.

Pronomen. Abschließend betrachten wir die Auflösung von Pronomina. Die Beziehung, um die es geht, lautet „X bezieht sich auf $\mathrm{Y}^{\text {" }}$, so, wie sich das Pronomen „sie" im Satz „Die Katze trank die Milch, weil sie süß war" auf die Nominalphrase „die Milch" bezieht.
F: Die Katze trank die Milch, weil sie süß war? Wer oder was war süß? A: Der Satz „Die Katze trank die Milch, weil sie süß war" sagt aus, dass die Katze die Milch getrunken hat, weil die Milch süß war.

Dafür muss X ein Pronomen und Y eine Nominalphrase sein, und beide müssen vom selben grammatikalischen Geschlecht sein - mehr nicht. Im Satz „Die Katze trank die Milch, weil sie süß war" kann sich „sie" aber nicht nur auf die Milch, sondern auch auf die Katze beziehen. Woran aber erkennt ein Sprachmodell, dass es sich auf die Milch bezieht? Hier kommt wie im Beispiel der Verbalphrase Semantik ins Spiel. Zwar können auch Katzen süß sein, aber die semantische Beziehung zwischen „süß" und „Milch" ist stärker, weil zum

Beispiel im semantischen Vekor des Wortes „süß" wie im semantischen Vektor des Wortes „Milch" das Merkmal „Nahrung" stärker ausgeprägt ist als „Tier". Außerdem würde ein echtes Sprachmodell auf einer anderen Ebene der Verarbeitung erkennen - und da käme Weltwissen ins Spiel -, dass selbst wenn die Katze süß wäre, das nicht der Grund dafür sein würde, dass sie die Milch trinkt, und dass „süß" sich auch deswegen auf die Milch beziehen muss.

Das war gewissermaßen im Schnelldurchlauf eine Darstellung des Grundprinzips des Aufmerksamkeitsmechnanismus' und wie er vor allem bei der syntaktischen Analyse zum Einsatz kommt. Er setzt allerdings in echten Trans-former-Sprachmodellen, die auf Token basieren, noch tiefer an, auf der Ebene der Wortbildung oder Morphologie. Wenn wir uns Token als Morpheme vorstellen - wie in Kapitel 4.1 geschehen -, dann könnten die ersten Stufen der Textanalyse bzw. -synthese in den untersten Schichten des neuronalen Netzes so aussehen wie in Abbildung 4.24.

Oberhalb der morphologischen und syntaktischen Ebene - als Schichten des neuronalen Netzes betrachtet - passieren dann allerdings erst die wirklich spannenden Dinge. Hier spielen morphologische und grammatikalische Beziehungen kaum noch eine Rolle, sondern nur noch „echte" Beziehungen, wie etwa argumentative, logische, kausale und sonstige „inhaltlichen" Beziehungen zwischen Sätzen und ganzen Textpassagen und den in ihnen beschriebenen Dingen und Sachverhalten. Dazu gehören immer auch referentielle Bezüge, die wir am einfachen Beispiel von Pronomina kennengelernt haben, die das Feld der Referenzen aber bei Weitem nicht ausschöpfen. Synonyme gehören hier ebenso dazu wie jede Art von verschiedenen Be- und Umschreibungen derselben Sache. Diese auch über weite Distanzen als auf dasselbe sich beziehend zu erkennen, ist es, was einen Text ganz wesentlich zusammenhält

Die Zahl möglicher und denkbarer Beziehungen ist wie die Zahl möglicher Worte und Dinge nicht greifbar. Doch lassen sich alle Beziehungen zwischen Dingen, über die man mit einem Sprachmodell sprechen kann, aus denen, die ein Sprachmodell konkret zu berechnen lernt - die Zahl ist ihm vorgegeben, zum Beispiel ca. 10.000 für ChatGPT -, „zusammensetzen", so wie sich alle Bedeutungen von Worten und Texten aus den ca. 10.000 Komponenten der Merkmalsvektoren „zusammensetzen" lassen. Dieses Kompositionalitätsprinzip liegt Sprachmodellen also gleich zweimal zugrunde: für die „Dinge" - einschließlich Worte, Sätze und ganze Texte - durch Merkmalsvektoren und für die Beziehungen zwischen ihnen durch die Aufmerksamkeitsköpfe. (Dass beide Dimensionen etwa gleich groß sind, ist eher als Zufall zu betrachten.)

Um aber zu verstehen, wie überhaupt „höherstufige" Beziehungen zwischen „höherstufigen" Dingen bestehen und berechnet werden können - wo wir doch bislang nur Token und Worte und ihre Merkmalsvektoren kennengelernt haben -, müssen wir auf die eingangs erwähnten Verarbeitungsschritte zurückkommen, die sich der Berechnung einer Beziehung zwischen den To-

![img-39.jpeg](img-39.jpeg)

Abb. 4.24 Der schrittweise Prozess der Analyse eines aus Morphemen (Token) zusammengesetzten Wortes. Aus mehreren Morphemen ein Wort wie „verwegener" zu rekonstruieren, kann schon etliche Verarbeitungsschritte benötigen. In echten Transformern geschieht das bei weitem nicht so transparent und nachvollziehbar. Mitunter ist ein Wort erst zu Ende rekonstruiert, wenn der umgebende Satz in seiner Struktur schon fertig ist, wofür z.B. das Morphem „-er" genügt haben könnte: Egal, was vor dem „-er" steht, der Hund steht im Nominativ und kann in Sätze integriert werden. Wobei es nicht einmal klar abgegrenzte Verarbeitungsschritte geben muss, nach denen ein Wort, eine Phrase oder ein Satz als wohldefinierte Entität ein für alle Mal und kristallklar fertiggestellt und als Merkmalerektor repräsentiert ist. In echten Transformern ist alles viel „statistischer" und „diffuser". Was an dieser schematischen Darstellung ebenfalls deutlich wird: „Höherstufige" Elemente, wie hier ganz oben rechts ein „verwegener Hund", sind in einem Aufmerksamkeitskopf in einer Schicht an einer Position repräsentiert, und zwar an der Position des letzten all der Token, die es in sich „aufgenommen" hat. Auf dieses „Aufnehmen" gehen wir weiter unten ein.
ken und Worten eines Textes anschließen. Diese Verarbeitungsschritte finden immer innerhalb einer Schicht, genauer: eines Aufmerksamkeitskopfes statt, nachdem dort die Stärken einer Beziehung berechnet wurden. Wie eingangs erwähnt, werden die Worte (bzw. ihre Vektoren), die am stärksten zu einem gegebenen Wort in Beziehung stehen, diesem auf geeignete Weise hinzuaddiert. Das ist der erste dieser weiteren Verarbeitungsschritte. Dadurch wird im einfachsten Fall aus einer „Katze" eine unbestimmte Katze (,eine Katze"), aus einem „Hund" ein „junger Hund" oder aus „nagt" und „einen Knochen" die Verbalphrase „nagt einen Knochen". Doch findet diese Addition noch im semantischen Raum statt, in dem die Beziehungen berechnet wurden, in die-

sen Beispielen also dem semantischen Raum von Worten. Doch schon mit der Verbalphrase ist man auf einer anderen (sprach-)ontologischen Ebene, allerspätestens aber dann, wenn man Verbal- und Nominalphrasen zu Sätzen verbunden hat. Auf dieser ontologischen Ebene gelten aber andere Gesetze und gibt es andere Beziehungen als zwischen Worten. Dem muss Rechnung getragen, indem man die „alten" überlagerten Merkmalsvektoren in einen „neuen" und „höheren", aber gleichdimensionalen semantischen Raum projiziert. Dies geschieht immer noch innerhalb einer Schicht und innerhalb eines Aufmerksamkeitskopfes, und zwar in zwei Schritten. Zuerst wird der „alte" Merkmalsvektor in einen deutlich größeren Zwischenraum projiziert. Das ist die sogenannte Feedforward-Schicht, die deshalb so groß ist - bis zu viermal so groß wie die Merkmalsvektoren, zwischen denen sie vermittelt -, weil auf diese Weise sehr viele lernbare Parameter ins Spiel kommen, in denen das Sprachmodell unter anderem Weltwissen speichern kann, oder anders betrachtet: noch filigranere Muster zu unterscheiden und noch komplexere Funktionen zu berechnen lernen kann. (Wir erinnern uns: Was ein Sprachmodell tut, ist, eine sehr komplexe Wahrscheinlichkeitsfunktion zu berechnen.) Für beides ist neben der schieren Größe der Feedforward-Schicht (die die Mehrzahl der Synapsen eines Sprachmodells enthält) noch ein Zweites verantwortlich: dass in ihr - anders als in den anderen Teilen des Aufmerksamkeitsmechanismus' - eine nicht-lineare Aktivierungsfunktion zum Einsatz kommt, die ein Neuron erst feuern lässt, wenn sein aufaddierter Input einen gewissen Schwellenwert überschreitet. ${ }^{7}$

Die wichtigsten Verarbeitungsschritte in einem Aufmerksamkeitskopf zeigt Abbildung 4.25. Dabei fehlen immer noch einige Berechnungsschritte, insbesondere die an anderer Stelle bereits erwähnte Softmax-Funktion (siehe Kap. 4.2), die alle Scores (in der Abbildung als Rauten dargestellt) so normiert, dass sie eine Wahrscheinlichkeitsverteilung ergeben, mit der dann die entsprechenden Value-Vektoren gewichtet werden, um den summierten Vektor V+ zu ergeben. Außerdem fehlt die Optimierungszwecken dienende sogenannte „Schicht-Normalisierung" (englisch layer normalization), die wie die Softmax-Funktion keine neuronale Operation im engeren Sinne ist - wie übrigens auch die Skalarproduktbildung nicht, doch das ist eine andere Geschichte.

Wie riesig ein großes Sprachmodell logisch gesehen ist, d.h. aus wievielen Neuronen und Synapsen es bestehen würde, wenn man es vollständig realisieren wollte, kann eine Überschlagsrechnung mit hypothetischen, aber nicht unrealistischen Zahlenwerten offenbaren:

1. Ein Sprachmodell kann Texte von 100.000 Token Länge verarbeiten.
[^0]
[^0]:    ${ }^{7}$ Nicht-Linearitäten erhöhen zum einen die Unterscheidungsfähigkeiten eines neuronalen Netzes und sind andererseits dafür verantwortlich, dass man ihren Output längerfristig nicht voraussagen kann.

![img-40.jpeg](img-40.jpeg)

Abb. 4.25 Das (fast) vollständige Innere eines Aufmerksamkeitskopfes, der von unten nach oben durchlaufen wird. Zuerst werden - durch gelernte Gewichte (kreisförmige Linienenden) - die Rollen-, bzw. Query-, Value- und Key-Vektoren aus dem Merkmalevektor M1 gebildet. Durch Shalarproduktbildung des Query-Vektors mit den (von links kommenden) Key-Vektoren der vorangegangenen Token werden die Scores, also die Stärke der Beziehung zu den vorangegangenen Tokens berechnet, und mit diesen Scores als Gewichte die ValueVektoren zum Vektor V+ aufaddiert. Durch wiederum gelernte Gewichte wird V+ auf den Merkmalevektor M2 „aufgeblasen" und diesem der ursprüngliche Vektor M1 komponentenweise hinzuzahltert. Dann folgt die nicht-lineare Feedforward-Schicht, die deutlich größer ist und abschließend auf den Merkmalevektor M1 herunterprojiziert wird. M1-3 haben alle die gleiche Dimension $d_{\text {model }} \cdot \mathrm{Q}$ und K haben dieselbe Dimension, die aber meist kleiner als $d_{\text {model }}$ ist und im Allgemeinen, aber nicht notwendigerweise auch die Dimension von V ist.
2. An jeder Position enthält es in 100 Schichten je 100 parallel arbeitende Aufmerksamkeitsköpfe. ${ }^{8}$
3. Die Merkmalevektoren M1-3 enthalten jeweils 10.000 Neuronen.

[^0]
[^0]:    ${ }^{8}$ Darauf, dass mehrere Aufmerksamkeitsköpfe in einer Schicht parallel arbeiten, sind wir hier nicht näher eingegangen. Die sogenannte Multi-Bond-Attention-Architektur trägt aber nichts wesentlich Neues bei, macht Sprachmodelle nur insgesamt leistungsfähiger - und

4. Die Q-, K-, V-Vektoren enthalten jeweils 2.500 Neuronen.
5. Der Feedforward-Layer enthält 40.000 Neuronen.

Ein einzelner Aufmerksamkeitskopf enthält somit 80.000 Neuronen. Die Zahl Synapsen ergibt sich immer als Produkt der Zahlen der Neuronengruppen, die sie verbinden, und geht somit pro Aufmerksamkeitskopf in die Milliarden. Diese Zahlen sind mit 100.000 (der Anzahl Wortpositionen) mal 10.000 (der Anzahl Aufmerksamkeitsköpfe pro Wortposition), also mit 1 Milliarde zu multiplizieren. Das Ergebnis sind Zahlen, die um viele Größenordnungen größer sind als die Anzahl von Neuronen und Synapsen im menschlichen Gehirn ( 86 Milliarden Neuronen, mehr als 100 Billionen Synapsen) und ebenfalls um viele Größenordnungen größer als die Anzahl anpassbarer Parameter des zur Zeit größten Sprachmodells. ${ }^{9}$ Die Diskrepanz erklärt sich dadurch, dass in einer Schicht alle Achtsamkeitsköpfe identisch sind, also zumindest der Faktor 100.000 (für die Wortpositionen) entfällt. Ohne diesen Faktor kommen wir mit einer Milliarde Synapsen pro Aufmerksamkeitskopf und 10.000 Aufmerksamkeitsköpfen genau auf die 10 Billionen Parameter, die für Ernie vermutet werden.

# 4.5 Wie werden Sprachmodelle vortrainiert? 

Während des Vortrainings lernt ein Sprachmodell, die Plausibilität von Worten zu berechnen, die auf ein gegebenes Stück Text folgen können. Nach dem Vortraining ist es in der Lage, das plausibelste - oder eines der plausibelsten - zu berechnen und auszugeben. Für das Training werden riesige Trainingskorpora von Milliarden von Dokumenten verwendet. Diese stammen vor allem aus dem Internet, denn nur dort sind Dokumente in ausreichender Zahl zu finden, um rein statistisch all die Regeln der Grammatik und auch das nötige Weltwissen zu erlernen, die erforderlich sind, um später grammatikalisch korrekte, sachlich plausible und im Idealfall auch inhaltlich richtige Texte zu generieren und zu verstehen.

Um zu verstehen, was beim Training vonstattengeht, muss man sich vor Augen führen, wie ein Sprachmodell im Prinzip funktioniert, bzw. funktionieren wird, nachdem es trainiert wurde, nämlich als Maschine, die zu einer Folge von Worten nicht direkt das nächste Wort berechnet, sondern erst einmal einen Wahrscheinlichkeitsvektor bzw. eine Wahrscheinlichkeitsverteilung über der Menge aller möglichen Worte, um unter diesen das Wort mit dem höchsten Wahrscheinlichkeits- oder Plausibilitätswert auszuwählen (oder ei-

[^0]
[^0]:    funktioniert besser, als wenn man entsprechend viele Aufmerksamkeitsköpfe in Reihe, also in 10.000 Schichten schalten würde.
    ${ }^{9}$ Das zur Zeit größte Sprachmodell ist angeblich der chinesische Chatbot Ernie mit 10 Billionen Parametern. Die letzte Version von GPT, für die die Zahl der Parameter von OpenAI noch offiziell mitgeteilt wurde, war GPT-3.5 mit 175 Milliarden Parametern.

nes derer mit den höchsten Werten). Wir haben das im Kapitel 4.2 skizzenhaft und im Kapitel 4.4 im Detail erläutert, aber mehr als das skizzenhafte Verständnis ist für das Folgende nicht nötig.
![img-41.jpeg](img-41.jpeg)

Abb. 4.26 Dieser schematische Aufbau eines Transformers ist uns schon mehrfach begegnet. In dieser Darstellungsvariante sind die zu lernenden Parameter (Synapsen) betont. In der untersten und obersten Schicht geht es um das Embedding und gewissermaßen UnEmbedding der Merkmalevektoren, in den Schichten dazwischen um die Synapsen, die am Aufmerksamkeitmechanismus beteiligt sind. An jeder (horizontalen) Wortposition handelt es sich um die gleichen Parameter.

In Abbildung 4.26 sind in drei Schichten Aufmerksamkeitsköpfe (englisch attention heads) skizziert, die über synaptische Verbindungen (eingekreist) miteinander kommunizieren und Beziehungen zwischen Worten berechnen.

Auf Grundlage der berechneten Beziehungen werden spätere Worte durch frühere Worte semantisch angereichert und führen so zu einer internen Repräsentation des Eingabetextes (oben rechts), aus der der Wahrscheinlichkeitsvektor berechnet wird. Die blau markierten synaptischen Verbindungen unten bilden - wie in Kapitel 4.2 beschrieben - die „bedeutungslosen" One-Hot-Vektoren auf die grammatisch-semantischen Merkmalsvektoren von Worten ab, die blau markierten oben rechts machen genau das Umgekehrte.

Bevor mit dem Vortraining begonnen wird, werden die synaptischen Gewichte des Sprachmodells, die die Berechnungen auf dem Weg von den One-Hot-Vektoren der Eingangsworte zum Wahrscheinlichkeitsvektor für das nächste Wort (oben rechts) ausführen sollen, mit zufälligen Werten belegt, allerdings alle in derselben Schicht mit den gleichen (durch gleichfarbige Kreise kenntlich gemacht). Wenn man also anfangs irgendeine Folge von Worten eingibt, kommt oben ein erst einmal rein zufälliger Wahrscheinlichkeitsvektor heraus, dessen wahrscheinlichstes Wort also irgendein Wort sein wird, das mit den Eingabeworten grammatikalisch und inhaltlich nicht das Geringste zu tun haben wird.

Einer nach dem anderen werden nun dem Trainingskorpus zufällig Trainingstexte entnommen. Einem Trainingstext werden wiederum zufällig verschieden lange Textfragmente entnommen und dem Sprachmodell übergeben. Zwei Worte müssen die Textfragmente mindestens lang sein, aber je nachdem, mit wie langen Texten ein Sprachmodell später umgehen können soll und wie lange Gespräche es führen können soll - können und müssen es auch bis zu mehrere tausend Worte sein. Die ausgewählten Textfragmente können durchaus überlappen, auf Satz- oder Sinagrenzen wird dabei nicht geachtet. Rein rechnerisch kann man einem Text von $n$ Worten $n(n+1) / 2$ Textfragmente entnehmen, für $n=100$ sind das 5.000 , für $n=1.000$ schon 500.000 und für $n=10.000$ sogar 50.000 .000 . Doch nicht alle davon werden für das Training verwendet - denn das wären dann doch zu viele -, sondern nur eine zufällige Auswahl von ihnen. Pro Trainingsdokument, von denen es durchaus einige Milliarden geben kann, sind es immer noch im Schnitt eher tausende als hunderte von Fragmenten. Die Zahl an Textfragmenten, die für das Training verwendet werden, also an Trainingsbeispielen, die dem Sprachmodell gegeben werden, geht also in die Billiarden und ist um Größenordnungen größer als die üblicherweise angegebene Zahl an Worten (Token), mit denen ein Sprachmodell trainiert wird, die eher in Milliarden gezählt werden.

Wie wird ein Textfragment dem Sprachmodell übergeben und was geschieht dann? Zuerst wird das Fragment in seine Worte zerlegt. (Darauf, dass es eigentlich Token sind, gehen wir in Kapitel 4.1 ein, für das Verständnis des Trainingsprinzip genügt es, sich Worte vorzustellen.) Die Idee ist nun, das Sprachmodell das letzte Wort dieser Wortfolge aus den anderen „erraten" zu lassen. Das letzte Wort eines Fragments wird dafür abgeschnitten (deswegen muss dieses mehr als zwei Worte lang sein) und der Rest dem Sprachmodell als Eingabe vorgelegt. Das Sprachmodelle berechnet nun genau so, wie es das dann auch später „im Einsatz" tun wird, einen Wahrscheinlich-

keitsvektor, nur eben mit noch nicht angepassten synaptischen Gewichten. Dieser Wahrscheinlichkeitsvektor hat wie schon erwähnt dieselbe Dimension wie die One-Hot-Vektoren der Eingabeworte, vor allem aber auch wie der One-Hot-Vektor des abgeschnittenen Wortes. (Diese Dimension, um es noch einmal zu wiederholen, entspricht genau der Anzahl der Worte des Vokabulars, auf dem das Sprachmodell operiert, also zum Beispiel 100.000.) Und dann passiert das Entscheidende: Der berechnete Wahrscheinlichkeitsvektor wird mit dem One-Hot-Vektor des abgeschnittenen, also des „richtigen" Wortes verglichen, also des Wortes, das das Sprachmodell gewissermaßen hätte ausgeben sollen. Vergleichen kann man die beiden Vektoren, weil sie dieselbe Dimension haben, und deshalb kann man rein mathematisch feststellen, wie nahe sie beieinander liegen, wie gut also der berechnete Wahrscheinlichkeitsvektor das richtige Wort „trifft". Die Abweichung wird als sogenannte Fehler- oder Verlustfunktion berechnet (siehe Kapitel 2.6 über maschinelles Lernen), die davon abhängt, wie groß die Wahrscheinlichkeit ist, die der Wahrscheinlichkeitsvektor für das richtige Wort voraussagt. ${ }^{10}$

Anschließend - und das ist der eigentliche Lernschritt - werden die synaptischen Gewichte des neuronalen Netzes derart angepasst, dass, wenn sie schon angepasst gewesen wären, der Verlust kleiner ausgefallen wäre. Dabei werden die Gewichte umso stärker angepasst, je größer die Abweichung, also der Verlust war und im Extremfall gar nicht, wenn das Wort schon richtig vorausgesagt wurde, der Verlust also 0 war. Technisch gesehen kommen hier die schon seit den Frühzeiten künstlicher neuronaler Netze angewendeten Verfahren der Rückpropagierung (englisch backpropagation) und des Gradientenabstiegs (englisch gradient descent) zum Einsatz.

Zu Beginn des Trainings, wenn naturgemäß die vorhergesagten Wahrscheinlichkeiten der „richtigen" Worte noch klein, die Verluste also noch groß sind, werden die Gewichte insgesamt stärker angepasst, später immer schwächer. Im Falle von als „höherwertig" und „wichtiger" klassifizierten Trainingstexten (wie zum Beispiel von Wikipedia-Artikeln) werden die Gewichte außerdem grundsätzlich stärker angepasst als für Texte geringerer Qualität (wie man sie auf Feld-Wald-und-Wiesen-Seiten des Internet findet), damit jene nämlich tiefere Spuren in den Synapsen des neuronalen Netzes hinterlassen.

Ein wichtiges Detail darf nicht unerwähnt bleiben. Auch wenn im obigen Diagramm zwischen zwei Schichten je sechs Gruppen von Synapsen zu sehen sind und angepasst werden müssten - und bei Textlängen von 10.000 wären es 10.000 Gruppen von Synapsen -, so sind diese alle identisch (was durch ihre identische Farbe ausgedrückt ist). Das macht sowohl theoretisch Sinn, denn in einer Schicht geht es, wie wir gesehen haben, immer um eine

[^0]
[^0]:    ${ }^{10}$ Für mathematisch Interessierte: Als Verlust wird die sogenannte Kreuz-Entropie von Wahrscheinlichkeits- und One-Hot-Vektor berechnet, und das Ergebnis ist der negative Logarithmus der vorhergesagten Wahrscheinlichkeit des richtigen Wortes. Falls das richtige Wort zufällig richtig vorausgesagt wird - die vorhergesagte Wahrscheinlichkeit also 1 ist, würde der Verlust $-\log (1)=0$ betragen, also kein Fehler gemacht worden sein.

Beziehung zwischen zwei Worten (Token, Textelementen, was auch immer), und diese eine Beziehung wird durch eine Gruppe von Synapsen berechnet, die sich innerhalb einer Schicht nicht unterscheiden sollen. Es ist egal, ob die Beziehung zwischen dem ersten und dem fünften, dem zweiten und dem siebenten oder dem 101. und dem 215. Wort berechnet wird. Denn zwei Worte, die in einer bestimmten Beziehung zueinander stehen, können ja zum Beispiel durch beliebig lange Relativsätze voneinander getrennt sein. Aus diesen theoretischen Überlegungen ergibt sich, dass man den Rechenaufwand zur Anpassung der Synapsen um einen Faktor 10.000 - im Falle von Textlängen von 10.000 Worten - reduzieren kann, was natürlich eine erhebliche Größe ist. Wenn also davon die Rede ist, dass ein Sprachmodell wie ChatGPT (in seiner Version 3.5) über 175 Milliarden Parameter (also synaptischer Gewichte) verfügt, aber gleichzeitig Texte von zehntausend und mehr Token Länge verarbeiten kann, so handelt es sich de facto um in die Billiarden gehend viele Synapsen, wenn man sich das neuronale Netz - wie in unserer Abbildung voll ausgebreitet vorstellen würde. Die Zahl 175 Milliarden bezieht sich also nur auf die Synapsen obne die Wiederholung innerhalb einer Schicht.

Nicht unerwähnt bleiben soll, dass die Anpassung der synaptischen Gewichte nicht für jedes einzelne Textfragment erfolgt, sondern in sogenannten Batches. Man berechnet dabei einen Gesamtverlust über zum Beispiel einige hundert Textfragmente auf einmal und passt die Gewichte dann auch nicht für jedes einzelne, sondern für alle Textfragmente auf einmal, den Batch also, an. Dadurch werden erhebliche Rechenkapazitäten eingespart, und das Ergebnis ist - der Fachmann staunt und der Laie wundert sich - immer noch gut. Das ist allerdings nur ein technischer Aspekt, der für das Verständnis des Grundprinzips nicht wesentlich ist. Doch selbst im Batch-Betrieb - durch den man immerhin einen Faktor 100 und mehr an Rechenkapazität einspart dauert das Training eines großen Sprachmodells immer noch mehrere Wochen bis Monate. (Wir erinnern uns: Es geht um Billionen bis Billiarden von Textfragmenten, die dem Sprachmodell während des Trainings vorgelegt werden, und jedes zieht theoretisch die Anpassung von mehreren Milliarden Synapsen nach sich.)

Wir wollen uns noch genauer anschauen, welche Arten von Textfragmenten zum Erlernen welcher Zusammenhänge - sprachlicher und inhaltlicher Natur - führen. Aus den kürzesten Fragmenten, die womöglich nur aus zwei Worten bestehen, erlernt ein Sprachmodell vor allem, welche Worte auf ein anderes folgen können, denn es gibt wohl kaum ein einzelnes Wort, dass ein anderes mit hoher Wahrscheinlichkeit „erzwingt". (Auf der Ebene von Token, auf die wir an anderer Stelle ausführlicher eingehen, sieht es anders aus. So erzwänge zum Beispiel ein hypothetisches Token „Kory" mit sehr hoher Wahrscheinlichkeit das Token „phäe".) Aus bestimmten häufigen Wortpaaren lernt ein Sprachmodell allerdings weniger, dass das zweite Wort mit gewisser Wahrscheinlichkeit auf das erste folgt, sondern es erlernt grammatikalische Beziehungen zwischen ihnen, was sich vor allem in den oben blau eingezeichneten Synapsen niederschlägt, die für die Übersetzung der One-Hot-Vektoren

in Merkmalsvektoren verantwortlich sind, und die beim Training ja ebenfalls angepasst werden. So lernt es zum Beispiel aus dem häufigen Vorkommen von „ein Hund" oder „der Hund", dass „Hund" ein Maskulinum ist (auch wenn das Sprachmodell nicht weiß, was das heißt), und weil auch „den Hund" und „dem Hund" häufig vorkommen, lernt es, dass „ein", „der", „den" und „dem" dasselbe grammatikalische Geschlecht haben.

Aus Fragmenten über ein Satzende hinweg wie „stahl ein Ei. Da" lernt ein Sprachmodell, mit welchen Worten Sätze beginnen können.

Aus ganzen Sätzen und Satzfragmenten lernt ein Sprachmodell in erster Linie die Regeln der Syntax, insbesondere den Gebrauch von Funktionsworten und die Regeln der Deklination und Konjugation. Wie ein Sprachmodell die Regeln der Deklination und Konjugation, oder allgemeiner: morphologische Regeln lernt, lässt sich auf der Ebene ganzer Worte, die es vorhersagt, allerdings nicht ganz verstehen. Hierfür muss man tatsächlich auf die Ebene der Token (oder idealisierterweise der Morpheme) hinabsteigen, wo das Sprachmodell zum Beispiel lernt, dass auf ein Suffix wie „ver" ein lexikalisches Morphem wie „weg" folgen muss, oder auf „ein verwegene" das Buchstabentoken „s".

Aus Sätzen lernt ein Sprachmodell nicht nur Grammatik, sondern auch und das ist wichtig zu betonen - inhaltliches Wissen, denn wenn bestimmte Dinge nur oft genug in den Trainingstexten wiederholt werden, wird das Sprachmodell sie reproduzieren. So weiß ein Sprachmodell durch das häufige Vorkommen von „Newton was born in _ ", dass Newton im Jahre 1642 bzw. 1643 (je nach Kalender) in Woolsthorpe Manor, England geboren wurde. Doch was würde ein Sprachmodell aus dem Satz „He was born in the year of Galileo's death" lernen? Für sich allein - dem Sprachmodell als Trainingstextfragment übergeben - könnte es nichts daraus lernen. Doch im längeren, kontextreicheren Fragment „Newton was born in Woolsthorpe Manor. He was born in the year of Galileo's death." könnte es - nachdem das Training schon weiter vorangeschritten ist und es begonnen hat, zu lernen, dass sich Pronomen auf vorangegangene Substantive beziehen - den richtigen Schluss ziehen, und hätte etwas über Newton gelernt. Dieses Beispiel macht deutlich, wie wichtig lange, satzübergreifende Textfragmente unter anderem für den Erwerb von Wissen sind, das in Texten sehr häufig in pronomieller Form enthalten und über längere Strecken verteilt ist und isolierten Sätzen nicht zu entnehmen wäre. Satzübergreifend müssen die Textfragmente dabei noch nicht einmal sein, aber lang: „Isaac Newton, who would later become one of the most influential scientists in history, known for his groundbreaking work on the laws of motion and universal gravitation, and who also made significant contributions to optics and shared credit for developing calculus, was born in 1642 in Woolsthorpe Manor."

An dieser Stelle ist Gelegenheit, zu betonen, dass Sprachmodelle ihr sprachliches und ihr Weltwissen auf genau dieselbe Weise erlernen: Während derselben Trainingsphase, mit derselben Trainingsmethode und durch dieselben Trainingsbeispiele, wobei sie allerdings ihr sprachliches Wissen vor allem

aus kürzeren Textfragmenten - von der typischen Länge eines Satzes - erwerben, ihr Weltwissen vor allem aus langen Textfragmenten. Das Weltwissen muss dabei nicht Faktenwissen sein, sondern kann auch in einer allgemeinen semantischen Verwandtschaft von Worten bestehen, die in einem Textfragment vorkommen, ohne dass sie dabei in einer bestimmten grammatikalischen oder inhaltlichen Beziehung zueinander stehen müssten. Dieses semantische Wissen allerdings schlägt sich vor allem in den Synapsen für die Merkmalsvektoren nieder.

Können wir die Antworten, die ein trainiertes Sprachmodell gibt, immer so verstehen, wie es diese Trainingsmethode nahelegt: ein Textfragment mit dem häufigsten nächsten Wort, wie es in den Trainingstexten vorkam, fortzusetzen? Denn das in den Trainingstexten häufigste Wort - so die Idee - hat die synaptischen Gewichte so in seine Richtung gezogen, dass es nach dem Vortraining das wahrscheinlichste (oder plausibelste) ist und somit ausgegeben wird. Manchmal ist das tatsächlich so:

# F: Über allen 

A: Gipfeln ist Ruh.

## F: Die Würde des

A: Menschen ist unantastbar.

## F: Im Anfang

A: war das Wort.
In diesen drei Beispielen folgt das nächste Wort in den Trainingstexten mit so deutlich höherer Wahrscheinlichkeit als alle anderen, dass es tatsächlich einfach kommen muss. Doch in den meisten Fällen kann es gar nicht so sein, denn das fortzusetzende Textfragment kam in den Trainingstexten gar nicht vor. Dennoch wird ein plausibles Wort ausgegeben. (Dass ein Textfragment in den Trainingstexten mit hoher Wahrscheinlichkeit nicht vorkam, lässt sich dadurch überprüfen, dass man es in Anführungszeichen googelt.)

## F: Was bedeuten Sprachmodelle für die

A: Sprachmodelle spielen eine bedeutende Rolle in verschiedenen Bereichen: Kommunikationsunterstützung, Bildung und Lernen, Kreativitätsförderung, Geschäftliche Anwendungen

Insbesondere „Was bedeuten Sprachmodelle für die Sprachmodelle" liefert keine Google-Treffer (wer sollte das auch geschrieben haben?), „Sprachmodelle" ist also in keiner Weise das häufigste Wort, das auf „Was bedeuten Sprachmodelle für die" folgt. Auch „Sprachmodelle spielen eine bedeutende Rolle in verschiedenen" kommt im Internet nicht vor, sodass auch „Bereichen" nicht das häufigste Wort sein kann, das darauf folgt. Man könnte die Überlegung anstellen, dass für ein fortzusetzendes Textfragment hinten beginnend so lange nach einem darin enthaltenen gesucht wird, bis es dafür ein häufigstes Wort in den Trainingstexten gab. Aber das würde dem Prinzip der Sprachmodelle widersprechen, denn der ganze ignorierte Rest des Fragments würde dabei

gar nicht berücksichtigt. Im Internet folgt auf „spielen eine bedeutende Rolle in verschiedenen" zudem mit ähnlichen - und ähnlich geringen - Häufigkeiten „Sprachen", „Kulturen", „Arbeitsumgebungen", „Ausführungen", „Breiten", „Farben", „Größen" und viele andere mehr. Im gegebenen Kontext ist allerdings nur „Bereichen" sinnvoll. Ein weiteres Beispiel:

# F: Die Katze nahm vor dem bellenden Angreifer Reissaus. Hinter ihr her raste der 

A: Hund, sein lautes Bellen hallte durch die Gassen.
Aber selbst wenn ein vollständiges Textfragment in den Trainingstexten vorkam, muss das vom Sprachmodell ausgegebene nächste Wort nicht unbedingt das häufigste sein, das in den Trainingstexten folgte. Das kann schon für kurze Eingaben der Fall sein. Zumindest in älteren Versionen setzte zum Beispiel ChatGPT die folgende Eingabe regelmäßig so fort:

## F: A world in a

A: grain of sand.
Das ist der - leicht abgewandelte - Anfang eines Gedichtes von William Blake, und obwohl Fortsetzungen wie „nutshell", „book" oder „day" zum Teil deutlich häufiger im Internet zu finden sind - und womöglich auch vielen Menschen eher in den Sinn kommen -, war ChatGPT da relativ entschieden.

Zusammenfassend lassen sich diese Beobachtungen so erklären: Die Wahrscheinlichkeiten (oder besser Plausibilitäten), die ein vortrainiertes Sprachmodell für ein nächstes Wort berechnet, sind Extrapolationen der sogenannten N-Gramm-Statistik. Die N-Gramm-Statistik liefert für abgeschnittene Textfragmente von N Worten Länge, die tatsächlich in den Trainingstexten vorkommen, das häufigste nächste Wort zurück. Diese Statistik wird durch das Sprachmodell und seine Synapsen in dem Sinne extrapoliert, dass sie mit hoher Wahrscheinlichkeit für existierende N-Gramme mit der N-GrammStatistik übereinstimmt (aber nicht immer) und sie auf „natürliche Weise" auf unbekannte Textfragmente überträgt.

Auf allzu kurze Textfragmente - für die es de facto eine 1- oder 2-GrammStatistik gibt - können allerdings derart viele Worte folgen - alle mit sehr geringer Wahrscheinlichkeit -, dass es dem Sprachmodell nicht zu gelingen scheint, sich für eines zu entscheiden. In solchen Fällen beginnt es seine Antwort mit einem Wort, dass N-Gramm-statistisch gesehen definitiv nicht folgt. Welches das ist, lässt sich durch das Vortraining alleine nicht erklären und wird erst durch das Alignment verständlich.

## F: Der

A: It seems like your message is incomplete. Could you please provide more context or clarify what you'd like to discuss or ask about?

# 4.6 Wie werden Sprachmodelle angepasst? 

Nach dem Vortraining ist ein Sprachmodell zunächst ein sogenanntes foundation model (deutsch: Basismodell), das buchstäblich nichts anderes gelernt hat, als plausible nächste Worte vorherzusagen und damit jeden ihm vorgelegten Text so fortsetzt, wie es die berechnete extrapolierte Wahrscheinlichkeit nahelegt. Basismodelle heißen sie in diesem Stadium, weil sie als vortrainierte Modelle als Grundlage für vielfältigste Spezialisierungen dienen können. In diesem Stadium sind Sprachmodelle tatsächlich „nur" bessere Auto-Vervollständiger, allerdings bereits sehr gute.

## F: Nach dem Vortraining ist ein Sprachmodell zunächst ein sogenanntes foundation model (deutsch: Basismodell), das buchstäblich nichts anderes gelernt hat, als plausible nächste Worte vorherzusagen und damit jeden ihm vorgelegten Text so fortsetzt, wie es die berechnete extrapolierte Wahrscheinlichkeit

A: vorgibt. Dieses Basismodell bildet die Grundlage für weiterführende Anpassungen und Spezialisierungen. Durch sogenanntes Fine-Tuning kann das Modell auf spezifische Anwendungen oder Domänen zugeschnitten werden. [...]

Spezialisierungen können auf bestimmte Arten von Aufgaben erfolgen, die an Texten zu erledigen sind, oder auf bestimmte Arten von Texten oder Wissen. Die populärste Spezialisierung sind allerdings Chatbots, also Sprachmodelle, mit denen man natürlich wirkende Gespräche führen kann, die auch verborgene Absichten des menschlichen Benutzers erraten und zwischen den Zeilen lesen können und die in bestimmten Dingen besonders gut sind, z.B. im strukturierten Zusammenfassen komplexer Themen. Auch gehört es zu einem natürlichen Gespräch, dass ggf. Rückfragen gestellt oder eigenes Unwissen oder Unsicherheit eingestanden wird. Nicht zuletzt sind Chatbots darauf spezialisiert, nicht unangemessen oder in irgendeiner Weise schädlich für den Benutzer oder andere - zu antworten und nicht auf unangemessene Eingaben einzugehen. Das alles beschreibt Erwartungen, die menschliche Benutzer, aber auch die Gesellschaft als Ganzes, an Sprachmodelle haben, und die zu erfüllen ihnen beigebracht werden muss, weil es sich nicht ohne weiteres aus den Trainingstexten durch Nächste-Wort-Vorhersage lernen lässt. Neben Erwartungen an die Nützlichkeit und Nutzbarkeit der Antworten von Sprachmodellen (und der Gespräche mit ihnen) stehen ethische Erwartungen an oberster Stelle.

Vortrainierte Sprachmodelle - genauer: Basismodelle - werden in einer zweiten Trainingsphase an diese Erwartungen angepasst. Im Englischen spricht man von alignment, einem Wort mit außergewöhnlicher Bedeutungsvielfalt (im Sinne der Polysemie, siehe Abb. 4.6):

Die wichtigste Methode des Alignments großer Sprachmodelle bzw. Chatbots ist das Verstärkungslernens durch menschliches Feedback (englisch reinforcement learning by human feedback, kurz RLHF). RLHF wurde von den Entwicklern von ChatGPT ersonnen, kommt aber auch für viele andere

![img-42.jpeg](img-42.jpeg)

Abb. 4.27 Die passendste Übersetzung von englisch „alignment" ins Deutsche im Zusammenhang mit Sprachmodellen ist „Anpassung". Gemeint ist eine Anpassung an menschliche Erwartungen. (Quelle: Screenshot Lingure)

Sprachmodelle zum Einsatz. Durch RLHF lernen Chatbots, welche Eigenschaften ihre Antworten aus Sicht von menschlichen Nutzern haben sollen. Kohärenz, Relevanz und Verständlichkeit bringen sie zum Teil schon aus dem Vortraining mit, doch schon, was eine angemessene Struktur und Länge für eine Antwort sind, muss ihnen beigebracht werden. Dafür ist eine Trainingsmethode erforderlich, die nicht darauf beruht, einzelne Antwort-Worte zu bewerten (was im Falle des Vortrainings auf sehr einfache Weise automatisch geschieht: durch Berechnung der Verlustfunktion für das letzte Wort), sondern Antworten als Ganzes. Das Problem dabei ist, dass sich die Bewertungskriterien nicht von vornherein klar definieren und in berechenbare Formeln pressen lassen, sodass ein Computerprogramm eine Sprachmodell-generierte Antwort nehmen und nach einem Algorithmus berechnen könnte, wie sehr sie den Erwartungen entspricht. Denn was genau sind „die Erwartungen"? Einem Menschen kann man sie erklären und zum Beispiel in einem Leitfaden verschriftlichen. Und so wäre es naheliegend, Antworten eines Sprachmodells im Hinblick auf bestimmte Erwartungen direkt von Menschen bewerten zu lassen, dem Sprachmodell also menschliche Rückmeldung (englisch: human feedback) zu geben. Dafür würde man eine Reihe von Erwartungen und intuitiv anzuwendende Kriterien definieren, menschliche Trainer bzw. „Bewerter" instruieren und ihnen dann Antworten eines Sprachmodells vorgelegen, die sie mit einer Zahl auf einer Skala zum Beispiel von -10 bis 10 bewerten. Diese Zahl wird dem Sprachmodell zurückgespielt und stellt eine Art Belohnung (englisch reused) bzw. Verstärkung (englisch: reinforcement) dar, wobei eine negative Belohnung als „Bestrafung" zu interpretieren wäre. Die Belohnung spielt anschließend eine ähnliche Rolle wie die Verlustfunktion im Vortraining - nur dass sie sich auf die Antwort als Ganzes bezieht. Wie diese Zahl allerdings im neuronalen Netz des Sprachmodells zurückpropagiert wird, um in einem Gradientenabstiegsverfahren die Gewichte des Netzes so anzupassen, dass die Belohnung künftig höher ausfällt - denn das ist das implizite Ziel des Verfahrens -, ist deutlich komplizierter, und schwieriger zu erklären als im Falle der Einzelwort-Fehlerfunktion.

So weit, so gut, das würde funktionieren und ein Sprachmodell nach und nach die in Frage stehenden Erwartungen besser erfüllen lassen. Nur, damit diese Art des Trainings im großen Maßstab ausreichend tiefe Spuren in den Synapsen des Sprachmodells hinterlassen kann - das ja bereits Billionen von Trainingsdurchläufen während des Vortrainings durchlaufen hat -, müssten Heerscharen von Menschen über Monate und Jahre hinweg tagein, tagaus Abermillionen, wenn nicht -milliarden von Antworten erst lesen, dann über sie nachdenken und dann bewerten - was offensichtlich nicht möglich ist. Der Ausweg ist, eine andere, unabhängige KI so anzulernen, dass sie die Bewertungen automatisch vornehmen kann, um so - in deutlich höherem Tempo und ohne zu ermüden - auf die erforderliche Zahl an Trainingsdurchläufen zu kommen. Diese unabhängige KI, das sogenannte Belohnungsmodell (englisch reward model), lernt anhand einer überschaubaren Zahl von menschlichen Bewertungen zu „verstehen" und vorauszusagen, wie ein Mensch eine Antwort bewerten würde, um dies dann automatisch zu tun. Dabei ist das Belohnungsmodell selbst anfangs ein vortrainiertes Sprachmodell, das daher Texte „verstehen" und „nachvollziehen" kann, welche ihrer Eigenschaften zu einer bestimmten Bewertung führen. Dem Belohnungsmodell wird in einer eigenen Trainingsphase gezeigt, wie menschliche Trainer Texte bewerten, vergleicht diese Bewertungen mit denen, die es selbst - anfangs noch „blind" - generiert und passt seine Gewichte wie ein normales Sprachmodell beim Vortraining an: abhängig von der Abweichung (der Verlustfunktion) der selbst vorhergesagten von der vom Menschen vorgenommenen Bewertung. Das menschliche Feedback, dass der RLHF-Trainingsmethode ihren Namen gab, ist am Ende also nur ein indirektes: Nur das Belohnungsmodell wurde direkt mit menschlichem Feedback trainiert, und gibt das dabei gelernte Wissen über menschliche Erwartungen an das Sprachmodell weiter.

Auf diese Weise wird einem Sprachmodell unter anderem auch beigebracht, Fragen nach Ereignissen, die vermutlich nach dem Ende seines Vortrainings stattfanden, mit einem Eingeständnis seines Unwissens darüber zu beantworten (denn das ist, was man erwarten würde) - oder auf zu uneindeutige Fragen mit entsprechenden Rückfragen zu reagieren. Überhaupt stammt alles Formelhafte in den Antworten eines Chatbots aus dieser Trainingsphase.

Beim Chatbot Claude der Firma Anthropic wurde übrigens eine fundamental andere Art der Anpassung vor allem an ethische Standards verwendet, die konstitutionelle KI (englisch constitutional AI) genannt wird. Wir haben versucht, die Funktionsweise von konstitutioneller KI von ChatGPT erklären zu lassen, und erhielten eine sehr erstaunliche Antwort, in der ChatGPT einiges durcheinandergebracht hat:

# F: Wie funktioniert das Alignment bei Claude? 

A: Das Alignment bei Claude bezieht sich darauf, wie gut die generierten Inhalte mit den Werten und Zielen von OpenAI übereinstimmen. Hier sind einige Schlüsselinspekte des Alignments bei Claude:

1. Werte und Ethik: Claude ist darauf ausgerichtet, Inhalte zu generieren, die ethischen Grundsätzen entsprechen und nicht diskriminierend,

beleidigend oder irreführend sind. Das System wird regelmäßig aktualisiert und trainiert, um sicherzustellen, dass es Inhalte generiert, die mit den ethischen Richtlinien von OpenAI übereinstimmen. [...]
Das Alignment bei Claude ist ein fortlaufender Prozess, bei dem OpenAI ständig bestrebt ist, die Genauigkeit, Zuverlässigkeit und ethische Ausrichtung des Systems zu verbessern.

Das Erstaunliche ist, dass es so klingt, als habe OpenAI (die Firma hinter ChatGPT) gewisse ethische Richtlinien erlassen, die zu erfüllen die Konkurrenzfirma Anthropic bemüht sei. Auf die besondere Methode des Alignments, also constitutional AI, geht ChatGPT hingegen mit keiner Silbe ein. Lassen wir es also Claude selbst erklären:

# F: Wie funktioniert das Alignment bei Claude? 

A: Constitutional AI ist ein Trainingsansatz, bei dem versucht wird, die fundamentalen Ziele, Werte und „Gesetze" eines KI-Systems explizit während des Trainings zu implementieren.
Hier die wichtigsten Aspekte davon:
Es wird versucht, die gewünschten konstitutionellen Prinzipien, Werte und Verhaltensregeln des Systems präzise zu formulieren und in das Trainingsmaterial zu integrieren.
Während des Trainings wird dem System nicht nur Faktenwissen vermittelt, sondern auch diese Regeln durch viele Beispiele und Anleitungen eintrainiert.
Das System wird angehalten, vor Entscheidungen diese Regeln zu berücksichtigen und konsequent anzuwenden - ähnlich wie eine Verfassung die Handlungen einer Regierung rahmt.
Durch dieses Training sollen die konstitutionellen Prinzipien tief in die Ziel-Architektur des Systems eingebettet werden, so dass es diese Werte verinnerlicht und automatisch danach handelt.
Der Ansatz hat das Ziel, das Alignment-Problem durch ausdrückliche Formulierung der gewünschten Eigenschaften schon während des Trainings anzugehen. Allerdings ist es sehr herausfordernd, alle relevanten Prinzipien präzise zu spezifizieren.

Der wesentliche Unterschied zu reinem RLHF ist es, dass die Entwickler von Claude den Versuch unternommen haben, fundamentale ethische Werte auch explizit zu vermitteln - ein Ansatz, der auch beim Menschen den der impliziten Vermittlung zumindest ergänzen und unterstützen kann.

### 4.7 Womit werden große Sprachmodelle trainiert?

Die Theorie der Auswahl von Trainingstexten für ein großes Sprachmodell liest sich einfach und plausibel, so plausibel, wie es für die Antworten von großen Sprachmodellen typisch ist:

F: Welche Kriterien leiten die Auswahl von Texten für das Training eines großen Sprachmodells?

A: Die Auswahl von Texten für das Training eines großen Sprachmodells wie GPT-4 wird von verschiedenen Kriterien geleitet, die darauf abzielen, ein effektives, vielseitiges und verantwortungsbewusstes Modell zu entwickeln:

1. Relevanz und Vielfalt: Die Textauswahl sollte eine breite Palette von Themen abdecken, um die Vielseitigkeit des Modells zu gewährleisten. Dazu gehören Literatur, Wissenschaft, Kunst, Nachrichten und viele andere Bereiche, um eine umfassende Wissensbasis zu schaffen.
2. Qualität und Zuverlässigkeit: Hochwertige, gut geschriebene und zuverlässige Quellen werden bevorzugt, um die Genauigkeit und Verlässlichkeit der Modellantworten zu gewährleisten. Dies umfasst Texte, die klar, kohärent und gut recherchiert sind.
3. Aktualität: Besonders für Bereiche, in denen Aktualität wichtig ist (z.B. Nachrichten, Technologie, Wissenschaft), ist es wichtig, dass die Trainingsdaten aktuelle Informationen enthalten.
4. Ethik und Fairness: Bei der Auswahl der Trainingsdaten wird darauf geachtet, Verzerrungen zu minimieren und ethische Standards zu wahren. Texte, die Hassrede, Diskriminierung oder irreführende Informationen enthalten, werden vermieden, um keine voreingenommenen oder schädlichen Antworten zu fördern.
5. Sprachliche Vielfalt: Um ein mehrsprachiges Modell zu trainieren, werden Texte in verschiedenen Sprachen und Dialekten einbezogen. Dies erhöht die linguistische Reichweite und die Fähigkeit des Modells, in verschiedenen Sprachen zu interagieren.
6. Urheberrechte: Die Auswahl der Texte berücksichtigt auch urheberrechtliche Beschränkungen. Es wird darauf geachtet, dass die Verwendung der Texte rechtlich zulässig ist.
7. Datenschutz: Persönliche Informationen und Texte, die sensible Daten enthalten könnten, werden vermieden, um die Privatsphäre der Individuen zu schützen.
Diese Kriterien helfen dabei, ein leistungsfähiges und ethisch verantwortungsbewusstes Sprachmodell zu entwickeln, das auf einer soliden und diversen Wissensbasis aufbaut.

Die Praxis sieht anders aus und einen nach diesen Kriterien hochwertigen Trainingskorpus zusammenzustellen, ist eine schwierige Aufgabe. Noch schwieriger ist es für Außenstehende, einen genaueren und tieferen Einblick in einen solchen Trainingskorpus zu erlangen und zu prüfen, wie gut die obigen Kriterien erfüllt sind. Die Trainingskorpora großer, zumal kommerzieller Sprachmodelle sind nämlich ausnahmslos Verschlusssache, und nur sehr oberflächliche Einblicke werden gewährt. Wie der Output von Sprachmodellen mit ihren Trainingsdaten korreliert, lässt sich so nicht feststellen. Eine tabellarische Übersicht wie die, die Meta (die Firma hinter Facebook und WhatsApp) letztes Jahr für sein Sprachmodell LLaMA (Large Language Model Meta AI) veröffentlicht hat, ist oft alles, was man findet:

Wichtiger als die reine Menge an Text ist natürlich die Qualität der Texte, und das ist - neben der (energie-)technisch notwendigen Reduktion der Trainingslast - ein weiterer Grund, ein Sprachmodell nicht mit sämtlichen Texten des Internet zu trainieren, sondern nur mit den „guten". Trotzdem ist es wich-

| Dataset | Sampling prop. | Epochs | Disk size |
| :-- | :--: | :--: | :--: |
| CommonCrawl | $67.0 \%$ | 1.10 | 3.3 TB |
| C4 | $15.0 \%$ | 1.06 | 783 GB |
| Github | $4.5 \%$ | 0.64 | 328 GB |
| Wikipedia | $4.5 \%$ | 2.45 | 83 GB |
| Books | $4.5 \%$ | 2.23 | 85 GB |
| ArXiv | $2.5 \%$ | 1.06 | 92 GB |
| StackExchange | $2.0 \%$ | 1.03 | 78 GB |

Abb. 4.28 Die Zusammensetzung des Trainingskorpus des Meta-Sprachmodells LLaMA. Den Löwenanteil machen wie bei den meisten Sprachmodellen allgemeine Texte aus dem Internet (CommonCrawl und C4) aus. Auch andere Quellen wie Github (für Programmcode), die Wikipedia und ArXiv (für technisch-naturwissenschaftliche Literatur) werden zu ähnlichen Anteilen von anderen Sprachmodellen verwendet. Was sich hinter „Books" verbirgt, unterscheidet sich von Sprachmodell zu Sprachmodell, doch geht es meist um Belletristik - wenn auch nicht Weltliteratur -, ohne die kein Sprachmodell auskommt. StackExchange ist eine Plattform für den wissenschaftlich-technischen Austausch zwischen Experten, die unter anderem von Programmierern sehr geschätzt wird. Die Zahl der Epochen gibt übrigens an, wie oft im Mittel mit den Texten aus der jeweiligen Sammlung trainiert wurde - im Allgemeinen mehr als einmal, für wichtigere Texte sogar deutlich mehr als ein Mal. Siehe dazu das Kapitel über maschinelles Lernen. Ein Terabyte (TB) entspricht 1.000 Gigabyte, der Trainingskorpus dieses durchaus großen Sprachmodells hätte also auf fünf handelsüblichen 1-Terabyte-Festplatten Platz. (Quelle: [88])

|  | Quantity <br> (tokens) | Weight in <br> training mix | Epochs elapsed when <br> missing for 500B tokens |
| :-- | :--: | :--: | :--: |
| Common Crawl (filtered) | 410 billion | $60 \%$ | 0.44 |
| WebText2 | 19 billion | $22 \%$ | 2.9 |
| Books1 | 12 billion | $8 \%$ | 1.9 |
| Books2 | 55 billion | $8 \%$ | 0.43 |
| Wikipedia | 3 billion | $3 \%$ | 3.4 |

Abb. 4.29 Die Zusammensetzung des Trainingskorpus von GPT-3. WebText2 enthält wie C4 (siehe Abb. 4.28) „bessere", aber immer noch allgemeine Internettexte. Bei der Wikipedia handelt sich bei GPT-3 ausdrücklich nur um die englischsprachige. Der Korpus von GPT-3 war - im Jahre 2020 - noch deutlich kleiner als der von LLaMA: ein Token entspricht im Schnitt zwei bis drei Buchstaben, ein Buchstabe einem Byte. Damit summiert sich der Umfang auf ca. 500 Milliarden Token x 2 Buchstaben/Token x 1 Byte/Buchstabe $=1.000$ Milliarden Byte $=1$ TB. Andere ausgedrückt: Den 500 Milliarden Token entsprechen - zumindest im Deutschen - grob 100 Milliarden Worte (fünf Token pro Wort) und damit ca. 100.000 Exemplaren der Bibel (die 1 Millionen Worte enthält). Über den Trainingskorpus von GPT-4 ist so gut wie nichts bekannt. (Quelle: [11])
tig, beim Training auch Texte geringer - vor allem sprachlicher - Qualität zu verwenden, um nämlich später auch mit fehlerhaften und „schlampig" geschriebenen Prompts und Texten zurecht zu kommen. An solchen Texten herrscht im Internet allerdings kein Mangel, und ein Korpus wie CommonCrawl (siehe Abb. 4.7 und 4.7) enthält sie in ausreichendem Maße. Um im Heuhaufen von CommonCrawl aber gezielt - und ohne inhaltliche Analy-

se - auch inhaltlich „höherwertige" Texte zu finden, bedienen sich die Entwickler/Trainer teils etwas fragwürdiger Tricks. So hat zum Beispiel OpenAI all die Webseiten als „hochwertig" eingestuft und unter dem Namen „WebText2" in den Trainingskorpus von GPT aufgenommen, die von „vertrauenswürdigen" Nutzern des populären Diskussionsnetzwerk Reddit als verlinkenswert erachtet wurden.

# F: Was bedeutet „verlinkenswert"? 

A: Das Wort „verlinkenswert" ist ein Neologismus im Deutschen, der sich aus den Worten „verlinken" und „wert" zusammensetzt. Es bedeutet, dass etwas - in der Regel ein Inhalt im Internet wie ein Artikel, ein Video oder ein Bild - von solcher Qualität oder Relevanz ist, dass es sich lohnt, darauf zu verlinken. Im Kontext des Internets und sozialer Medien weist es darauf hin, dass der betreffende Inhalt als interessant, informativ oder unterhaltsam genug angesehen wird, um ihn mit anderen zu teilen oder auf einer Webseite oder in sozialen Netzwerken zu verlinken.

Bei der Auswahl von Texten für den Trainingskorpus wird aber nicht nur auf Qualität geachtet, sondern auch darauf, eine unter Umständen höhere Repräsentativität und Ausgewogenheit zu erzielen, als sie im Internet - und seinem Abbild, dem CommonCrawl-Korpus - gegeben ist, sowohl thematisch als auch - und vor allem - sprachlich und im weitesten Sinne kulturell. Wie gut das den Sprachmodell-Entwicklern gelingt, bleibt allerdings ihr gut gehütetes Geheimnis. Auch, wie gut es ihnen gelungen ist, Textdubletten (die dazu führen, dass bestimmte Dinge stärker gelernt werden, als es ihnen zusteht) und Testbeispiele (die dazu führen, dass Sprachmodelle durch Auswendiglernen besser bei Tests abschneiden) zu entfernen. Wichtiger noch sind aber die letzten beiden Punkte, die ChatGPT eingangs bereits genannt hat: die Entfernung von urheberrechtlich geschützten Texten und - aus Datenschutzgründen - personenbezogenen Daten aus dem Trainingsmaterial.

Wir kommen in diesem Zusammenhang noch einmal auf die in den obigen Tabellen erwähnten Bücher zurück. Dahinter verbergen sich für GPT zwei unter den Namen Books 1 und Books 2 bekannte Sammlungen vor allem gemeinfreier Bücher und für LLaMA die Sammlung Books 3. Von dieser musste Meta erst kürzlich (Januar 2024) zugeben, dass unter ihren knapp 200.000 Büchern auch etliche raubkopierte Bücher enthalten sind (siehe [40]). Das ist auch für Books 1 und 2 nicht auszuschließen, kann aber nicht einfach nachgeprüft werden, weil all diese Sammlungen nicht gut dokumentiert sind. Interessant ist allemal die Zusammensetzung dieser Bibliotheken nach Genres, die trotzdem abgeschätzt werden kann (siehe [41]). Wenn man der Analyse von Jack Bandy in [42] folgen darf, dann sind fast ein Viertel dieser Bücher Liebesromane (englisch romance), gefolgt von Fantasy- und Science-Fiction-Literatur (zusammen ca. ein Fünftel). Das durchschnittliche literarische Niveau darf also nicht zu hoch eingeschätzt werden, und die Mehrzahl der Bücher in den Books-Sammlungen ist wohl eher der Trivialliteratur zuzurechnen. Echte „Weltliteratur", zumal die gemeinfreie, stammt vor allem

aus der Sammlung Gutenberg, die für den Korpus „The Pile" explizit neben Books3 und einem BookCorpus2 aufgelistet wird (siehe Abbildung 4.30).

| Component | Original Size | Epochs | Effective Size |
| :-- | :-- | :-- | :-- |
| Pile-CC | 243.87 GB | 1 | 243.87 GB |
| PubMed Central* | 96.93 GB | 2 | 193.86 GB |
| Books3 | 108.40 GB | 1.5 | 152.61 GB |
| OpenWebText2* | 67.40 GB | 2 | 134.88 GB |
| arXiv* | 60.36 GB | 2 | 120.71 GB |
| GitHub* | 102.18 GB | 1 | 102.18 GB |
| Free Law* | 54.92 GB | 1.5 | 82.39 GB |
| Stock Exchange* | 34.57 GB | 2 | 69.14 GB |
| USPTO Backgrounds* | 24.59 GB | 2 | 49.19 GB |
| PubMed Abstracts* | 20.68 GB | 2 | 41.37 GB |
| Gutenberg (PG-19) | 11.68 GB | 2.5 | 29.20 GB |
| OpenSubtitles | 13.94 GB | 1.5 | 20.91 GB |
| Wikipedia | 6.85 GB | 3 | 20.54 GB |
| DeepMind Mathematics | 8.32 GB | 2 | 16.63 GB |
| Ubuntu Freemode IRC logs* | 5.83 GB | 2 | 11.84 GB |
| BookCorpus2* | 6.76 GB | 1.5 | 10.15 GB |
| EuroParl | 4.83 GB | 2 | 9.85 GB |
| Hacker News* | 4.19 GB | 2 | 8.38 GB |
| YouTube Subtitles* | 4.01 GB | 2 | 8.02 GB |
| PhilPapers* | 2.56 GB | 2 | 5.11 GB |
| NIH ExPorter* | 2.03 GB | 2 | 4.07 GB |
| Enron Emails | 0.85 GB | 2 | 1.89 GB |
| Total | 885.03 GB |  | 1346.69 GB |

Abb. 4.30 Der Trainingskorpus „The Pile" wurde von der KI-Firma EleutherAI zusammengestellt, als Open-Source zur Verfügung gestellt und zum Beispiel für das Training von Metas Sprachmodell LLAMA verwendet. Er gewährt einen etwas tieferen Einblick in seine Zusammensetzung, wobei dem Laien nicht alle Komponenten etwas sagen werden. Immerhin: Man entdeckt Philosophisches, Medizinisches, Juristisches, Mathematisches und Literarisches.

Warum überhaupt Bücher - und hier ist vor allem von belletristischen Büchern, also im Wesentlichen von Romanen die Rede - für das Training von Sprachmodellen so wichtig sind, ist eine spannende Frage. Zum einen natürlich aus sprachlichen Gründen: Die im wahrsten Sinne des Wortes diversen Sprachen der Literatur (und nicht notwendigerweise nur der hohen) als

mehr oder weniger elaborierte Schriftsprachen zu kennen, schärft das Sprachverständnis und die Ausdrucksmöglichkeiten von Sprachmodellen. Aber auch das Weltwissen, das in Romanen kodiert ist, und das oft ein subtiles - vor allem psychologisches, soziales, ja gar philosophisches - Alltagswissen umfasst, das sonst nirgendwo niedergeschrieben ist, macht Bücher zu einer unersetzlichen Quelle für Sprachmodelle.

Das lässt einen an einen idealen Trainingskorpus denken, der buchstäblich alle Werke der Welt-, aber auch Regionalliteratur umfasst (in denen Lebenspraxis beschrieben wäre), ergänzt um sämtliche Lehr- und Fachbücher dieser Welt (in denen die Theorie beschrieben wäre). Wie viel an Weltwissen und Menschenkenntnis würde dieser Korpus enthalten und könnte er einem mit ihm trainierten Sprachmodell vermitteln! Doch ob dieses dadurch wirklich zu einer Art lebensweisem Universalgelehrten würde, ist nicht ausgemachte Sache, und ob man ihn um guten Rat fragen könnte, auch nicht. Aber das sind theoretische Betrachtungen, deren Realisierung ohnehin nicht betrieben wird.

F: Wäre ein Sprachmodell, das mit sämtlichen Werken der Weltliteratur, aber auch mit sämtlichen Lehr- und Fachbüchern dieser Welt trainiert worden wäre, wünschenswert, sinnvoll, aber auch machbar?
A: Ein Sprachmodell, das mit sämtlichen Werken der Weltliteratur sowie allen Lehr- und Fachbüchern trainiert worden wäre, klingt in der Theorie sehr verlockend, da es ein enormes Wissen und eine breite Perspektive bieten würde. Jedoch gibt es verschiedene Aspekte, die bei dieser Idee zu berücksichtigen sind:

1. Wünschenswert: In vielen Fällen wäre ein solches Modell durchaus wünschenswert, da es eine umfassende Wissensbasis hätte und dadurch in der Lage wäre, auf eine Vielzahl von Anfragen kompetente Antworten zu geben. Es könnte ein breites Spektrum an Themen abdecken und dabei helfen, Wissen zugänglicher zu machen.
2. Sinnvoll: Ob das Modell sinnvoll wäre, hängt von seinem Einsatzgebiet ab. In akademischen oder spezialisierten beruflichen Kontexten könnte es äußerst nützlich sein, da es Zugriff auf ein breites Spektrum an Fachwissen ermöglichen würde. Für allgemeine oder unterhaltende Zwecke könnte es jedoch zu komplex oder überladen sein, was die Benutzerfreundlichkeit beeinträchtigen könnte.
3. Machbar: Hier stoßen wir auf mehrere Herausforderungen. Die erste betrifft die Verfügbarkeit der Daten. Nicht alle Werke, insbesondere die neuesten oder spezialisierten akademischen Texte, sind digital verfügbar oder frei zugänglich. Zweitens gibt es urheberrechtliche Einschränkungen, die verhindern, dass viele Texte legal für das Training von Modellen verwendet werden können. Technisch gesehen ist es auch eine Herausforderung, ein Modell mit einer derart umfangreichen und vielfältigen Datenmenge zu trainieren und zu verwalten, wobei auch Aspekte wie die Relevanz und Aktualität der Informationen sorgfältig berücksichtigt werden müssen.
Zusammenfassend ist die Idee faszinierend und hat großes Potenzial, bringt aber auch eine Reihe von praktischen und ethischen Herausforderungen mit sich, die sorgfältig angegangen werden müssen.

Ein anderes Ideal läge schon eher im Bereich des technisch Möglichen, aber auch dieses wird nicht verfolgt. Was sich zumindest der Autor dieses Buches wünschen würde, wäre eine saubere und vieldimensionale Aufschlüsselung aller Trainingstexte eines Sprachmodells - u.a. nach Länge, Sprache, Thema und Quelle -, die noch dazu im Volltext durchsuchbar wären. Man könnte dann zum Beispiel für jedes Textfragment prüfen, ob und wie oft es in den Trainingsdaten enthalten war, und dabei gewiss spannende Entdeckungen machen. In Ermangelung dessen muss man sich - wie wir es für dieses Buch getan haben - damit zufriedengeben, eine Internet-Suchmaschine zu verwenden, die aber im gesamten Internet sucht und nicht nur in der - am Ende vergleichsweise kleinen - Auswahl, die für das Training eines Sprachmodells verwendet wird, und naturgemäß nicht in den Texten, die nicht aus dem Internet stammten. Die erwähnte Aufschlüsselung wiederum würde einem ein Gefühl dafür vermitteln, wie das Wissen oder Nicht-Wissen eines Sprachmodells zu erklären und verstehen ist, und ein Verständnis für seine unvermeidlichen Voreingenommenheiten und Prägungen. Doch auch das ist ein frommer Wunsch, und die Mühe, einen Trainingskorpus auf diese Weise aufzubereiten und zugänglich zu machen, erscheint denen, die sie sich machen müssten, wahrscheinlich als nicht lohnenswert. Vielleicht aber fürchten sie auch nur, dass man ihnen dadurch zu tief in die Karten blicken könnte.

# 4.8 Das Vokabular von ChatGPT 

Auch wenn man es als Nutzer normalerweise nicht zu Gesicht bekommt, so liegt einem Sprachmodell wie ChatGPT immer ein wohldefiniertes und unveränderliches Vokabular an Token zu Grunde. Im Falle von ChatGPT umfasst es ziemlich genau 100.000 Einträge. Andere Sprachmodelle verwenden kleinere Vokabulare, nur wenige noch größere. Die Zahl 100.000 hat sich im Falle von ChatGPT als ausreichend und gewissermaßen optimal erwiesen. Welche Token das Vokabular enthält, ergibt sich in der Praxis weniger aus linguistischen Überlegungen (die zur Wahl von Morphemen als kleinsten Bausteinen geführt hätte) als aus statistischen Überlegungen. Möglichst lange Buchstabenfolgen, die häufig in den Trainingstexten vorkommen, werden ins Vokabular aufgenommen. Bei langen häufigen Buchstabenfolgen handelt es sich naturgemäß bereits um vollständige Worte, denn lange Morpheme und lange sinnlose Buchstabenfolgen, die häufig vorkommen, gibt es nicht. Kurze sinnlose Buchstabenfolgen schaffen es hingegen ins Vokabular, wenn man sie oft braucht, um Worte in seltenen Sprachen zusammenzustückeln oder um Tippfehler abzufangen. Für den Fall, dass alle Stricke reißen, enthält das Vokabular deshalb alle Buchstaben des lateinischen, aber auch des griechischen und kyrillischen Alphabets, in Groß- und in Kleinschreibung. Auch Ziffern und bis zu dreistellige Zahlen sind enthalten, interessanterweise aber keine einzige vierstellige, also insbesondere keine Jahreszahl, nicht einmal so häufig

vorkommende wie 1492, 1776, 1789 oder 1945. Grundsätzlich sollen die Token ausreichen, um möglichst viele Texte (als Zeichenketten betrachtet) aus ihnen zusammensetzen zu können. Dass man sich nicht mit Buchstaben allein zufriedengibt, die das ja ebenfalls leisten würden, sondern möglichst lange Token verwenden möchte, hat zwei Gründe. Zum einen können längere Token, die wie gesagt im Allgemeinen bereits Worte sind, besser mit Bedeutung aufgeladen werden als kürzere und sinnlose. Zum anderen erspart es Rechenzeit, weil die Rechenzeit, die zur Verarbeitung eines Textes benötigt wird, quadratisch mit der Zahl der Token wächst. Beide Gründe zusammengenommen zeigen eine immanente Ungerechtigkeit von Sprachmodellen gegenüber Nutzern und Sprechern von Sprachen, die seltener in den Trainingstexten vorkommen als Englisch, das das Vokabular von ChatGPT dominiert. (Von seltenen Sprachen per se sollte man hier nicht sprechen, denn alle Sprachen sind im Internet selten im Vergleich zum Englischen, selbst die am häufigsten gesprochenen.)
![img-43.jpeg](img-43.jpeg)

Abb. 4.31 Anteil der Internetseiten nach Sprache (Quelle: W3Techs.com, Stand: März 2024)

Zum einen sind ChatGPTs Textanalyse- und -synthese-Ergebnisse in selteneren Sprachen aufgrund der geringeren Zahl an Trainingstexten grundsätzlich von geringerer Qualität, aber noch zusätzlich deshalb, weil ihre Worte meist aus vielen (bedeutungslosen) Buchstaben zusammengesetzt werden müssen, wodurch sie vom Sprachmodell schlechter „verstanden" werden. Im schlimmsten Falle werden Zeichenfolgen, die gar nicht aus den vorhandenen Buchstaben oder Zeichen einer Schrift zusammengesetzt werden können, auf das spezielle Token „Unbekannt" abgebildet und Texte dadurch noch schlechter verstanden. Das ist im Falle von ChatGP7 für fast alle Sprachen, die nicht das lateinische Alphabet verwenden, der Fall, allen voran Arabisch und Chine-

sisch. Zudem müssen Nutzer, die ein kommerzielles Sprachmodell wie GPT-4 (das ChatGPT zugrunde liegt) über eine Programmierschnittstelle verwenden - zum Beispiel Entwickler von Apps, die auf dem Sprachmodell aufsetzen - pro gelesenem und generierten Token an den Sprachmodellanbieter bezahlen. Und da fällt es durchaus ins Gewicht, ob das Wort „disproportionately" aus nur einem Token besteht, oder „un-ver-h-äl-tn-ism-àß-ig" aus acht.
![img-44.jpeg](img-44.jpeg)

Abb. 4.32 Ein für seine Länge bekanntes deutsche Wort - ein Wort - besteht aus Sicht von ChatGPT aus 28 für sich meist bedeutungslosen Token. Dennoch versteht ChatGPT dieses Wort gut. Es ist aber vergleichsweise „teuer", verglichen mit seiner englischen Übersetzung, die nur aus sieben Token besteht („be-ef labeling supervision duties delegation law")

## F: Erläutere das Rindfleischetikettierungsüberwachungsaufgabenübertragungsgesetz.

A: Das Rindfleischetikettierungsüberwachungsaufgabenübertragungsgesetz ist ein deutsches Gesetz, das die Überwachung und Kontrolle der Etikettierung von Rindfleisch regelt. Es wurde erlassen, um sicherzustellen, dass Verbraucherinnen und Verbraucher korrekte und verlässliche Informationen über die Herkunft und Qualität von Rindfleisch erhalten. [...] Insgesamt dient das Rindfleischetikettierungsüberwachungsaufgabenübertragungsgesetz dazu, die Transparenz und Verlässlichkeit bei der Etikettierung von Rindfleischprodukten zu gewährleisten und das Vertrauen der Verbraucherinnen und Verbraucher in die Lebensmittelindustrie zu stärken.
Das Vokabular eines Sprachmodells wird zusammengestellt, bevor das eigentliche Training des Sprachmodells beginnt. Dafür werden die künftigen Trainingstexte vorab statistisch analysiert und eine Liste von Token (also Buchstabenfolgen) erstellt, die möglichst viele möglichst lange häufig vorkommende Buchstabenfolgen enthält, sodass zusammen mit den verbleibenden kürzeren Token (um auf 100.000 zu kommen) möglichst viele Texte möglichst vollständig zusammengesetzt werden können. Hier einige kurze „bedeutungslose" Token (die also inbesondere keine Morpheme sind). Von solchen gibt es im Vokabular von ChatGPT Tausende.

| ack | för | Gre | Obl | sta |
| :-- | :-- | :-- | :-- | :-- |
| ber | gal | Gry | Obt | str |
| bä | gan | het | Orr | sts |
| cin | gef | ik | rab | swe |
| dra | gek | isc | rak | tam |
| ett | ges | Nel | spl | tel |
| fg | glog | Nug | spo | tsc |

Ist das Vokabular erst einmal definiert, werden später alle Texte, die ein Sprachmodell zu lesen bekommt - sei es während des Trainings oder zur Laufzeit - in die Token dieses Vokabulars zerlegt, was aber dank des „Unbekannt"Tokens immer möglich ist.
![img-45.jpeg](img-45.jpeg)

Abb. 4.33 Längenverteilung der Token von ChatGPT. Die meisten Token sind zwischen drei und sieben Zeichen lang, die allermeisten, die länger als 20 Zeichen sind, sind keine Worte natürlicher Sprache, sondern entstammen dem Bereich des Programmierens (siehe unten).

Ein genauerer Blick auf ChatGPTs Vokabular offenbart einige Auffälligkeiten, die Rückschlüsse auf die Zusammensetzung seines Trainingskorpus erlauben. Zu allererst fällt auf, dass ca. 20.000 der 100.000 Token englische Worte sind, angefangen mit fast 400 Worten mit mehr als 14 Buchstaben:

| disproportionalely | misunderstandi | classifications |
| :--: | :--: | :--: |
| telecommunications | responsibilities | competitiveness |
| interdisciplinary | unconstitutional | confidentiality |
| characterization | accomplishments | congratulations |
| cryptocurrencies | acknowledgement | differentiation |
| disproportionate | administrations | dissatisfaction |
| enthusiastically | characteristics | electromagnetic |
| gastrointestinal | Charlottesville | entrepreneurial |

| environmentally | recommendations | administration |
| :-- | :-- | :-- |
| experimentation | representations | administrative |
| extraordinarily | representatives | administrators |
| implementations | straightforward | advertisements |
| inconsistencies | synchronization | aforementioned |
| instrumentation | transformation | appropriations |
| interchangeable | transplantation | archaeological |
| internationally | troubleshooting | - |
| interpretations | vulnerabilities | asynchronously |
| multiprocessing | accommodations | attractiveness |
| notwithstanding | accomplishment | authentication |
| professionalism | accountability |  |
| psychologically | acknowledgment |  |

Ein gewisser Schwerpunkt auf technischen, wissenschaftlichen und administrativen Begriffen ist feststellbar. Zwar stehen auch ca. 4.000 französische und ca. 3.000 deutsche Worten in ChatGPTs Vokabular. Bei genauerem Hinsehen sind davon aber nur wenige genuin französisch bzw. deutsch, die allermeisten gibt es auch schon im Englischen. Übrig bleiben zum Beispiel nur einige hundert genuin deutsche Worte. Andererseits sind die häufigsten deutschen Morpheme vorhanden wie „be-", „ent-", „ver-","-en", „-lich", „-heit", aus denen sich viele deutsche Worte zusammensetzen lassen.

| Administration | Installation | Deutschland |
| :-- | :-- | :-- |
| administrative | instrumental |  |
| Implementation | Intervention | Entwicklung |
| Rehabilitation | irreversible | erfolgreich |
| Transformation | Johannesburg |  |
| Administrator | kennenlernen | Mitarbeiter |
| Establishment | longitudinal | Möglichkeit |
| Informationen | Organisation |  |
| international | Pennsylvania |  |
| investigative | Philadelphia |  |
| Massachusetts | progressives | allerdings |
| multinational | proportional |  |
| verschiedenen | quantitative | Bundesliga |
| alternatives | Transmission |  |
| Commonwealth | verschiedene | eigentlich |
| Differential | affirmative | Geschichte |
| Dissertation | Afghanistan |  |
| Distribution | alternative | ... |
| Entrepreneur | Attachments | kostenlose |
| Indianapolis | Controllers |  |

Noch schwächer vertreten ist zum Beispiel das Ukrainische mit insgesamt nur knapp einhundert Worten. Von den 5.000 häufigsten chinesischen Schriftzeichen enthält ChatGPTs Vokabular nur einige hundert. Längere und anspruchsvollere chinesische Text kann ChatGPT also nicht verstehen und generieren, aber immerhin - laut eigener Auskunft - einfache Konversationen führen:

A: ChatGPT wurde hauptsächlich auf Englisch trainiert und verfügt über begrenzte Kenntnisse in anderen Sprachen, einschließlich Chinesisch. Es kann grundlegende Fragen beantworten und einfache Konversationen auf Chinesisch führen, aber seine Fähigkeiten sind im Vergleich zu Englisch eingeschränkter. Wenn Sie spezielle Fragen auf Chinesisch haben, siehe ich Ihnen jedoch gerne zur Verfügung und werde mein Bestes tun, um Ihnen zu helfen. Bitte beachten Sie, dass die Qualität der Antworten möglicherweise nicht so hoch ist wie bei Englisch.

Besonders auffällig sind Token, die offenbar aus der Welt des Programmierens stammen, was belegt, dass ChatGPT auch mit sehr vielen Zeilen Programmiercode trainiert wurde. Das ist ein offenes Geheimnis, wird aber in offiziellen Beschreibungen des Trainingskorpus wie in [11] nicht explizit erwähnt. Auf jeden Fall sind Token aus dem Programmierbereich überrepräsentiert, wenn man bedenkt, dass Sprachmodelle eigentlich natürliche Sprache modellieren sollen. Viele tausend Token sind zum Beispiel von der folgenden Art in Anbetracht der Tatsache, dass es überhaupt nur 100.000 Token gibt, sind das erstaunlich viele. (Tatsächlich stehen die Programmierfähigkeiten von Sprachmodellen - und nicht nur ihre Konversationskünste - im Fokus des Interesses und sollen aus Sicht ihrer Entwickler zu ihrem Erfolg beitragen.)

| NavigationItemSelectedListener | .Load |
| :-- | :-- |
| DataGridViewContentAlignment | .LoadScene |
| ArgumentOutOffRangeException | .Loader |
| ColumnHeadersHeightSizeMode | .Local |
| ForCanBeConvertedToForeach | .LocalDate |
| CircularProgressIndicator | .LocalDateTime |
| DataGridViewTextBoxColumn | .Locale |
| DestinationViewController | .Localization |
| getSupportFragmentManager | .Location |
| InvalidOperationException | .Lock |
| DataGridViewTextBoxColumn | .Log |
| StatusInternalServerError | .LogError |
| IllegalArgumentException | .LogInformation |
| InvalidArgumentException | .LogWarning |
| PropertyChangedEventArgs | .Logf |
| setDefaultCloseOperation | .Logger |
| ComponentResourceManager | .LoggerFactory |
| getOwnPropertyDescriptor | .Logging |

Über solche Wortungetüme hinaus enthalten viele hundert Token von ChatGPT - also immerhin einige Promille - nicht einen einzigen Buchstaben, sondern bestehen nur aus langen Wiederholungen von Zeichen wie „-", „=" $\cdot$, $\cdot$ ", $\cdot$ ", $\cdot$ ", $\cdot$ ", $\cdot$ ", $\cdot$ ". Solche Zeichenketten dienen im Allgemeinen nur der Gliederung von Programmcode, sind also eigentlich bedeutungslos. Das längste davon ist sage und schreibe 114 Zeichen lang und nimmt dennoch einen eigenen Platz im Vokabular ein. Ob diese spezielle Zeichenkette tatsächlich so häufig in den Trainingstexten vorkommt, dass es eine Aufnahme ins Vokabular aus statistischen Gründen rechtfertigt, ist eher fraglich.

```
\#sp:ipatlice:landwur:re:li:enem:
\#sp:ip:go:r:o:me:ry
    \#r:r:r:h:o:meen
```

Abb. 4.34 Das längste Token im Vokabular von ChatGPT besteht aus 114 Zeichen, das längste Programmierwort aus 30, das längste englische Wort aus 18 und das längste genuin deutsche Wort aus 13 Buchstaben.

Abschließend noch eine aufschlussreiche „inhaltliche" Beobachtung. Es ist bekannt, dass ChatGPT auch auf großen Mengen von literarischen Texten trainiert wurde, für die sogar ihre genremäßige Zusammensetzung bekannt ist, mit einem Schwerpunkt auf Liebesromanen (englisch romance). Das mag das mehrfache Vorkommen von Token, die mit Abenteuern zu tun haben, erklären, während viele andere, womöglich „wichtigere" Worte im Vokabular fehlen: Advent, advent, adventure, adventurer, adventurers, adventures, adventurous. Das deutsche Wort „Ab-ente-ner" ist hingegen aus drei Token zusammengesetzt.

So viel zum bunten Sammelsurium der Token von ChatGPT. Wer das Vokabular selbst austesten möchte, sei auf die Seite https://platform.openai.com/ tokenizer verwiesen.

# Kapitel 5 <br> Verstehen wir Sprachmodelle? 

Mit dieser Frage wollen wir das Buch beschließen und den Bogen zurück zu seinem Anfang schlagen. Die Frage, ob wir Sprachmodelle verstehen, ist noch vielschichtiger als die Frage, ob Sprachmodelle uns verstehen, weil sie auf noch mehr Ebenen gestellt werden kann und noch mehr Aspekte und Facetten berührt. Nicht allein, ob wir Sprachmodelle verstehen, ist dabei von Interesse, sondern was an ihnen und inwiefern.

Unstrittig ist, dass und inwiefern man den konkreten Aufbau, die Architektur und die neuronale Mechanik von Sprachmodellen studieren und verstehen kann und dadurch zum Beispiel die Verarbeitung einer Eingabe minutiös nachverfolgen könnte. Auf diese Weise würde man auf spezifische Weise sehr genau verstehen, wie jedes einzelne Token oder Wort einer Antwort zustande gekommen ist. Wie eine Antwort als kohärentes Ganzes entsteht, wäre dadurch aber noch nicht genau verstanden und ließe sich erst einmal nur erahnen. Denn Kohärenz - unter anderem - ist eine typische emergente Eigenschaft einer Antwort und ergibt sich nicht als bloße Summe von Teilen, also der Token, aus denen sie besteht. Was man - und hier sind die Experten mit eingeschlossen - recht konkret nicht versteht, ist, was die Aktivitäten der allermeisten Neuronen im Zuge der Verarbeitung einer Eingabe und Generierung einer Ausgabe bedeuten. Welche - unter anderem - semantischen Beziehungen in den verschiedenen Aufmerksamkeitsköpfen eines TransformerSprachmodells berechnet werden, entzieht sich ebenso unserem, also auch der Experten unmittelbarem und genauem Verständnis. Hier ist die Situation der Forscher keine wesentlich andere als die, in der sich Gehirnforscher und Neurowissenschaftler befinden.

Zu verstehen, wie Sprachmodelle gewissermaßen mechanisch funktionieren, das bleibt festzuhalten, ist möglich. Nicht nur zu verstehen, wie, sondern auch warum sie so gut funktionieren, scheint eine zweite und unabhängige Frage zu sein. Hier mag man vielleicht an den Philosophen Ludwig Wittgenstein denken, der in $\S 109$ seiner Philosophischen Untersuchungen schreibt ([25]):
„Alle Erklärung muss fort, und nur Beschreibung an ihre Stelle treten."
(C) Der/die Autor(en), exklusiv lizenziert an

Springer-Verlag GmbH, DE, ein Teil von Springer Nature 2024
H.-P. Stricker, Sprachmodelle verstehen,
https://doi.org/10.1007/978-3-662-68280-7_5

Das würde in unserem Zusammenhang bedeuten: In dem Maße, wie man versteht, wie ein Sprachmodell funktioniert (man also über eine Beschreibung verfügt), versteht man auch, warum es funktioniert (verfügt also über eine Erklärung). Dass das etwas zu kurz gegriffen ist, werden wir gleich sehen.

Ein ganz anderes Verstehen äußert sich gegebenenfalls darin, dass man die Antworten eines Sprachmodells zumindest in groben Zügen voraussagen kann - ihren Stil, ihre Länge, ihren ungefähren Inhalt, ja sogar ihre Richtigkeit. Einige Menschen haben es hier zu einer gewissen empirisch begründeten Expertise gebracht, die sie einsetzen können, um bestimmte Antworten gezielter hervorzurufen und andere zu vermeiden. Es geht hier insbesondere um die Wirkung bestimmter Prompts bzw. Prompt-Techniken. Das sogenannte Prompt-Engineering ist dabei eine Ar: Erfahrungswissenschaft geworden, die stark auf Versuch und Irrtum beruht - wenn man von Wissenschaft hier schon sprechen möchte. Auf jeden Fall hat, wer aus Erfahrung klug geworden systematisch hilfreiche und nützliche Prompts zu formulieren weiß, ein Sprachmodell besser verstanden als jemand, der das nicht kann. Doch man kann ein Phänomen wie die erstaunliche Wirksamkeit des Chain-of-ThoughtPromptings (siehe Kapitel 3.6, Seite 104) durchaus theoretisch, ja mathematisch zu durchdringen und zu verstehen versuchen. Genau das geschieht seit geraumer Zeit. Den Anfang machte kürzlich eine Gruppe chinesischer Wissenschaftler mit ihrem Aufsatz „Towards revealing the mystery behind chain of thought" [43], den sie so einleiten (womit sie einmal mehr auf eine nach wie vor existierende Verständnislücke - in anderen Kontexten spricht man von explanatory gap - hinweisen):
„Trotz des enormen empirischen Erfolgs bleiben die zugrundeliegenden Mechanismen
kinter Chain-of-Thought und wie es das Potenzial großer Sprachmodelle freisetzt,
schwer fassbar."
Auf Seite 7 findet man ihr Hauptergebnis (siehe Abb. 5.1, links), das uns ChatGPT so erklärt:

# F: Was besagt Theorem 4.7 in einfachen und anschaulichen Worten? 

A: Stellen Sie sich vor, Sie haben einen Roboter, der in der Lage ist, nahezu jedes Legespiel (dynamische Programmierproblemi) zu lösen, solange die Teile des Spiels nicht zu zahlreich sind (basierend auf der Größe n). Dabei muss dieser Roboter nicht übermäßig komplex oder riesig werden, um mit größeren Spielen umzugehen. Er ist so geschickt entworfen, dass er mit komplizierteren oder größeren Spielen klarkommt, ohne dass er selbst wesentlich komplexer oder größer werden muß.

Nicht nur die Fähigkeit zu effizientem Schritt-für-Schritt-Denken, sondern jegliche mathematisch greifbare Fähigkeit von Sprachmodellen, angefangen mit dem One- und Few-Shot-Lernen, kann auf ähnliche Weise theoretisch analysiert und von Experten auf diese Weise erklärt und verstanden werden (siehe z.B. [44]).

Zumindest teilweise ist die Verständnislücke durch solche mathematischen Analysen also geschlossen. Andere, gewissermaßen „weichere" Phänomene

![img-46.jpeg](img-46.jpeg)

Abb. 5.1 Auszüge aus wissenschaftlich-mathematischen Artikeln über Chain-of-ThoughtPrompting (links) und One- und Few-Shot-Lernen (rechts). So theoretisch und mathematisch können Sprachmodelle und ihre Fähigkeiten analysiert und verstanden werden.
wie die, dass die verbale Androhung von Strafen oder versprochene Belohnungen die Antworten von Sprachmodellen verbessern (was tatsächlich beobachtet wurde), oder dass Höflichkeit nicht unbedingt zu besseren Antworten führt, entziehen sich allerdings einer mathematischen Herangehensweise und müssen selbst von Experten auf einer intuitiven Ebene verstanden werden - einer Ebene, die für Laien ohnehin die einzige ist, die ihnen unmittelbar zugänglich ist.

Manches Grundsätzliche und regelmäßig Wiederkehrende lässt sich aber zum Glück leichter verstehen bzw. mit etwas Hintergrundwissen leichteren Herzens einfach glauben, zum Beispiel,

- dass ausführliche und klare Prompts zu besseren Ergebnissen führen,
- dass Sprachmodelle gut im Bilden und Verstehen von Analogien sind,
- dass Sprachmodelle seltene Sprachen besser beherrschen, als es ihr Anteil an den Trainingstexten vermuten ließe,
- dass Sprachmodelle in einer seltenen Sprache gestellte Fragen nicht erst ins Englische übersetzen, dort beantworten, und die Antwort dann wieder in die seltene Sprache zurückübersetzen - sondern „direkt", ${ }^{1}$
- dass Sprachmodelle besser im Entdecken als im Vermeiden von Fehlern sind,
- dass Fehler, Hallzinationen und Voreingenommenheit unvermeidlich und Sprachmodellen immanent sind.

Was außerdem mitunter recht leicht gelingt, ist, die Assoziationsketten nachzuvollziehen, denen Sprachmodelle folgen - also ihren „Gedanken", die sie sprechend äußern -, vor allem, wenn man sich in der besprochenen Materie

[^0]
[^0]:    ${ }^{1}$ Hierzu gibt es allerdings neue Untersuchungen, die unter Umständen etwas anderes nahelegen. Eine davon trägt den Titel „Do Llamae Work in English? On the Latent Language of Multilingual Transformers" [45].

auskennt. Wenn sie sich dabei vertun und einen Fehler machen, kann man diesen mit etwas Hintergrundwissen ebenfalls verstehen und nachvollziehen, ganz so, wie man Fehler bei anderen Menschen verstehen und nachvollziehen kann - zum Beispiel dann, wenn sie auf einem Missverständnis oder einer Verwechslung beruhen (wie in unserem Beispiel auf Seite 116). Aber auch systematische Fehler kann man gelegentlich ganz gut verstehen (wenn auch nicht unbedingt präzise erklären), wie z.B. den systematischen Fehler beim Multiplizieren großer Zahlen (siehe Seite 128).

Andere Fehler erscheinen hingegen rätselhaft, und man versteht sie - und damit das Sprachmodell - einfach nicht. Das kann daran liegen, dass man sich nicht gut genug auskennt, um sie nachzuvollziehen, oder ihre Ursachen sind womöglich wirklich nur in der neuronalen Verschaltung zu suchen, die aus irgendeinem Grunde ein falsches Token ausspuckt, dem sich dann irgendwelche anderen Token anschließen müssen - und mehr gibt es da nicht zu verstehen. Wie hier, als ChatGPT in einem Bild etwas sah, was es nicht gibt: ein „Tasselloch".
![img-47.jpeg](img-47.jpeg)

# F: Beschreibe dieses Bild. 

A: Das Bild, das du hochgeladen hast, ist das berühmte Gemälde „Die Alexanderschlacht" oder auch bekannt als „Die Schlacht bei Issus" von Albrecht Altdorfer, einem Meister der deutschen Renaissance. [...] Über allem schwebt ein Banner mit lateinischer Inschrift, das vom Himmel herabhängt, festgehalten von einer knallroten Schleife und einem Tasselloch, was eine Verbindung zwischen dem Göttlichen und dem Irdischen suggeriert.[..]

Ein besonders frappantes Beispiel für eine unverständliche Fehlleistung - in Anbetracht der Tatsache, dass das Thema, nach dem gefragt wurde, ausführlich im Internet verhandelt wird -, lieferte uns Googles Chatbot Gemini (der ansonsten durchaus mit ChatGPT mithalten kann).

## F: Was ist die Friston-freie Energie?

A: Ich wurde für solche Aufgaben nicht programmiert.

## F: Was ist das Problem mit dieser Frage?

A: Das Problem mit dieser Frage ist, dass sie zu vage formuliert ist. Es ist unklar, was genau mit „dieser Frage" gemeint ist. Bezieht sich die Frage auf die aktuelle Situation, auf mein Leben im Allgemeinen oder auf etwas anderes?

Doch wollen wir das Buch nicht mit unverständlichen Fehlern, sondern lieber mit verständlichen - oder zumindest nicht gänzlich überraschenden

- Leistungen von Sprachmodellen beenden. Wir schließen in diesem Sinne mit einer kleinen subjektiven Auswahl gleichzeitig beeindruckender und doch nicht überraschender Antworten von ChatGPT:
F: Generiere und erkläre einige Neologismen im Stile Thomas Bernhards.
A: Thomas Bernhard, ein österreichischer Schriftsteller, ist bekannt für seinen einzigartigen Stil, der sich durch einen pessimistischen und satirischen Ton, eine besondere syntaktische Struktur und einen intensiven Fokus auf österreichische Themen auszeichnet. Hier sind einige Neologismen, die möglicherweise zu seinem Stil passen würden:
- Verzweiflungsklavier: Symbol für ein Mittel, um durch Kunst Ausdruck von tiefem Leid und Verzweiflung zu finden.
- Scheinexistenzkreisel: Ein Begriff, der das Dasein als eine endlose und sinnlose Wiederholung darstellt, die von Illusionen und Selbsttäuschungen getrieben ist.
- Zerfallsvisionär: Jemand, der die Fähigkeit hat, den Untergang und Verfall der Gesellschaft klar vorherzusehen.
- Kulturvermüllung: Ein Zustand, in dem die Kultur mit trivialen, wertlosen Inhalten überschwemmt wird.
- Gedankenzerfresser: Eine metaphysische Entität oder ein Zustand, der die Fähigkeit besitzt, die Gedanken und Ideen von Individuen zu konsumieren und zu zerstören.
- Abgrundsfensterblick: Ein Blick, der in die Tiefen und Abgründe der menschlichen Existenz führt.
- Seelenechoverlust: Der Verlust des echten Widerhalls der Seele durch Isolation und Verzweiflung.
Diese Neologismen spiegeln einen Versuch wider, Bernhards oft dunklen, philosophischen und introspektiven Stil in neue Worte zu fassen, wobei sie nicht authentische Wortschöpfungen von ihm sind, sondern inspiriert durch sein Werk.

Diese Antwort „verstehen" wir, wenn wir uns vor Augen führen, wie intensiv das Werk Thomas Bernhards und insbesondere seine Neologismen im Internet besprochen und diskutiert werden. (Davon, dass ChatGPT mit Originalwerken von Thomas Bernhard trainiert wurde, muss man also nicht einmal ausgehen.) Und doch kann man von der Treffsicherheit beeindruckt sein, mit der ChatGPT den typischen Stil Bernhardscher Neologismen imitiert (siehe [46]).

# F: Was haben die Markennamen Audi und Volvo gemeinsam? 

A: Die Markennamen Audi und Volvo haben beide lateinische Ursprünge. Der Name „Audi" leitet sich von dem lateinischen Verb „audire" ab, was „hören" bedeutet. Dieser Name wurde von dem Gründer August Horch gewählt, nachdem er sein erstes Unternehmen Horch verlassen musste und einen neuen Namen benötigte. „Horch", im Imperativ, bedeutet auf Deutsch „höre!" und „audi" ist das entsprechende Wort im Lateinischen.
Volvo hingegen stammt vom lateinischen Verb „volvere", was „rollen" bedeutet. Der Name wurde gewählt, um die Kernfunktion der Produkte des Unternehmens, nämlich die Mobilität, zu reflektieren. Ursprünglich wurde

Volvo als Markenname für Kugellager verwendet, die vom Mutterkonzern SKP hergestellt wurden, bevor er zum Synonym für den Automobilhersteller wurde.
Zusammenfassend haben also beide Markennamen lateinische Wurzeln, die jeweils eine grundlegende Eigenschaft oder Funktion ihrer Produkte hervorheben: Audi betont das Zuhören (bzw. die Akustik), was indirekt auf die Erfahrung des Autofahrens hinweisen kann, und Volvo das Rollen, was direkt auf die Mobilität und die Hauptfunktion von Automobilen hinweist.

Diese Antwort ist deswegen beeindruckend, weil ChatGPT den kleinen, aber feinen Bedeutungsunterschied zur folgenden Frage richtig verstanden hat:

# F: Was haben die Marken Audi und Volvo gemeinsam? 

A: Audi und Volvo sind beides renommierte Automobilhersteller, die für ihre Innovationen und Beiträge zur Automobilindustrie bekannt sind. Hier sind einige Gemeinsamkeiten, die sie teilen:
Europäische Herkunft: Audi ist eine deutsche Marke, während Volvo aus Schweden stammt. Beide Marken haben eine tiefe Verwurzelung in der europäischen Automobilkultur und -geschichte.
Hoher Qualitätsanspruch: Sowohl Audi als auch Volvo sind für die Herstellung hochwertiger Fahrzeuge bekannt, die in puncto Sicherheit, Technologie und Komfort führend sind.
Innovation und Technologie: Beide Unternehmen investieren stark in Forschung und Entwicklung, um innovative Technologien in ihren Fahrzeugen einzusetzen, darunter Elektrofahrzeuge, autonomes Fahren und fortschrittliche Fahrerassistenzsysteme.[...]

Und ganz zum Schluss die Auflösung des kleinen Rätsels, das das Titelbild dieses Buches für den ein oder anderen vielleicht dargestellt hat.
![img-48.jpeg](img-48.jpeg)

## F: Erläutere dieses Bild.

A: Das Bild zeigt zwei rosa Kakadus auf einem Ast sitzend. Sie schauen sich gegenseitig an, und um jedes der beiden Vögel ist eine Sprechblase gezeichnet. Die Sprechblase des einen Kakadus enthält das Wort „Hi!", was eine Begrüßung darstellt. Die Sprechblase des anderen Vogels enthält die Silbe „Ei?", was wie eine verwirrte oder neugierige Reaktion auf die Begrüßung wirken könnte. Es scheint, als ob ein Wortspiel beabsichtigt ist, indem „Ei?" ähnlich klingt wie das englische „aye", was eine übliche Antwort oder eine Aufforderung zur Wiederholung einer nicht verstandenen Äußerung sein könnte. Die Anwesenheit der Wasserzeichen weist darauf hin, dass das Bild urheberrechtlich geschützt ist und vermutlich aus einer Bildagentur wie Adobe Stock stammt.

# Literaturverzeichnis 

[1] Biqing Qi, Kaiyan Zhang, Haoxiang Li, Kai Tian, Sihang Zeng, ZhangRen Chen, and Bowen Zhou. Large language models are zero shot hypothesis proposers. arXiv preprint arXiv:2311.05965, 2023.
[2] Bernardino Romera-Paredes, Mohammadamin Barekatain, Alexander Novikov, Matej Balog, M Pawan Kumar, Emilien Dupont, Francisco JR Ruiz, Jordan S Ellenberg, Pengming Wang, Omar Fawzi, et al. Mathematical discoveries from program search with large language models. Nature, 625(7995):468-475, 2024.
[3] Gottfried Wilhelm Leibniz. Monadologie (1714) . https://www.proj ekt-gutenberg.org/leibniz/monaden/monaden.html.
[4] Steven Bills, Nick Cammarata, Dan Mossing, Henk Tillman, Leo Gao, Gabriel Goh, Ilya Sutskever, Jan Leike, Jeff Wu, and William Saunders. Language models can explain neurons in language models. https://op enaipublic.blob.core.windows.net/neuron-explainer/paper/ind ex.html, 2023.
[5] Sébastien Bubeck. Sparks of AGI: early experiments with GPT-4. http s://www.youtube.com/watch?v=qblk7-JPB2c, 2023.
[6] Yoshua et al. Bengio. Pause Giant AI Experiments: An Open Letter. https://futureoflife.org/open-letter/pause-giant-ai-experim ents/, 2023.
[7] Sharon Goldman. Even OpenAI's Ilya Sutskever calls deep learning 'alchemy' . https://venturebeat.com/business/even-openais-ily a-sutskever-calls-deep-learning-alchemy/, 2022.
[8] Katja Grace, Harlan Stewart, Julia Fabienne Sandkühler, Stephen Thomas, Ben Weinstein-Raun, and Jan Brauner. Thousands of AI authors on the future of AI. arXiv preprint arXiv:2401.02843, 2024.
[9] Scott Aaronson. The Problem of Human Specialness in the Age of AI. https://scottaaronson.blog/?p=7784, 2024.
[10] Heinrich Hertz. Die Prinzipien der Mechanik. Akademische VerlagsGesellschaft, 1984.

[11] Tom Brown, Benjamin Mann, Nick Ryder, Melanie Subbiah, Jared D Kaplan, Prafulla Dhariwal, Arvind Neelakantan, Pranav Shyam, Girish Sastry, Amanda Askell, et al. Language models are few-shot learners. Advances in neural information processing systems, 33:1877-1901, 2020.
[12] Emily M Bender, Timnit Gebru, Angelina McMillan-Major, and Shmargaret Shmitchell. On the dangers of stochastic parrots: Can language models be too big? In Proceedings of the 2021 ACM conference on fairness, accountability, and transparency, pages 610-623, 2021.
[13] John R Searle. Minds, brains, and programs. Behavioral and brain sciences, 3(3):417-424, 1980.
[14] Xidong Feng, Yicheng Luo, Ziyan Wang, Hongrui Tang, Mengyue Yang, Kun Shao, David Mguni, Yali Du, and Jun Wang. ChessGPT: Bridging policy learning and language modeling. Advances in Neural Information Processing Systems, 36, 2024.
[15] Ali Madani, Ben Krause, Eric R Greene, Subu Subramanian, Benjamin P Mohr, James M Holton, Jose Luis Olmos, Caiming Xiong, Zachary Z Sun, Richard Socher, et al. Large language models generate functional protein sequences across diverse families. Nature Biotechnology, 41(8):1099-1106, 2023.
[16] Zeming Lin, Halil Akin, Roshan Rao, Brian Hie, Zhongkai Zhu, Wenting Lu, Nikita Smetanin, Robert Verkuil, Ori Kabeli, Yaniv Shmueli, et al. Evolutionary-scale prediction of atomic-level protein structure with a language model. Science, 379(6637):1123-1130, 2023.
[17] Ilija Radosavovic, Bike Zhang, Baifeng Shi, Jatlnushan Rajasegaran, Sarthak Kamat, Trevor Darrell, Koushil Sreenath, and Jitendra Malik. Humanoid Locomotion as Next Token Prediction. arXiv preprint arXiv:2402.19469, 2024.
[18] Christoph Drösser. KI wird ein großartiger Kopilot für Mathematiker sein. https://www. spektrum.de/news/wie-ki-und-beweispruefer -die-arbeit-von-mathematikern-veraendern/2210083, 2024.
[19] Sébastien Bubeck, Varun Chandrasekaran, Ronen Eldan, Johannes Gehrke, Eric Horvitz, Ece Kamar, Peter Lee, Yin Tat Lee, Yuanzhi Li, Scott Lundberg, et al. Sparks of artificial general intelligence: Early experiments with GPT-4. arXiv preprint arXiv:2303.12712, 2023.
[20] Grégoire Mialon, Clémentine Fourrier, Craig Swift, Thomas Wolf, Yann LeCun, and Thomas Scialom. GAIA: a benchmark for general AI assistants. arXiv preprint arXiv:2311.12983, 2023.
[21] Jorge Luis Borges. Die analytische Sprache John Wilkins'. In Das Eine und die Vielen. Essays zur Literatur. Hanser, 1966.
[22] Hans-Werner Eroms. Vielfalt and Einheit der deutschen Sprache. Deutsche Akademie für Sprache and Dichtung and Union der deutschen Akademien der Wissenschaften, 2018.
[23] Griffin Adams, Alex Fabbri, Faisal Ladhak, Eric Lehman, and Noémie Elhadad. From sparse to dense: GPT-4 summarization with chain of density prompting. In Yue Dong, Wen Xiao, Lu Wang, Fei Liu, and Giuseppe

Carenini, editors, Proceedings of the 4 th New Frontiers in Summarization Workshop, pages 68-74, Singapore, December 2023. Association for Computational Linguistics.
[24] Heinrich von Kleist. Über die allmähliche Verfertigung der Gedanken beim Reden (1811). https://www.projekt-gutenberg.org/kleist/ gedanken/gedanken.html.
[25] Ludwig Wittgenstein. Philosophische Untersuchungen. Suhrkamp Verlag, 1971.
[26] Ilya Sutskever and Jensen Huang. AI Today and Vision of the Future. https://www.youtube.com/watch?v=-yquJiNKIAE, 2023.
[27] Xinming Tu. Large language models for scientific hypothesis/research ideas generation. https://xinmingtu.cn/blog/2023/LLM_science/, 2024.
[28] Ludwig Wittgenstein. Tractatus logico-philosophicus. Suhrkamp Verlag, 1963.
[29] John Firth. A synopsis of linguistic theory, 1930-1955. Studies in linguistic analysis, pages 10-32, 1957.
[30] William James. The Principles of Psychology. Henry Holt, 1890.
[31] Maciej Besta, Nils Blach, Alex Kubicek, Robert Gerstenberger, Lukas Gianinazzi, Joanna Gajda, Tomasz Lehmann, Michal Podstawski, Hubert Niewiadomski, Piotr Nyczyk, et al. Graph of thoughts: Solving elaborate problems with large language models. arXiv preprint arXiv:2308.09687, 2023.
[32] Paperswithcode. Math Word Problem Solving on MATH. https:// paperswithcode.com/sota/math-word-problem-solving-on-math, 2024.
[33] Manon Bischoff. Eine KI könnte die Mathematik-Olympiade gewinnen. https://www.spektrum.de/news/die-ki-alphageometryloest-auf gaben-dermathematik-olympiade/2204167, 2024.
[34] Terence Tao and Steven Strogatz. What Makes for 'Good' Mathematics? https://www.quantamagazine.org/what-makes-for-good-mathema tics-20240201/, 2024.
[35] Aarohi Srivastava, Abhinav Rastogi, Abhishek Rao, Abu Awal Md Shoeb, Abubakar Abid, Adam Fisch, Adam R Brown, Adam Santoro, Aditya Gupta, Adrià Garriga-Alonso, et al. Beyond the imitation game: Quantifying and extrapolating the capabilities of language models. arXiv preprint arXiv:2206.04615, 2022.
[36] Francis Katamba. Morphology. Macmillan Press, 1993.
[37] William Blake. Auguries of Innocence (1803). https://en.wikisourc e.org/wiki/Auguries_of_Innocence.
[38] Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N Gomez, Lukasz Kaiser, and Illia Polosukhin. Attention is all you need. Advances in neural information processing systems, 30, 2017 .

[39] Hugo Touvron, Thibaut Lavril, Gautier Izacard, Xavier Martinet, MarieAnne Lachaux, Timothée Lacroix, Baptiste Rozière, Naman Goyal, Eric Hambro, Faisal Azhar, et al. Llama: Open and efficient foundation language models. arXiv preprint arXiv:2302.13971, 2023.
[40] Peter Schoppert. Has your book been used to train the AI? https://ai copyright.substack.com/p/has-your-book-been-used-to-train, 2023 .
[41] Gregory Roberts. AI Training Datasets: the Books1+Books2 that Big AI eats for breakfast. https://gregoreite.com/drilling-down-det ails-on-the-ai-training-datasets/, 2022.
[42] Jack Bandy. Dirty Secrets of BookCorpus, a Key Dataset in Machine Learning. https://towardsdatascience.com/dirty-secrets-of-b ookcorpus-a-key-dataset-in-machine-learning-6ee2927e8650, 2021 .
[43] Guhao Feng, Bohang Zhang, Yuntian Gu, Haotian Ye, Di He, and Liwei Wang. Towards revealing the mystery behind chain of thought: a theoretical perspective. Advances in Neural Information Processing Systems, 36, 2024.
[44] Ivan Y Tyukin, Alexander N Gorban, Muhammad H Alkhudaydi, and Qinghua Zhou. Demystification of few-shot and one-shot learning. In 2021 international joint conference on neural networks (IJCNN), pages $1-7$. IEEE, 2021.
[45] Chris Wendler, Veniamin Veselovsky, Giovanni Monea, and Robert West. Do Llamas Work in English? On the Latent Language of Multilingual Transformers. arXiv preprint arXiv:2402.10588, 2024.
[46] Hans-Peter Stricker. Wortschatz, Bernhardsch. https://wortschatz bernhardsch.com, 2022.