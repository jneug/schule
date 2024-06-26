
#let card(size: 34pt, n: none, body) = block(
  width: 100%, height: 100%,
  stroke: none,
  {
    place(center+horizon, text(size: size, body))
    if n != none {
      place(bottom+right, dx: -2mm, dy: -2mm, text(size:6pt, fill:gray)[#n])
    }
  }
)

#set page(paper: "a8", margin: 0cm, flipped: true)

#let words = (
  "Python",
  "Schleife",
  "Verzweigung",
  "Variable",
  "Modul",
  "Turtle",
  "Befehl",
  "Funktion",
  "Parameter",
  `print()`,
  `randint()`,
  `delay()`,
  "Animation",
  "LED",
  "Index",
  "Liste",
  "Programm",
  "Algorithmus",
  `makeTurtle()`,
  "importieren",
  "Computer",
  "Tastatur",
  "Strukturierte Zerlegung",
  "micro:bit",
  "Wiederholung",
  "Bluetooth",
  "Eingabe",
  "Vergleich",
  "Operator",
  "Binärzahl",
  "Morsecode",
  "Braille",
  "ISBN",
  "QR-Code",
  "Informatik",
  "Bit"
)
#for (i,w) in words.enumerate() {
  card(n:(i+1), w)
}
