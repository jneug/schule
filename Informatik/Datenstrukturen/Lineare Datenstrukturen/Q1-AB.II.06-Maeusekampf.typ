#import "@local/schule:0.0.5": ab
#import ab: *

#show: arbeitsblatt.with(
  titel: [Professor Grips' Mäusekampf],
  reihe: [Lineare dynamische Datenstrukturen],
  kurs: [Q1],
  fach: "Informatik",
  nummer: "II.06",

  version: "2023-11-24",

  fontsize: 10pt,
)

#abtitel()

*Cheese Champion* (dt. _Mäusekampf_) ist der Titel einer Aufgabe aus dem _17. Bundeswettbewerb Informatik_.
#rahmen[
  #set text(.8em)
  #wrapfig(right, gutter: 5mm, dy:.8cm)[
    #image(width:4cm, "Q1-AB.II.06-Cheese_Champion.png")
  ][
    Prof. Grip will die Durchsetzungsfähigkeit einzelner Mäuse einer Mäusekolonie feststellen. Dazu hat er die folgende Versuchsanordnung entworfen: Ausgehend von einem unterirdischen Gang gräbt er in einem spitzen Winkel einen Ausgang zur Oberfläche, an dessen Ende er ein Stück duftenden Käse deponiert.

    Die Mäuse der Kolonie kommen direkt hintereinander von links in den unterirdischen Gang und wollen durch den Abzweig zum Käse. Da der Gang zum Käse in einem spitzen Winkel abzweigt, muss jede Maus erst über den Abzweig hinaus weiter in den Gang hineinlaufen. Dann dreht sie sich um und hat möglicherweise ein Problem: Sie stößt auf die nachfolgende Maus, die ebenfalls in den rechten Abschnitt möchte.
  ]

  Präziser gelten folgende Regeln für das Erreichen des Käses:
  - Jede Maus aus dem Eingang muss zunächst an der Abzweigung vorbei in den Seitengang.
  - Wenn Sie im Seitengang ist, dann kann Sie entweder den Zweikampf gegen die nachfolgende Maus aus dem Eingang gewinnen und so zum Ausgang gelangen, oder sie wird von der Gewinnerin tiefer in den unterirdischen Gang gedrängt. Die Gewinnerin betritt nun ihrerseits den Seitengang und kämpft gegen die nachfolgende Maus aus dem Eingang.
  - Befinden sich keine Mäuse mehr im Eingang, dann können die verbliebenen Mäuse im Seitengang direkt zum Ausgang gehen.

	Prof. Grips nummeriert die Mäuse in der Reihenfolge, in der sie in den Gang hineinlaufen, mit 1, 2, 3 #sym.dots und beobachtet, in welcher Reihenfolge sie beim Käse ankommen.
]

#aufgabe[
	#teilaufgabe[
	  In der Versuchsanordnung von Prof. Grips gibt es drei Gänge: den _Eingang_, den _Seitengang_ und den _Ausgang_. Entscheide jeweils, welche lineare dynamische Datenstruktur für die Modellierung des Gangs am besten geeignet ist.
  ]

	#teilaufgabe[
    Spiele den "Mäusekampf" mit folgenden vier Mäusen durch. In welcher Reihenfolge erreichen sie den Käse?

    #pad(x: 5mm, columns(4)[
      Maus 1 (Stärke 5)
      #colbreak()
      Maus 2 (Stärke 8)
      #colbreak()
      Maus 3 (Stärke 4)
      #colbreak()
      Maus 4 (Stärke 10)
    ])

    Überlege dir mögliche Sonderfälle im Ablauf des Kampfes. (Was ist zum Beispiel, wenn der Seitengang leer ist?)
  ]

	#teilaufgabe[
	  Das folgende _Entwurfsdiagramm_ zeigt die Klassen eines `CheeseChampion`-Programms.
  ]

  #align(center, image(width: 80%, "Q1-AB.II.06-Abb_CD_Mausekampf.png"))

	In IServ befinden sich drei Versionen des Projekts, die aufsteigend immer konkretere Hilfen zur Implementierung enthalten. Entscheide Dich für eine der drei Versionen und implementiere die Simulation des Mäusekampfes entsprechend der Regeln oben.

	Beginne mit der Klasse `Maus`, sofern diese noch nicht vollständig implementiert ist.

	#teilaufgabe[
	  Implementiere als Erweiterung eine Methode, die anhand einer beobachteten Reihenfolge (als Schlange gegeben) prüft, ob diese Reihenfolge tatsächlich aus einem Mäusekampf hervorgegangen sein kann. (Simuliere dazu den Kampf "rückwärts".)
  ]
]
