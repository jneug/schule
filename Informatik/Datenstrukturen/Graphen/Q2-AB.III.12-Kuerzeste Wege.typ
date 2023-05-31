#import "../../../typ/ab.typ": *

#show: arbeitsblatt.with(
	fach: 		[Informatik],
	name: 		[J. Neugebauer],
	kuerzel: 	[Ngb],
	kurs: 		[Q1],
	nummer: 	[III.3],
	reihe: 		[Nicht-lineare Datenstrukturen],
	titel:		[Kürzeste Wege],

	version: 	[2023-05-30],

	fontsize: 10pt,
	// paper: "a5",
	// flipped: true,
)

#docstart()
#abtitel()
#v(1em)

#aufgabe[
	Führe den Algorithmus mit den Hilfsmitteln auf dem abgebildeten Graphen durch.
	#rahmen(stroke:2pt+yellow)[
		*Vorgehen*

		- Verwende die Spielfigur, um den aktuellen Knoten zu markieren.
		- Trage die Nachfolger mit dem aktuell kürzesten Weg und ihrem aktuellen Vorgänger in die Tabelle ein.
		- #grid(
			columns:(100%-20mm, 20mm),
			column-gutter: 5mm,
			[Streiche abgearbeitete Knoten im Graphen und der Tabelle durch. Notiert dann den kürzesten Weg und den Vorgängerknoten neben dem Knoten im Graphen.],
			move(dy:-3mm, block(width:20mm)[
				#circle(radius:5mm, stroke:1pt+black, text(size:14pt, [*C*]))
				#place(top+left, dx:10mm, [1])
				#place(top+left, dx:10mm, dy: 8mm, [A])
			])
		)
	]
	#kasten[
		*Funktionsweise des Algorithmus*

		- Der Algorithmus arbeitet so lange, bis die Liste leer ist.
		- Es wird immer der Knoten mit dem aktuell kürzesten Weg aus der Liste entfernt und bearbeitet.
		- Es werden alle Nachbarn des aktuellen Knotens geprüft:
			- Falls der Knoten schon bearbeitet wurde, passiert nichts.
			- Falls der Knoten noch nicht in der Liste ist, wird er mit dem aktuellen Knoten als Vorgänger in die Liste aufgenommen.
			- Falls der Knoten schon vorhanden ist und der neue Weg kürzer als der gefundene ist, werden die Daten in der Liste aktualisiert.
			- Sonst passiert nichts.
		- Der Weg zu einem Nachbarknoten berechnet sich aus dem Weg zum aktuellen Knoten plus das Kantengewicht.
	]
]

#aufgabe[
	Ermittelt nach Ende des Algorithmus den Pfad für den kürzesten Weg durch das Labyrinth. Wie kann dieser Pfad aus dem Ergebnis des Algorithmus gewonnen werden?
]

#aufgabe[
	Verwende den Algorithmus, um in den gezeigten Graphen den kürzesten Weg vom Knoten "A" zum Knoten "Z" zu finden. Was Fällt Dir bei der Durchführung auf?

	#set align(center)
	#columns(2)[
		1. #image("Q2-AB.III.12-Abb_A3a.png", width: 100%)


		2. #image("Q2-AB.III.12-Abb_A3b.png", width: 100%)
	]
]

#pagebreak()

#table(
	columns: (2cm, range(8).map(i => 1fr)).flatten(),
	rows: 1cm,
	align: horizon,
	[*Knoten*], ..range(8).map(i => [ ]),
	[*kürz. Weg*], ..range(8).map(i => [ ]),
	[*Vorgänger*], ..range(8).map(i => [ ])
)
#table(
	columns: (2cm, range(8).map(i => 1fr)).flatten(),
	rows: 1cm,
	align: horizon,
	[*Knoten*], ..range(8).map(i => [ ]),
	[*kürz. Weg*], ..range(8).map(i => [ ]),
	[*Vorgänger*], ..range(8).map(i => [ ])
)

#image("Q2-AB.III.12-Abb_Labyrinth.png", width: 100%)


#docend()
