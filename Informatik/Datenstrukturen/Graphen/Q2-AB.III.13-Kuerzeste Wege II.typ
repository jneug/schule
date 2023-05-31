#import "../../../typ/ab.typ": *

#show: arbeitsblatt.with(
	fach: 		[Informatik],
	name: 		[J. Neugebauer],
	kuerzel: 	[Ngb],
	kurs: 		[Q1],
	nummer: 	[III.3],
	reihe: 		[Nicht-lineare Datenstrukturen],
	titel:		[Der Algorithmus von Dijkstra],

	version: 	[2023-05-31],

	fontsize: 10pt,
)

#docstart()
#abtitel()
#v(1em)

#figure(
	image("Q2-AB.III.13-Abb_Strukt_Dijkstra.png", width: 100%),
	caption: [Struktogramm zum Algorithmus von Dijkstra]
) <strukt-dijkstra>

#aufgabe[
	Führe eine Suche nach dem kürzesten Weg vom Startknoten "A" zum Zielknoten "Z" durch. Halte Dich dazu an das Struktogramm in @strukt-dijkstra.

	Dokumentiere alle Veränderungen in der Liste in geeigneter Form.

	#align(center, image("Q2-AB.III.13-Abb_Graph.png", width: 10cm))
]

#pagebreak()
#wrapfig(right, gutter: 8mm,
	table(
		columns: 3,
		fill: tablefill(),
		align: (c,r) => if c == 2 { center } else { left },
		[*Von*], [*Nach*], [*Einheiten*],
		[Bank], [Rathaus], [5],
		[Bank], [Stadtbibliothek], [3],
		[Bank], [Marktplatz], [8],
		[Rathaus], [Stadthalle], [5],
		[Rathaus], [Stadtbibliothek], [4],
		[Marktplatz], [Stadtbibliothek], [4],
		[Marktplatz], [Polizeirevier], [9],
		[Bahnhof], [Polizeirevier], [7],
		[Bahnhof], [Stadtbibliothek], [4],
		[Bahnhof], [Gefängnis], [6],
		[Bahnhof], [Allee], [4],
		[Bahnhof], [Schwimmbad], [1],
		[Stadthalle], [Versteck], [2],
		[Stadthalle], [Schwimmbad], [2],
		[Allee], [Gefängnis], [6],
		[Allee], [Versteck], [1],
		[Allee], [Schwimmbad], [2],
		[Polizeirevier], [Gefängnis], [8],
	),[
		#aufgabe(titel:[Banküberfall])[
			Vor einem Banküberfall wollen die Ganoven ihre Fluchtroute planen. Dazu haben Sie einen Tag die Straßen beobachtet und gezählt, wie viele Polizeieinheiten in dieser Zeit die Straße befahren. Sie kamen zum in der Tabelle rechts dargestellten Ergebnis.

			#enuma[
			1. Bilde die Informationen aus der Tabelle in einem Graphen ab.

			2. Welchen Fluchtweg sollten die Ganoven nach diesen Beobachtungen von der Bank zu ihrem Versteck nehmen? Verwende den Algorithmus von Dijkstra, um eine optimale Route zu finden.

			3. Scheint das Vorgehen der Ganoven sinnvoll? Begründe Deine Antwort im Sachzusammenhang.
			]
		]
	]
)


#docend()
