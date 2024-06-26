#import "@local/schule:0.0.5": ab, informatik
#import ab: *
#import informatik: *


#show: arbeitsblatt.with(
	autor: 		"J. Neugebauer",
	titel: 		"Der ID3-Algorithmus I",
	reihe:		"Nichtlineare Datenstrukturen: Bäume",
	kuerzel:	"Ngb",
	kurs:		  "Q2",
	nummer:		"IV.4",
	fach: 		"Informatik",
	version:	"2024-01-15",

	fontsize:	11pt
)

//#let programm(name) = text(ab.theme.primary, name)

#abtitel()

Kopiere das Projekt #ordner[07-ID3-Algorithmus] aus dem Tauschordner
und öffne es in #programm[BlueJ].

#aufgabe[
  Erstelle eine Instanz des `DescisionTreeBuilder` und führe die Methode  `calculateEntropy()` aus. Vergleiche die angezeigten Daten mit der berechneten _Entropie_ und dem _Informationsgewinn_ der Attribute.
]

#aufgabe[
  Führe die Methode `buildTree()` auf dem Objekt aus. Der
	Entschiedungsbaum wird nun rekursiv aus den Trainingsdaten aufgebaut.

	Skizziere den entstandenen Baum, indem du mit dem Inspektor von
	#programm[BlueJ]  die Objekte erkundest.

	#rahmen[
		#v(4cm)
	]
]

#aufgabe[
  Die Trainingsdaten werden aus der Datei #datei[titanic50.csv] im Projektordner geladen. Der Dateiname wird im `DescisionTreeBuilder` in der Klassenvariablen `TRAININGDATA` festgelegt. Statt 50 Passagierdaten sind auch Datensätze mit 300 (#datei[titanic300.csv]) und 800 (#datei[titanic800.csv]) vorhanden.

	Erstelle den Baum mit einem der anderen Trainingsdatensätze und vergleichen
	das Ergebnis mit dem ersten Baum.

	#hinweis[Zum Vergleich kannst du die Methode `classifyTestdata()` verwenden, um einen Satz unbekannter Passagierdaten zu laden und durch den Entscheidungsbaum klassifizieren zu lassen.]
]

#aufgabe[
  Mit größeren Datensätzen werden die Bäume feiner ausdifferenziert und lassen sich durch den Inspektor nur umständlich betrachten.

	Implementiere die Methode `private void printTree( BinaryTree<DecisionNode> pTree, int pDepth )` wie folgt:

	Die Methode läuft rekursiv durch den Baum. Wenn der aktuelle Baum nicht leer ist, wird der Inhalt der Wurzel ausgegeben. Dann wird die Methode rekursiv erst auf dem linken, dann auf dem rechten Teilbaum aufgerufen. Die Rekursion bricht ab, wenn ein Blattknoten erreicht ist (der Teilbaum leer ist).

	Gestartet wird die Ausgabe mit der Methode `printTree()`.
]

#aufgabe[
  Die maximale Anzahl an Entscheidungen im Baum kann beim Instanziieren des `DescisionTreeBuilder` über den Parameter `pMaxDepth` festgelegt werden. Teste verschiedene Werte für den Parameter und lass dir den entstehenden Baum mit `printTree()` anzeigen.
]

#aufgabe[
	Das rekursive Durchlaufen des Baumes, wie in der Methode `printTree()`, nennt man _Traversierung_.

	Lies im Buch den Abschnitt 5.2 (ab Seite 145) über Binärbäume - insbesondere über die verschiedenen Arten der _Traversierung_. Bearbeite dann auf Seite 150 Aufgabe 3 a) und b). ( b) in Pseudocode).
]
