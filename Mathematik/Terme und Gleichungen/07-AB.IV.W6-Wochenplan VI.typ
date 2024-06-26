#import "@local/schule:0.1.1": wp
#import wp: *

#show: wplan.with(
  titel: [Wochenplan VI],
  reihe: [Terme mit einer Variablen],
  kurs: [Jg.7],
  fach: "Mathematik",
  nummer: "VI.W6",
  datum: "13.05.2024",
  bis: "24.05.2024",
  version: "2024-05-13",
  // fontsize: 10pt,
)

#repeat(2)[
  #wptitel()

  #gruppe("Pflichtaufgaben")[
    Bearbeite die folgenden Aufgaben innerhalb des vorgegebenen Zeitraums vollständig. Sie werden am Ende der Arbeitszeit im Unterricht verglichen.
  ][
    - #bu(143, (11, 12))
    - #ah(46, (2, 4))
    - #bu(151, (10, 12))
    - #ah(49, (2, 3))
  ]

  #gruppe(
    "Freiwillige Übungsaufgaben",
  )[Du kannst die folgenden Aufgaben als freiwillige Übungen bearbeiten, falls Du noch Zeit hast oder in einem Bereich noch unsicher bist.][
    - #bu(142, (4, 5, 6))
    - #bu((150, 151), (1, 2, 9))
    - #bu((152), (15))
  ]

  #gruppe(
    "Knobelaufgaben",
  )[Die folgenden Aufgaben kannst Du freiwillig bearbeiten, wenn Du nach einer Herausforderung suchst und etwas knobeln willst.][
    - #bu(143, 14)
    - #bu((153), (21, 23))
    - #bu(157,(24))
  ]
]

#pagebreak()
= Lösungen Pflichtaufgaben

