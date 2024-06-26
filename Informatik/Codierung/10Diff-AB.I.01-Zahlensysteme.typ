
#import "@local/schule:0.0.5": ab, informatik
#import ab: *
#import informatik: *

#show: arbeitsblatt.with(
	titel: [Zahlensysteme],
	reihe: [Informationen, Daten und Codierungen],
	autor: "J. Neugebauer",
	nummer: "I.1",
  loesungen: "keine"
)

#abtitel()

Ein Zahlensystem ist ein System zur Darstellung von Zahlen. Wir benutzen im Alltag das _Dezimalsystem_, ein sogenanntes _Stellenwertsystem_ zur Basis 10. Das bedeutet, es werden 10 verschiedene Ziffern zur Darstellung benutzt. Das _Binärsystem_ benutzt nur zwei, und das _Hexadezimalsystem_ verwendet ganze 16.

Die Darstellung von Zahlen in den Stellenwertsystemen erfolgt immer gleich. Der einzige Unterschied ist die Basis - also die Anzahl an Ziffern.

#[
	#set text(0.76em)
	#table(
		columns: (auto,) * 5 + (1fr,),
		stroke: .75pt,
		[], [Basis], [Ziffern], [Zahlwert], [Darstellung], [Rechnung],
		[Binär], [2], [0, 1], [103], [#nary(103, 2)], [$1 · 2^6 + 1 · 2^5 + 0 · 2^4 + 0 · 2^3 + 1 · 2^2 + 1 · 2^1 + 1 · 2^0$],
		[Dezimal], [10], [0 - 9], [103], [#nary(103, 10)], [$1 · 10^2 + 0 · 10^1 + 3 · 10^0$],
	)
]

#aufgabe[
	Rechne in das Dezimalsystem um.
	#tasks(numbering:"a)")[
	- #nary(149, 2, pad:8)
	- #nary(38, 2, pad:8)
	- #nary(114, 2, pad:8)
	]

	#loesung[#enuma[
	1. #nary(149, 2, pad:8) = #nary(149, 2, pad:2)
	2. #nary(38, 2, pad:8) = #nary(38, 2, pad:2)
	3. #nary(114, 2, pad:8) = #nary(114, 2, pad:2)
	]]
]

#aufgabe[
	Wie würde die Umrechnung aus dem _Oktalsystem_ (Basis 8) funktionieren? Überlegt gemeinsam und rechnet die folgenden Zahlen um.
	#tasks(cols:4, numbering:"a)")[
	- #nary(23, 8, pad:4) = #nary(23, 10)
	- #nary(49, 8, pad:4)
	- #nary(88, 8, pad:4)
	- #nary(114, 8, pad:4)
	]

	#loesung[
	#enuma[
	- #nary(23, 8, pad:4) = #nary(23, 10)
	- #nary(49, 8, pad:4) = #nary(49, 10)
	- #nary(88, 8, pad:4) = #nary(88, 10)
	- #nary(114, 8, pad:4) = #nary(114, 10)
	]
	]
]

#aufgabe[
	Welche Schwierigkeit tritt beim _Hexadezimalsystem_ (Basis 16) auf, wenn das Stellenwertsystem 16 verschiedene Ziffern nutzt?

	Überlegt euch gemeinsam Lösungsansätze und erarbeitet einige Beispiele für Zahlen in Hexadezimaldarstellung.

	#loesung[
		*Problem:* Das System braucht mehr als die 10 Ziffern (0 - 9), die wir im Dezimalsystem nutzen.

		*Lösung*: Sechs neue Zeichen einführen (A - F).
	]
]

#pagebreak()
#abtitel(titel: [#dertitel: Das Moduloverfahren])

Ein Zahlensystem ist ein System zur Darstellung von Zahlen. Wir benutzen im Alltag das _Dezimalsystem_, ein sogenanntes _Stellenwertsystem_ zur Basis 10. Das bedeutet, es werden 10 verschiedene Ziffern zur Darstellung benutzt. Das _Binärsystem_ benutzt nur zwei, und das _Hexadezimalsystem_ verwendet ganze 16.

Für die Umrechnung in das Dezimalsystem kann immer dasselbe Verfahren benutzt werden: Das _Moduloverfahren_.

#aufgabe(number:1)[
	Wandle die Zahl #nary(42, 10) in ihre binäre Darstellung um. Befolge dazu die folgenden Schritte _exakt_:

	#rahmen[
	#set text(.88em)
	1. Teile die Zahl mit Rest durch 2 (die Modulo-Operation).

	   z.B. $7 : 2 = 3 "Rest" 1$ \
	   oder $12 : 2 = 6 "Rest" 0$
	2. Wenn das Ergebnis ungleich Null ist, nimm das Ergebnis als neue Zahl und wiederhole ab Schritt 1.

		z.B. $7 : 2 = 3 "Rest" 1$\
		Neue Zahl: $3$

		Wenn das Ergebnis gleich Null ist, dann weiter bei Schritt 3.
	3. Notiere die Reste der Rechnung von "unten nach oben", also _vom letzten_ berechneten Rest _bis zum ersten_.
	]
]

#aufgabe(number:2)[
	Rechne in das Binärsystem um.
	#tasks(numbering:"a)")[
	- #nary(65, 10)
	- #nary(71, 10)
	- #nary(1000, 10)
	]

	#loesung[
	#enuma[
	- #nary(65, 10) = #nary(65, 2)
	- #nary(71, 10) = #nary(65, 2)
	- #nary(1000, 10) = #nary(65, 2)
	]
	]
]

#aufgabe(number:3)[
	Funktioniert das Moduloverfahren auch für das _Oktalsystem_ mit der Basis 8?
]

#pagebreak()
#counter("aufgaben").update(0)
#abtitel(titel: [#dertitel: Das Tertiärsystem])


#aufgabe(number:1)[
	Stellt euch gegenseitig die Aufgaben der letzten Gruppe vor.
]

#aufgabe(number:2)[
	Löst gemeinsam die folgenden Aufgaben.

	#tasks(cols:2,numbering:"a)")[
	- #nary(65, 2) = (...)#sub[8]
	- #nary(32, 8) = (...)#sub[5]
	- #nary(97, 10) = (...)#sub[2]
	- #nary(17, 3) = (...)#sub[10]
	]

	#loesung[
	#tasks(cols:2,numbering:"a)")[
	- #nary(65, 2) = #nary(65, 8)
	- #nary(32, 8) = #nary(32, 5)
	- #nary(97, 10) = #nary(97, 2)
	- #nary(17, 3) = #nary(17, 10)
	]
	]
]

#aufgabe(number:3)[
	Erklärt den Witz am Whiteboard (bzw. unten).

	#rahmen[
		Es gibt 10 Personen auf dieser Welt: Diejenigen, die Binärzahlen verstehen, diejenigen, die das nicht tun und diejenigen, die wissen, dass dies ein Witz im Tertiärsystem ist.
	]
]

#aufgabe(number:4)[
	Erweitert den Witz zur Basis 4.
]
