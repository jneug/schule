#import "@local/schule:0.0.5": wp
#import wp: *

#show: arbeitsblatt.with(
  titel: [Wochenplan II],
  reihe: [Prozentrechnung],
  kurs: [Jg.7],
  fach: "Mathematik",
  nummer: "II.11",
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
#date("15.01.2024", "29.01.2024")

#section("Pflichtaufgaben")[
  Bearbeite die folgenden Aufgaben innerhalb des vorgegebenen Zeitraums vollständig. Sie werden am Ende der Arbeitszeit im Unterricht verglichen.
][
  - #bu(92, (11, 12, 14))
  - #ah(32, (3, 4))
  - #bu(96, (3, 5))
  - #ah(34, (2, 4))
  - Erstelle eine Karteikarte zur Merkhilfe der Prozentrechnung (Dreieck).
]

#section(
  "Freiwillige Übungsaufgaben",
)[Du kannst die folgenden Aufgaben als freiwillige Übungen bearbeiten, falls Du noch Zeit hast oder in einem Bereich noch unsicher bist.][
  - #bu(112, (4, 6))
  - #ah((32, 33), (2, 7, 10))
  - #ah((34, 35), (3, 7))
]

#section(
  "Knobelaufgaben",
)[Die folgenden Aufgaben kannst Du freiwillig bearbeiten, wenn Du nach einer Herausforderung suchst und etwas knobeln willst.][
  - #bu(93, (15, 18))
  - #bu(98, 15)
  - #bu(115, 25)
]

#pagebreak()

= Lösungen #dertitel: #diereihe

=== #bu(92, 11)
#grid(
  columns: (45%, 55%),
  image("07-AB.II.10-Wochenplan II/S92A11_1.jpg", width: 100%),
  image("07-AB.II.10-Wochenplan II/S92A11_2.jpg", width: 100%)
)

=== #bu(92, 12)
#grid(
  columns: (50%, 50%),
  image("07-AB.II.10-Wochenplan II/S92A12_1.jpg", width: 100%),
  image("07-AB.II.10-Wochenplan II/S92A12_2.jpg", width: 100%)
)

=== #bu(92, 14)
#grid(
  columns: (50%, 50%),
  image("07-AB.II.10-Wochenplan II/S92A14_1.jpg", width: 100%),
  image("07-AB.II.10-Wochenplan II/S92A14_2.jpg", width: 100%)
)

=== #bu(96, 3)
#grid(
  columns: (50%, 50%),
  {image("07-AB.II.10-Wochenplan II/S96A03_1.jpg", width: 100%)
  image("07-AB.II.10-Wochenplan II/S96A03_2.jpg", width: 100%)},
  {image("07-AB.II.10-Wochenplan II/S96A03_3.jpg", width: 100%)
  image("07-AB.II.10-Wochenplan II/S96A03_4.jpg", width: 100%)}
)

=== #bu(96, 5)
#grid(
  columns: (50%, 50%),
  image("07-AB.II.10-Wochenplan II/S96A05_1.jpg", width: 100%),
  image("07-AB.II.10-Wochenplan II/S96A05_2.jpg", width: 100%)
)
