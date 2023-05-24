#import "../../../typ/ab.typ": *

#show: arbeitsblatt.with(
	fach: 		[Informatik],
	name: 		[J. Neugebauer],
	kuerzel: 	[Ngb],
	kurs: 		[06c],
	nummer: 	[III.3],
	reihe: 		[Nicht-lineare Datenstrukturen],
	titel:		[Darstellung von Graphen],

	version: 	[2023-05-24],

	fontsize: 11pt,
	// paper: "a5",
	// flipped: true,
)

#let hv(a, b) = [#h(a)#v(b)]

#docstart()
#abtitel()
#v(1em)

Um einen Graphen speichern zu können, müssen die Informationen über Knoten und Kanten in einem geeigneten Format repräsentiert werden.

Um die Beziehung der Knoten eines Graphen wie dem abgebildeten zu speichern, kann eine *Adjazenzliste* verwendet werden.

#let al(node, ..nodes) = (
	[*#node*], [#nodes.pos().sorted().map(str).join(", ")]
)

#wrapfig(left, gutter:2cm,
	image("Q2-AB.III.11- Abb_Graph_1.png", width:6cm),
	table(
		columns: 2,
		fill: (c,r) => if r == 0 { theme.tables.header },
		[_Knoten_], [_Nachbarn_],
		..al(1, 7, 2, 4),
		..al(2, 1, 3, 7),
		..al(3, 4, 2),
		..al(4),
		..al(5),
		..al(6),
		..al(7),
	)
)

1. Diskutiert gemeinsam, wie die _Adjazenzliste_ aufgebaut ist und füllt die fehlenden Zeilen (4 bis 7) vollständig aus.
2. Entwickelt zu den unten gezeigten Graphen jeweils Adjazenzlisten. Überlegt gemeinsam, wie die im Diagramm gezeigten Informationen in der Liste repräsentiert werden könnten.

#grid(
	columns:3, gutter:10mm,
	[a)], [b)], [c)],
	image("Q2-AB.III.11- Abb_Graph_2.png", width:100%),
	image("Q2-AB.III.11- Abb_Graph_3.png", width:100%),
	image("Q2-AB.III.11- Abb_Graph_4.png", width:100%)
)

#pagebreak()

#abtitel()
#v(1em)

Um einen Graphen speichern zu können, müssen die Informationen über Knoten und Kanten in einem geeigneten Format repräsentiert werden.

Um die Beziehung der Knoten eines Graphen wie dem abgebildeten zu speichern, kann eine *Adjazenzmatrix* verwendet werden.

#let am(node, ..nodes) = {
	let row = ([*#node*],)
	for i in range(7) {
		if i+1 in nodes.pos() {
			row.push([1])
		} else {
			row.push([ ])
		}
	}
	return row
}

#wrapfig(left, gutter:2cm,
	image("Q2-AB.III.11- Abb_Graph_1.png", width:6cm),
	table(
		columns:8,
		fill: (c,r) => if c == 0 or r == 0 { theme.tables.header },
		[], ..range(7).map(i => i+1).map(x => [*#x*]),
		..am(1, 7, 2, 4),
		..am(2, 1, 3, 7),
		..am(3, 4, 2),
		..am(4),
		..am(5),
		..am(6),
		..am(7),
	)
)

1. Diskutiert gemeinsam, wie die _Adjazenzmatrix_ aufgebaut ist und füllt die fehlenden Zeilen (4 bis 7) vollständig aus.
2. Entwickelt zu den unten gezeigten Graphen jeweils Adjazenzmatrizen. Überlegt gemeinsam, wie die im Diagramm gezeigten Informationen in der Matrix repräsentiert werden könnten.

#grid(
	columns:3, gutter:10mm,
	[a)], [b)], [c)],
	image("Q2-AB.III.11- Abb_Graph_2.png", width:100%),
	image("Q2-AB.III.11- Abb_Graph_3.png", width:100%),
	image("Q2-AB.III.11- Abb_Graph_4.png", width:100%)
)


#pagebreak()

#abtitel()
#v(1em)

1. Entscheidet gemeinsam, ob sich für die gezeigten Graphen eine _Adjazenzliste_ oder eine _Adjazenzmatrix_ zur Repräsentation bzw. Speicherung eignet.

#grid(
	columns:2, gutter:10mm,
	[a)], [b)],
	image("Q2-AB.III.11- Abb_Graph_5.png", width:100%),
	image("Q2-AB.III.11- Abb_Graph_6.png", width:100%)
)

2. Notiert stichpunkteartig Vor- und Nachteile der beiden Darstellungsformen. Für welche Graphen und welche Situationen eignet sich welche der beiden Arten?

#set align(center)
#columns(2)[
*Adjazenzliste*

#table(
	columns:2,
	fill: (c,r) => if r == 0 {theme.tables.header},
	align: center,
	[*Vorteile*], [*Nachteile*],
	[#hv(50%, 1fr)], [#hv(50%, 1fr)]
)

#colbreak()

*Adjazenzmatrix*

#let hv(a, b) = [#h(a)#v(b)]
#table(
	columns:2,
	fill: (c,r) => if r == 0 {theme.tables.header},
	align: center,
	[*Vorteile*], [*Nachteile*],
	[#hv(50%, 1fr)], [#hv(50%, 1fr)]
)
]

#docend()
