
#import "@local/schule:0.0.5": ab
#import ab: *

#show: arbeitsblatt.with(
  titel: [Bedingte Schleifen],
  reihe: [Programmierung mit TigerJython],
  kurs: [DI10-NI],

  fontsize: 11pt
)

#abtitel()


#aufgabe[
  #align(center)[_Was macht die Turtle denn jetzt schon wieder?_]

  Gebt das Programm in TigerJython ein und beschreibt seine Arbeitsweise. Erklärt insbesondere die Zeilen 10 und 15.

  #sourcecode[```python
  from gturtle import *

  def dreieck():
    repeat 3:
      forward(100)
      right(120)

  makeTurtle()
  runde = 1
  while runde <= 6:   # neu!
    if runde == 1 or runde == 3 or runde == 5:
      setPenColor("red")
    else:
      setPenColor("green")
    fillToPoint(0,0)  # neu !
    dreieck()
    right(60)
    runde = runde + 1
  ```]
]

#aufgabe[
  #enuma[
  1. Lest im Buch auf Seite 96 die Box "Neue Konzepte und Befehle".
  2. Bearbeitet im Buch auf Seite 97 Aufgabe 35.
  3. Scheibt ein Programm, dass alle Quadratzahlen ausgibt, die kleiner als ein Parameter `zahl` sind.
  4. Entwickelt einen Befehl, der eine ZUfallszahl generiert (`randint(min, max)`) und dann den Benutzer nach einer Zahl fragt. Ist die Zahl größer, wird "größer" ausgegeben, ist die Zahl kleiner "kleiner". Dies wird solange wiederholt, bis die eingegebene Zahl gleich der Zufallszahl ist. Daann wird "Treffer!" ausgegeben.
  ]
]

== Logische Operatoren
#table(columns:(auto, 1fr), stroke:1pt+black,
  [`and`], [Und-Verknüpfung; beide Bedingungen müssen wahr sein],
  [`or`], [],
  [`not`], [],
  [`==`], [],
  [`!=`], [],
  [`>`], [],
  [`>=`], [],
  [`<`], [],
  [`<=`], []
)
