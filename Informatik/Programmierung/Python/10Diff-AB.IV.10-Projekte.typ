
#import "@local/schule:0.0.5": ab
#import ab: *

#show: arbeitsblatt.with(
  paper: "a5",
  titel: [Projektaufgaben],
  reihe: [Programmierung mit TigerJython],
  kurs: [DI10-NI],
  fach: "Informatik",
  nummer: "IV.10",
  version: "2023-11-15",
  fontsize: 10pt,
)

#abtitel()

Auf diesem Arbeitsblatt findest Du einige offene Aufgabenstellungen und Projektideen. Such Dir eine aus und bearbeite sie. (Dann wiederhole gegebenenfalls.)

#rahmen[
  #set text(.88em)
  #set align(center)
  Du solltest die folgenden Konzepte der Programmierung mittlerweile kennen:
  #grid(columns:(1fr,)*3)[
    Wiederholungen \
    Funktionen
  ][
    Bedingte Anweisungen \
    Variablen
  ][
    Parameter \
    Listen
  ]
]

- Schreibe ein Programm, das eine einfache Simulation zeigt, wie die Erde um die Sonne kreist. In der Mitte befindet sich die Sonne (ein gelber Punkt), und darum herumkreist die Erde (z. B. als blauer Punkt).
- Programmiere eine Bahnschranke mit Ampel, die sich langsam schließt. Während sich die Bahnschranke langsam senkt, blinken die beiden roten Licht der Ampel abwechselnd.
- Zeichne einen Pac-Man. Animiere den Pac-Man so, dass er sein Maul öffnet und schließt. Lass Deinen Pac-Man vorwärts gleiten und dabei eine Reihe von "Perlen" futtern.
- Programmiere ein Bild einer Naturszene. Animiere Bestandteile der Szene (z.B. die Wolken oder vielleicht regnet es).
- Zeichne die Skyline einer Stadt mit verschiedenen Gebäuden. Definiere für jedes Gebäude eine eigene Funktion und kombiniere die Gebäude zufällig zu einer Skyline.
- Entwirf ein eigenes Projekt. Nimm Dir nicht zu viel vor, sodass Du in 90 Minuten damit gut vorankommst. Klär vorher Dein Vorhaben mit Deinem Lehrer ab.


