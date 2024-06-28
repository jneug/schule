#import "@local/schule:1.0.0": ab
#import ab: *
#import mathe: *

#import "@preview/codetastic:0.2.2": qrcode
#let qrlink(target, ..args) = link(target, qrcode(target, width: 2cm, colors: (white, luma(20%)), ..args))

#show: arbeitsblatt.with(
  /* @typstyle:off */
  titel: "Winkelsumme im Dreieck",
  reihe: "Kongruenz",
  fach: "Mathematik",
  kurs: "Jg.7",
  nummer: "V.2",

  autor: (
    name: "J. Neugebauer",
    abbr: "Ngb"
  ),

  fontsize: 11pt,

  version: datetime.today(),
)

#aufgabe(icons: (icon.tablet, icon.partner), label: <vermutung-aufstellen>)[
  Konstruiert in #programm[Sketchometry] ein Dreieck und markiert die drei _Innenwinkel_. Messt die Winkel sowie die Summe der Winkel und platziert die Winkelmaße auf der Zeichenebene.

  Verändert die Form des Dreiecks durch Ziehen an einem der Eckpunkte und beobachtet die Winkelmaße.

  #hinweis[Ihr könnt die Summe von mehreren Winkeln messen, indem ihr die Winkel nacheinander antippt.]

  Notiert eine Vermutung zur Summe der Innenwinkel in einem Dreieck im Heft.
]

#aufgabe(icons: (icon.tablet, icon.partner), label: <konstruktion>)[
  #place(
    right,
    dy: -2em,
    qrlink("https://qr-lernhilfen.de/mobileUrl?url=508f77f12aaf9c38"),
  )

  Ergänzt eure Konstruktion wie in @abb:konstruktion gezeigt.

  - Zeichnet Geraden durch die Eckpunkte des Dreiecks.
  - Zeichnet eine Parallele zu jeder Geraden, die durch den jeweils gegenüberliegenden Eckpunkt des Dreiecks verläuft.

  #figure(
    image(width: 40%, "Jg.7-AB.02-Abb_Konstruktion.jpeg"),
    caption: [Konstruktion in #programm[Sketchometry].],
  ) <abb:konstruktion>
]

#aufgabe(icons: (icon.tablet, icon.partner), label: <vermutung-beweisen>)[
  #place(
    right,
    dy: -5.5em,
    qrlink("https://qr-lernhilfen.de/mobileUrl?url=0af735e5cf203a92"),
  )

  Findet einen Weg, um anhand der Konstruktion zu zeigen, dass die Vermutung aus @vermutung-aufstellen korrekt ist.

  Nutzt dazu euer Wissen über Winkelbeziehungen.
]

#aufgabe(icons: (icon.stift, icon.partner), label: <beweis-notieren>)[
  Haltet eure Begründung mit einer Skizze im Heft fest. Übernehmt nur Elemente, die für eure Begründung wichtig sind.
]

#aufgabe(icons: (icon.tablet, icon.partner), label: <n-eck>)[
  #place(
    right,
    dy: -2em,
    qrlink("https://qr-lernhilfen.de/mobileUrl?url=02fc217731ac8402"),
  )

  #block(width: 100% - 25mm)[
    Stellt Vermutungen für die Winkelsumme von Vierecken auf
    und prüft sie mit #programm[Sketchometry]. Könnt ihr eure Vermutungen auch Begründunden?

    Welche Winkelsumme hat ein allgemeines $n$-Eck?
  ]

  #tipp[Überlegt, wie man ein $n$-Eck in Dreiecke zerlegen kann.]
]
