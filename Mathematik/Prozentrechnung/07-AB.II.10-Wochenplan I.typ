#import "@local/schule:0.0.5": wp
#import wp: *

#show: arbeitsblatt.with(
  titel: [Wochenplan I],
  reihe: [Prozentrechnung],
  kurs: [Jg.7],
  fach: "Mathematik",
  nummer: "II.10",
  // datum: "11.12.2023",
  // bis: "11.12.2023",
  version: "2024-01-15",
  // fontsize: 10pt,
)

#let section(title, subtitle, body) = container(
  radius: 6pt,
  fill: theme.bg.muted,
  stroke: 1.5pt + luma(120),
  title-style: (boxed-style: (:)),
  title: text(weight: "bold", hyphenate: false, size: .88em, title),
)[#small(subtitle)#container(fill: white, radius: 3pt, stroke: 1pt + luma(120), body)]
#let d_date(d) = if type(d) == datetime {
  d.display("[day].[month].[year]")
} else {
  d
}
#let date(from, to) = container(radius: 4pt, fill: theme.muted, stroke: 0pt)[
  #set align(center)
  #set text(white)
  #emoji.calendar *#d_date(from) bis #d_date(to)*
]

= #dertitel: #diereihe
#date("08.01.2024", "15.01.2024")

#section("Pflichtaufgaben")[
  Bearbeite die folgenden Aufgaben innerhalb des vorgegebenen Zeitraums vollständig. Sie werden am Ende der Arbeitszeit im Unterricht verglichen.
][
  - #bu(87, (11, 12, 13))
  - #ah((30, 31), (2, 4, 7))
]

#section(
  "Freiwillige Übungsaufgaben",
)[Du kannst die folgenden Aufgaben als freiwillige Übungen bearbeiten, falls Du noch Zeit hast oder in einem Bereich noch unsicher bist.][
  - #bu(86, (4, 8))
  - #bu(88, (16, 17))
  - #ah((30, 31), (3, 6))

]

#section(
  "Knobelaufgaben",
)[Die folgenden Aufgaben kannst Du freiwillig bearbeiten, wenn Du nach einer Herausforderung suchst und etwas knobeln willst.][
  - #bu(88, (18, 22))
  - #bu(115, 25)
]
