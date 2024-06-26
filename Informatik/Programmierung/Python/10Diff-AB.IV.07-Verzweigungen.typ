#import "@local/schule:0.0.5": ab
#import ab: *

#show: arbeitsblatt.with(
  titel: [Verzweigungen],
  reihe: [Programmierung mit TigerJython],
  kurs: [DI10-NI],
  fach: "Informatik",
  nummer: "IV.07",
  version: "2023-11-16",
  fontsize: 10pt,
)

#abtitel()

#aufgabe[
  #align(center)[_Was macht denn die Turtle?_]

  Die Turtle hat anscheinend etwas viel getrunken!
  #sourcecode[```python
	from gturtle import *
	from random import randint

	makeTurtle("sprites/alien.gif")
	repeat 100:
		forward(20)
		zufall = randint(1, 100)
		if zufall < 25: // <first-if>
			left(45)
		elif zufall >= 25 and zufall < 50:
			# 'elif' steht kurz für 'else-if'
			right(135)
		elif zufall >= 50 and zufall < 90:
			back(50)
		else:
			playTone(220, 800) // <last-if>
  ```]

  #enuma[
    1. Analysiere das Programm und beschreibe seine Arbeitsweise. Notiere unbekannte Befehle und erkläre ihre Funktion.
		2. Wie genau werden die Zeilen #lineref-(<first-if>) -- #lineref-(<last-if>) abgearbeitet, wenn die Variable `zufall` den Wert `73` enthält?
  ]
]

#aufgabe[
  #enuma[
    1. Lest im Buch auf Seite 80 die Box "Neue Konzepte und Befehle".
		2. Bearbeitet im Buch auf Seite 83 das Beispiel 7 und Aufgabe 8.
		3. Bearbeitet im Buch auf Seite 85 das Beispiel 9 und Aufgabe 12.
  ]
]

#aufgabe[
  Ihr sollt eine Billardkugel programmieren. Kopiert dazu aus dem Tauschordner das Programm #datei[07-billard.py] und öffnet es. Analysiert das Programm und lest die Kommentare. Ergänzt dann die fehlenden Teile.

	Nutzt als Hilfe die Bilddatei #datei[07-Abb\_Arbeitsfläche.png].
]
