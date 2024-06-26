#import "../../../typ/ab.typ": *

#import "../../../typ/informatik.typ": *

#show: arbeitsblatt.with(
	autor: 		"J. Neugebauer",
	titel: 		"Binäre Entscheidungsbäume",
	reihe:		"Nichtlineare Datenstrukturen: Bäume",
	kuerzel:	"Ngb",
	kurs:		"Q2",
	nummer:		"IV.2",
	fach: 		"Informatik",
	version:	"2023-05-01",

	fontsize:	11pt
)

#let ordner(name) = [_"#name"_]
#let programm = ordner

#docstart()
#abtitel()

#align(center, image("01-Abb_Entscheidungsbaum_Tennis.png", width:8cm))

#aufgabe[
	Studiere die Dokumentation der Klasse `BinaryTree<ContentType>` und vergleiche sie mit der Verwendung der Klasse im Projekt #ordner("Entscheidungsbaum") im Tauschordner (in der Klasse `DecisionTreeBuilder`).

	Versuche die folgenden Leitfragen für dich zu beantworten:
	- Wieso wird mehr als ein Objekt der Klasse `BinaryTree` erstellt?
	- In welcher Reihenfolge wird der Baum aufgebaut (werden die Objekte der Knoten instanziiert)?
	- Wie werden die Inhalte vom generischen Typ `ContentType` (hier Unterklassen der Klasse `Decision`) im Baum gespeichert?
]

#aufgabe[
	Die Knoten enthalten Objekte der Unterklassen von `Decision`. Jede Unterklasse entscheidet für einen Datensatz, ob es im Baum links oder rechts weiter geht. Die Blattknoten enthalten keine Entscheidung, sondern die finale Festlegung einer Klasse für den Datensatz (hier "Ja" oder "Nein") in der Klasse "Classification".

	#operator[Analysiere] die Klassen `Decision` und `Classification` und #operator[beschreibe] ihre Funktionsweise. #operator[Erkläre] auch, wie die erste Entschiedung (in der Wurzel) umgesetzt ist (Klasse `DecisionTreeBuilder`, Zeile 17-19).
]

#aufgabe[
	#operator[Implementiere] anhand des Beispiels im Konstruktor der Klasse `DecisionTreeBuilder` den vollständigen Entscheidungsbaum zur Tennis-Frage (vgl. Abbildung oben).

	Teste deinen Baum mit dem _Objektinspektor_ von #programm[BlueJ].
]

#aufgabe[
	Vervollständige die Methode `testeDatensatz` in `Entscheider`, so dass für einen Datensatz am Ende die korrekte Entscheidung (als `String`) zurückgegeben wird.

	Teste mit verschiedenen Datensätzen.
]

#docend()
