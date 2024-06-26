#import "@local/schule:1.0.0": ab
#import ab: *

#show: arbeitsblatt.with(
  titel: "Hin und Her",
  reihe: "Ganze Zahlen",
  fach: "Mathematik",
  kurs: "Jg.7",
  nummer: "V.2",
  autor: (name: "J. Neugebauer", abbr: "Ngb"),
  lizenz: "cc-by-nc-sa-eu",
  version: datetime.today(),
  fontsize: 11pt,
)

#aufgabe(icons: icon.gruppe)[
  Setzt euch mit zwei Personen zusammen. Schlagt im Buch Seite 6 auf und lest die Spielregeln des Spiels "Hin und her".

  Bastelt dann die nötigen Materialien:

  - Als Spielfiguren könnt ihr zum Beispiel Papierschnipsel mit Symbolen drauf oder Geldmünzen nehmen.
  - Für die Würfel könnt ihr ein A4 Blatt dreimal in der Mitte falten und anschließend an den Faltkanten zerschneiden. Auf sechs der Karteikarten schreibt ihr die Zahlen Eins bis Sechs. Und auf den verbleibenden beiden die Symbole "+" und "-". Legt die Karten verdeckt auf den Tisch und zieht zum Würfeln jeweils eine Zahl und ein Symbol.

  Spielt dann zwei Runden des Spiels.
]

#aufgabe(icons: icon.gruppe)[
  Die Spielzüge eurer Figuren kann man auch als Rechnung aufschreiben. Steht eure Figur zum Beispiel auf dem Feld mit der "4" und ihr zieht ein "-" und die Zahl "5", dann lautet die Rechnung:
  $ 4 - 5 = -1 $

  Überlegt euch für jedes der folgenden Beispiele drei unterschiedliche Spielsituationen und die dazugehörigen _Rechenterme_. (Für fehlende Informationen könnt ihr euch selber Zahlen aussuchen.)

  1. Die Figur steht im positiven Bereich und es wird "-" gezogen.
  2. Die Figur steht im negativen Bereich und es wird "+" gezogen.
  3. Die Figur steht im positiven oder negativen Bereich und zieht auf das Startfeld mit der "0".
  4. Die Figur steht im positiven oder negativen Bereich und wird beim Zug über das Startfeld mit der "0" bewegt.
]

#aufgabe(titel: "Hausaufgabe", icons: icon.stift)[
  Lest im Buch Seite 8 und 9 und bearbeitet auf Seite 164 Aufgaben 1-3.
]

#pagebreak()

#set align(center)
#set block(spacing: 0pt)
#set text(size: 0.7em, weight: 600)

#let tile = rect.with(width: 6cm, height: .8cm, stroke: 1pt + black)
#let gtile = tile.with(fill: luma(75%))
#let valign(e) = [#v(1fr)#e#v(1fr)]

#v(1fr)
#gtile[#valign[Ziel]]
#for i in range(13, 0, step: -1) {
  tile()[#valign[#i]]
}
#gtile[#valign[Start #h(1fr) 0 #h(1fr) Start]]
#for i in range(-1, -14, step: -1) {
  tile()[#valign[#i]]
}
#gtile[#valign[Ziel]]
#v(1fr)
