#import "@local/schule:0.1.1": wp
#import wp: *

#show: wplan.with(
  titel: [Wochenplan I],
  reihe: [Terme mit einer Variablen],
  kurs: [Jg.7],
  fach: "Mathematik",
  nummer: "IV.W4",
  datum: "11.03.2024",
  bis: "18.03.2024",
  version: "2024-03-11",
  // fontsize: 10pt,
)

#wptitel()

#gruppe("Pflichtaufgaben")[
  Bearbeite die folgenden Aufgaben innerhalb des vorgegebenen Zeitraums vollständig. Sie werden am Ende der Arbeitszeit im Unterricht verglichen.
][
  - #bu(127, ("9c", 10, "11a"))
  - #ah(41, (3, 4))
  - #bu(131, (6, 10))

]

#gruppe(
  "Freiwillige Übungsaufgaben",
)[Du kannst die folgenden Aufgaben als freiwillige Übungen bearbeiten, falls Du noch Zeit hast oder in einem Bereich noch unsicher bist.][
  - #bu(126, (3, 5))
  - #ah(41, (1, 5))
  - #bu(154, (1, "2a", "2c"))
  - #ah(42, (1, 2))
]

#gruppe(
  "Knobelaufgaben",
)[Die folgenden Aufgaben kannst Du freiwillig bearbeiten, wenn Du nach einer Herausforderung suchst und etwas knobeln willst.][
  - #bu(128, (15, 16, 17))
]

#pagebreak()

= Lösungen Pflichtaufgaben

#columns(2)[
  === #bu(127, ("9c", 10, "11a"))
  #image("07-AB.IV.W1/s127.jpeg", width:100%)

  #colbreak()

  === #bu(131, (6, 10))
  #image("07-AB.IV.W1/s131_aufg6.jpeg", width:100%)
  #image("07-AB.IV.W1/s131_aufg10.jpeg", width:100%)
]

=== #ah(41, (3, 4))
#sym.arrow.r _siehe Lösungen im Arbeitsheft_

