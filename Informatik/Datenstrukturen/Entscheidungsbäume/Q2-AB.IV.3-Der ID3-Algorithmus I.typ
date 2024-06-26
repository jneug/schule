#import "@local/schule:0.0.5": ab, informatik
#import ab: *
#import informatik: *


#show: arbeitsblatt.with(
	autor: 		"J. Neugebauer",
	titel: 		"Der ID3-Algorithmus I",
	reihe:		"Nichtlineare Datenstrukturen: Bäume",
	kuerzel:	"Ngb",
	kurs:		  "Q2",
	nummer:		"IV.3",
	fach: 		"Informatik",
	version:	"2024-01-15",

	fontsize:	11pt
)

#let ordner(name) = [_"#name"_]
#let programm = ordner

#abtitel()

#v(1em)
#rahmen[
	#place(top+right, image("Q2-AB.3-Abb_RMS Titanic.jpg", width:4.5cm))
	#block(width:100%-5cm)[#small[
		Die Titanic wurde 1912 gebaut und stach am 14. April zu ihrer Jungfernfahrt in See. An Bord waren über 2200 Passagiere, die sich in drei Klassen zur ersten Überfahrt des Ozeanriesen eingebucht hatten (legal bezahlt oder illegal eingeschmuggelt). Gegen 23:40 Uhr kollidierte die Titanic mit einem Eisberg und sank zwei Stunden und 40 Minuten später vollständig.

		Trotz der einigermaßen langen Zeit bis zum Sinken des Schiffes überlebten nur etwa 686 Menschen das Unglück.
	]
]]

Der vorliegende Datensatz ist ein bereinigter Auszug aus der Passierliste der Titanic. Wir wollen nun mittels des _ID3-Algorithmus_ den Computer einen _Entscheidungsbaum_ generieren lassen, der für einen Passagier entscheidet, ob er überlebt hat, oder nicht.

#aufgabe[
	#operator[Berechne] die _Entropie_ $E_"gesamt"$ des vollständigen Datensatzes bezüglich des Zielattributes
	`survived`.

	$ E_"gesamt" = #move(dy:3pt, luecke(width:12cm)) $

	#infobox[
		Die _Entropie_ berechnet sich durch $E_"gesamt" = -P_"ja" dot log_2(P_"ja") -P_"nein" dot log_2(P_"nein")$, wobei $P_"ja/nein"$ den Anteil der Datensätze mit der Ausprägung "überlebt = ja" bzw. "überlebt = nein" darstellt.
	]
]

#aufgabe[
	#operator[Berechne] die _Entropie_ für alle Ausprägungen (Werte) des Attributes #luecke(width:4cm) bezüglich des Zielattributes `survived`.

		$ E_#luecke(width:3mm) = #move(dy:3pt, luecke(width:12cm)) $
		$ E_#luecke(width:3mm) = #move(dy:3pt, luecke(width:12cm)) $
		$ E_#luecke(width:3mm) = #move(dy:3pt, luecke(width:12cm)) $

	#infobox[
		Die _Entropie_ $E_"Attributswert"$ berechnet sich wie oben, allerdings werden nur Zeilen berücksichtigt, bei denen das betreffende Attribut den betreffenden Wert hat (z.B. alle Zeilen bei denen "sex = male" gilt).
	]
]

#aufgabe[
	#operator[Berechne] den _Informationsgewinn_ für dein Attribut.

	$ "IG"_#luecke(width:3mm) = #move(dy:3pt, luecke(width:12cm)) $

	#infobox[
		Der _Informationsgewinn_ $"IG"_"Attribut"$ eines Attributs berechnet sich durch $E_"gesamt" - sum P_"Attributwert" dot E_"Attributwert"$.
	]
]
