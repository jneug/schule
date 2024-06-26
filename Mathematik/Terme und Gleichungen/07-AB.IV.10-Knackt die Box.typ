#import "@local/schule:0.1.1": ab
#import ab: *

#show: arbeitsblatt.with(
	autor:   "J. Neugebauer",
	kuerzel: "Ngb",
	titel:   "Knackt die Box",
	reihe:   "Terme und Gleichungen",
	nummer:  "10",
	fach:    "Mathematik",
	kurs:    "Jg.7",
	version: "2024-04-12",

  page: "a5",

	// fontsize: 13pt,
)

#repeat(2)[
  #abtitel()

  #aufgabe[
    Lest gemeinsam im _Buch auf Seite 123_ den "*Forschungsauftrag 1: Boxen füllen*". Geht dann wie folgt vor:
    - Einer überlegt sich eine Boxengleichung.
    - Einer löst die Boxengleichung.
    - Der Rest beobachtet und notiert die Boxengleichung und die Lösungsschritte als Bilder im Heft (wie in _Fig. 1_).
    - Wechselt die Rollen, so dass jeder einmal eine Boxengleichung legen durfte.
  ]

  #aufgabe[
    Lest gemeinsam im _Buch auf Seite 123_ den "*Forschungsauftrag 2: Boxen und Gleichungen*". Geht dabei wie folgt vor:
    - Ordnet gemeinsam die Gleichungen in _Fig. 3_ den Boxengleichungen zu.
    - Überlegt euch _gemeinsam_ die Schritte zur Lösung und notiert sie im Heft.

      #hinweis[Als Hilfe könnt ihr die Gleichungen mit echten Schachteln und Hölzern nachlegen.]
  ]

  #aufgabe[
    Lest gemeinsam im _Buch auf Seite 123_ den "*Forschungsauftrag 3: Boxenfolgen legen*". Geht dann wie folgt vor:
    - Notiert die Boxengleichungen aus Aufgabe 1 als Gleichungen mit Zahlen und Variablen im Heft.
    - Notiert auch die Lösungsschritte aus Aufgabe 1 und 2 als Terme und Gleichungen.
  ]

  #aufgabe(icons:(sym.star,))[
    Bisher bestehen unsere Boxengleichungen aus Summen von positiven Zahlen und Variablen. Überlegt gemeinsam, wie man auch negative Zahlen mit Streichhölzern darstellen könnte.
  ]
]
