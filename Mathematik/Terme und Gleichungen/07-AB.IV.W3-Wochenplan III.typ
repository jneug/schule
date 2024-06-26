#import "@local/schule:0.1.1": wp
#import wp: *

#show: wplan.with(
  titel: [Wochenplan III],
  reihe: [Terme mit einer Variablen],
  kurs: [Jg.7],
  fach: "Mathematik",
  nummer: "IV.W3",
  datum: "15.04.2024",
  bis: "22.04.2024",
  version: "2024-04-15",
  // fontsize: 10pt,
)

#wptitel()

#gruppe("Pflichtaufgaben")[
  Bearbeite die folgenden Aufgaben innerhalb des vorgegebenen Zeitraums vollständig. Sie werden am Ende der Arbeitszeit im Unterricht verglichen.
][
  - #bu(134, (3, 4))
  - #bu((138, 139), (4, 8))
  - #ah(46, (2, 3))
  - #bu((142), ("5a bis 5e")) #text(.88em)[(_Beachte das Beispiel auf Seite 141 als Hilfe._)]
]

#gruppe(
  "Freiwillige Übungsaufgaben",
)[Du kannst die folgenden Aufgaben als freiwillige Übungen bearbeiten, falls Du noch Zeit hast oder in einem Bereich noch unsicher bist.][
  - #bu((138), (3,))
  - #bu((142), (5, 7))
]

#gruppe(
  "Knobelaufgaben",
)[Die folgenden Aufgaben kannst Du freiwillig bearbeiten, wenn Du nach einer Herausforderung suchst und etwas knobeln willst.][
  - #bu((143), (12, 14))
  - #bu((139), (9))
  - #bu((136), (18))
]

#pagebreak()

= Lösungen Pflichtaufgaben

== #bu(134, (3,4))

#grid(columns:(50%, 50%), image("07-AB.IV.W3/aufg3_1.jpeg", width:100%), image("07-AB.IV.W3/aufg3_2.jpeg", width:100%))
// #enuma[
//   + $5 dot (x + 7) = 5 dot x + 35$
//   + $3 dot (x - 1) = 5 dot x + 35$
// ]

#image("07-AB.IV.W3/aufg4.jpeg", width:80%)

== #bu((138, 139), (4, 8))
#grid(columns:(50%, 50%), image("07-AB.IV.W3/aufg138_4.jpeg", width:100%), image("07-AB.IV.W3/aufg139_8.jpeg", width:100%))

== #bu((142), ("5a bis 5e"))
#image("07-AB.IV.W3/aufg142_5ae.jpeg", width:50%)
