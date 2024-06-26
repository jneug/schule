#import "@local/schule:0.0.5": ab
#import ab: *

#show: arbeitsblatt.with(
  titel: [Listen],
  reihe: [Programmierung mit TigerJython],
  kurs: [DI10-NI],
  fach: "Informatik",
  nummer: "IV.09",
  version: "2023-11-15",
  fontsize: 10pt,
)

#abtitel()

Eine Variable kann benutzt werden, um einen Wert zu speichern. Möchstest du
mehrere Werte speichern, kannst du eine Liste benutzen. Eine Liste speichert in
einer Variablen beliebig viele Werte "hintereinander".

#aufgabe[
  Studiere das Programm und überlege, was es macht. Schau dir vor allem die neuen Befehle an.

	Übernimm dann das Programm in _TigerJython_ und probiere es aus.

  #sourcecode[```python
  from gturtle import *

  eingabe = 1
  seiten = [] 		#neu: eine leere Liste erstellen
  while eingabe > 0:
    eingabe = input("Gib eine Zahl ein. 0 um zu beenden.")
    seiten.append(eingabe) #neu: Wert von eingabe hinten an die Liste anhängen

  makeTurtle()

  for s in seiten:	#neu: s nimmt jeden Wert in seiten an
    fd(s)
    rt(90)
  ```]
]

#aufgabe[
  Lest den Kasten "Neue Konzepte und Befehle" auf Seite 101.

	Bearbeitet dann auf Seite 102 das Beispiel 3 und Aufg. 3 und 4.
]

#aufgabe[
  Bearbeitet die folgenden Aufgaben nach eigenem Ermessen:

	#columns(2)[
    - S.103, Aufg. 5, 6, 8
    - S.106, Aufg. 14
    - S.108, Aufg. 17, 19
    #colbreak()
    - S.109, Aufg. 21; S.110, Aufg. 23
    - S.112, Aufg. 27, 28
  ]
]

#rahmen[
  #set text(.88em)
  Der `repeat`-Befehl ist kein richtiger Python-Befehl. Es gibt ihn nur in _TigerJython_. In Python erzeugt man stattdessen für eine n-fache Wiederholung eine Liste mit den Zahlen `0` bis `n-1` und durchläuft sie mit `for`:
  #sourcecode(frame:none)[```python
  from gturtle import *

  repeat 4:			# funktioniert nur in TigerJython
    fd(100)
    rt(90)

  for i in range(4):	# range ergeugt eine Liste mit vier Zahlen: [0,1,2,3]
    fd(100)
    rt(90)
  ```]
]
