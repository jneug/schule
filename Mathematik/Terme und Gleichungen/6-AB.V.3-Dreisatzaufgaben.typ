#import "../../typ/ab.typ": *

#let aufg( body, lsg, first:false ) = [
	#if not first {	pagebreak(weak:true) }
	#v(1cm)
	#align(center, luecke(width:8cm))
	#body

	#rect(width:100%, height:4cm)[
		#loesung[#lsg]
	]
	#hinweis[
		- Denkt an die Regeln der schriftlichen Division.
		- Rundet die Ergebnisse auf drei Nachkommastellen.
		- Findet den Wert für _eine_ Person heraus.
	]
]

#show: arbeitsblatt.with(
	fach: "Mathematik",
	name: "J. Neugebauer",
	kuerzel: "Ngb",
	kurs: "06c",
	nummer: "V.3",
	reihe: "Terme und Variablen",
	titel: "Dreisatzaufgaben",
	loesungen: "sofort",

	version: "2023-05-15",

	paper: "a5",
	flipped: true,
)

#docstart()

#aufg(first:true)[
	Im Jahr 2022 wurden in Deutschland um die 746 Millionen Tonnen _Treibhausgas-Emissionen_ ausgestoßen. Die Einwohnerzahl lag bei etwas über 84.000.000. Wie viel Treibhausgase wurden 2022 in Deutschland in einem Haushalt mit 6 Mitgliedern erzeugt?
][
	84 Mio. Menschen produzieren 746 Mio. Tonnen Treibhausgas-Emissionen.

	1 Mensch produziert $746.000.000 : 84.000.000 = 746 : 84 approx 8,881$ Tonnen.

	6 Menschen produzieren $8,881 dot 6 = 53,286$ Tonnen.
]

#aufg[
	Im Jahr 2022 hat eine in Deutschland lebende sechsköpfige Familie etwa 53,286 Tonnen _Treibhausgas-Emissionen_ ausgestoßen. Die Einwohnerzahl in Deutschland lag bei etwas über 84.000.000. Wie viel Treibhausgase wurden 2022 insgesamt in Deutschland erzeugt?
][
	6 Menschen produzieren 53,286 Tonnen Treibhausgas-Emissionen.

	1 Mensch produziert $53,286 : 6 = 8,881$ Tonnen.

	84 Mio. Menschen produzieren $8,881 dot 84.000.000 = 746.004.000 approx 746$ Mio. Tonnen.
]

#aufg[
	Im Jahr 2022 wurden in Deutschland etwa 6.515.000 Tonnen Fleisch konsumiert. In Deutschland leben ungefähr 76,6 Millionen Menschen, die Fleisch essen. Wie viel Fleisch wurde 2022 in Deutschland von einem Haushalt mit 5 Fleischessern konsumiert?
][
	76,6 Mio. Menschen verbrauchen 6.515.000 Tonnen Fleisch.
	$ 6.515.000 : 76.600.000 = 6.515 : 76.600 approx 0,851 $
	$ 0,851 dot 6 = 5,106$
]

#aufg[
	Im Jahr 2022 hat eine in Deutschland lebende Familie mit fünf Personen etwa 0,425 Tonnen Fleisch konsumiert. In Deutschland leben ungefähr 76,6 Millionen Menschen, die Fleisch essen. Wie viel Fleisch wurde 2022 in Deutschland insgesamt konsumiert?
][
	$ 0,425 : 5 = 0,085 $
	$ 0,085 dot 76.600.000 = 6.511.000 $
]

#aufg[
	Im Jahr 2022 wurden in Bielefeld etwa 664,2 Millionen Kubikmeter (m#super[3]) Trinkwasser verbraucht. Die Einwohnerzahl lag bei ungefähr 344.000. Wie viel Trinkwasser hat eine Bielefelder Familie mit 5 Personen im Jahr 2022 verbraucht?
][
	$ 664.200.000 : 344.000 = 664.200 : 344 approx 1930,814 $
	$ 1930.814 dot 9654,07 $
]

#aufg[
	Im Jahr 2022 hat eine Bielefelder Familie mit 5 Mitgliedern etwa 9654,07 Kubikmeter (m#super[3]) Trinkwasser verbraucht. Die Einwohnerzahl von Bielefeld lag bei ungefähr 344.000. Wie viel Trinkwasser wurde 2022 insgesamt in Bielefeld verbraucht?
][
	$ 9654,07 : 5 = 1930,814 $
	$ 1930,814 * 344.000 = 664.200.016 approx 664.2 #text[Mio.] $
]

#aufg[
	Im Jahr 2022 waren in Deutschland etwa 60,13 Millionen Autos zugelassen. Die Einwohnerzahl lag bei etwas über 84.000.000. Die Einwohnerzahl von Bielefeld lag bei ungefähr 344.000. Wie viele Autos waren demnach 2022 in Bielefeld zugelassen?
][
	$ 60.130.000 : 84.000.000 = 6.013 : 8.400 approx 0,716 $
	$ 0,716 dot 344.000 = 246.304 $
]

#aufg[
	Im Jahr 2022 waren auf die etwa 344.000 Einwohner in Bielefeld 246.246 Autos zugelassen. In Deutschland leben etwa 84 Millionen Menschen. Wie viele Autos waren demnach 2022 insgesamt in Deutschland zugelassen?
][
	$ 246.246 : 344.000 approx 0,716 $
	$ 0,716 * 84.000.000 = 60.144.000 approx 60,14 #text[Mio.] $
]

#docend()
