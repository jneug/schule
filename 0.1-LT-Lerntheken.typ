#import "@local/schule:1.0.0": lt
#import lt: *

#import "@preview/cetz:0.2.2"

#show: lerntheke.with(
  /* @typstyle:off */

  titel:     "Lernen mit einer Lerntheke",

  nummer:    "0.1",

  autor: (
    name:    "J. Neugebauer",
    kuerzel: "Ngb",
  ),

  version:   "2024-06-25",
)
//
#hilfekarte(
  label: <die-lerntheke>,
  infotext: ["Malvorlage Wissenschaft lernen" von #link("http://www.schulbilder.org", "Schulbilder.org")],
)[
  = Die Lerntheke

  #wrap-content(
    align: right,
    image(width: 5cm, "0.1-LT-Abb_Lernen.jpg"),
  )[
    Anstatt alle zusammen im Klassenverbund zu lernen, arbeitet bei einer Lerntheke jeder in seinem eigenen Tempo an *Lernstationen*. Jede Lernstation besteht aus einer Karte, wie du sie gerade in der Hand hältst.
    #v(1em)
    Du entscheidest selber, welche Stationen du bearbeiten möchtest und wie. Aber denk daran, dass du am Ende trotzdem eine Klassenarbeit schreiben musst. Versuch also die Stationen in deinem Tempo zu bearbeiten, und nicht sofort die Lösungen abzuschreiben.
    #v(1em)
    Die Karten dieser Lerntheke zeigen dir, wie du an der Lerntheke arbeiten kannst, welche Hilfsmittel es gibt und wie die Stationenkarten aufgebaut sind.
  ]

  #v(1fr)
  #align(
    center,
    text(1.8em)[
      Viel Spaß und Erfolg beim Lernen!
    ],
  )
  #v(1fr)
]
#rueckseite[
  = Arbeitsweise
  #align(center)[Hier findest du in der Regel die *Lösung einer Station*.]

  Zu Beginn erstellt du in deinem Heft eine Tabelle, in der du deinen Fortschritt festhältst. Die Tabelle enthält folgende Spalten:
  #align(
    center,
    cetz.canvas({
      import cetz.draw: *

      content((0, 0), image(width: 10cm, "0.1-LT-Abb_Tabelle.jpg"))

      let arrow(from, to, fill, body) = {
        let name = "arrow-" + fill.to-hex()
        line(from, to, stroke: 2pt + fill, mark: (end: "stealth"), name: name)
        content(
          (rel: (0, -.3), to: name + ".start"),
          text(fill, 1.2em, body),
          anchor: "north",
        )
      }

      arrow((-6, -2), (-4, -1), rgb("#187f1e"))[
        *Nummer der Station,\ an der Du arbeitest.*
      ]
      arrow((-1.6, -3.5), (-1, -1.3), rgb("#015887"))[
        *Datum, an dem du mit der\ Station fertig geworden bist.*
      ]
      arrow((5, -2), (3.3, -1.2), rgb("#cd362c"))[
        *Falls du dich für die Station\ als Experte eingetragen hast,\ mache hier ein Kreuz.*
      ]
    }),
  )
  // #align(center, image(width: 10cm, "0.1-LT-Abb_Tabelle.jpg"))
  // #align(center, image(width: 100%, "0.1-LT-Abb_Tabelle_2.jpg"))
]

#hilfekarte(label: <stationenkarten>)[
  = Die Stationenkarten
  #align(
    center,
    cetz.canvas({
      import cetz.draw: *
      content((0, 0), image(width: 8cm, "0.1-LT-Abb_Beispielkarte.jpg"))

      let marker(loc, name) = circle(loc, radius: .02, fill: none, stroke: none, name: name)
      marker((3.2, 2.25), "icon")
      marker((-3.3, 2.25), "number")
      marker((-0.1, 2.25), "title")
      marker((3.53, 1.1), "help-marker")
      marker((-2, -1.5), "body")
      marker((2.7, -2.4), "footer")

      let shadowed(loc, body, name: "shadowed", width: auto, fill: auto) = {
        content(
          loc,
          {
            place(
              top + left,
              dx: 2pt,
              dy: 2pt,
              block(
                width: width,
                inset: .5em,
                fill: luma(75%),
                radius: 4pt,
                hide(par(leading: .66em, text(.88em, tracking: -.5pt, body))),
              ),
            )
            block(
              width: width,
              inset: .5em,
              stroke: 1.5pt + fill,
              fill: white,
              radius: 4pt,
              par(leading: .66em, text(.88em, tracking: -.5pt, body)),
            )
          },
          name: name,
        )
      }

      let annotation(marker, rel, fill: rgb("#cc0100"), radius: .4, type: "circle", width: 5cm, body) = {

        let name = marker + "-annotation"
        let from = (rel: rel, to: marker)
        let to = marker

        if type == "circle" {
          circle(to, radius: radius, stroke: 1.5pt + fill, fill: fill.transparentize(70%), name: name + "-circle")
          shadowed(from, body, name: name + "-body", width: width, fill: fill)
          line(name + "-body", name + "-circle", stroke: 1.5pt + fill, fill: fill)
        } else {
          shadowed(from, body, name: name + "-body", width: width, fill: fill)
          line(name + "-body", marker, mark: (end: "stealth"), stroke: 1.5pt + fill, fill: fill)
        }
      }
      annotation("number", (-4, -1))[
        Jede Station hat eine *Nummer*. Die Stationen können, _müssen aber nicht_ in dieser Reihenfolge bearbeitet werden. Überleg dir am besten eine _eigene Reihenfolge_.
      ]
      annotation("icon", (3, 1), width: 2.2cm)[
        / #icon.einzel: Solo
        / #icon.partner: Doppel
        / #icon.gruppe: Gruppe
      ]
      annotation("help-marker", (3, -.5), width: 4cm)[
        Diese Symbole zeigen dir an, auf welchen Hilfekarten du bei Problemen nachsehen kannst.
      ]
      annotation("footer", (3.8, -.5), width: 4.5cm, type: "arrow")[
        Hier stehen manchmal klein die Lösungen zur Karte, anstatt auf der Rückseite. Oder hier stehen Informationen zu den verwendeten Bildern.
      ]
      annotation("title", (-2, 2), width: 10cm, type: "arrow")[
        Die Farbe der Kopfzeile zeigt die Art der Station an:
        / #text(theme.cards.type1)[Grün]: #text(theme.cards.type1)[Grundlagen lernen]
        / #text(theme.cards.type2)[Gelb]: #text(theme.cards.type2)[Anwendung der Grundlagen]
        / #text(theme.cards.type3)[Rot]: #text(theme.cards.type3)[Komplexe Aufgaben, die mehrere Grundlagen verknüpfen]
      ]
      annotation("body", (-2, -2.2), width: 10cm, type: "arrow")[
        Das wichtigste jeder Station sind die Aufgaben.
        Lies sie sorgfältig und bearbeite sie möglichst eigenständig. Zur Kontrolle findest du auf der Rückseite die Lösung.
      ]
    }),
  )
]

#loesung()[
  #align(center, [Hier findest du in der Regel die *Lösung einer Station*.])

  Bei manchen Stationen ist die Lösung aber auch _klein auf die Vorderseite gedruckt_, oder ist zum Beispiel als Kontrollwort in der Aufgabe angegeben.

  Du solltest dich bemühen die Stationen möglichst _eigenständig_ zu lösen. Hast du Probleme, kannst
  du zunächst die _Hilfekarten_ (siehe @hilfekarten) zu Rate ziehen. Danach kannst du auf dem Expertenposter
  (siehe @expertenposter) nachsehen, ob dir vielleicht schon jemand bei der Station helfen kann. Bist du immer
  noch unsicher, dann kann dir die Lehrperson (siehe @lehrperson) bestimmt weiterhelfen

]

#hilfekarte(label: <hilfekarten>)[
  = Hilfekarten
  // #hilfe-marker(3)
  #hilfe-marker(<die-lerntheke>, <stationenkarten>)

  Hilfekarten erkennst du an der #text(theme.cards.help)[violetten Kopfzeile]. Die Nummern der Hilfekarten beginnen mit einem "H" (z.B. H1, H2, ...).

  #align(
    center,
    block(
      width: 80%,
      height: 1.5cm,
      _card-header(
        "Addition von Brüchen",
        counter: none,
        fill: theme.cards.help,
        no: "H2",
        icon: emoji.ringbuoy,
      ),
    ),
  )

  Die Nummern der Hilfekarten, die du für deine Station nutzen kannst, findest du in den #text(theme.cards.help)[violetten Symbolen] am oberen Rand der Stationskarte.

  #align(
    center,
    cetz.canvas({
      import cetz.draw: *

      line((-2, 0), (2, 0))
      content((0, 0), _help-token("H1"))
      content((1.2, 0), _help-token("H2"))
    }),
  )
]

#rueckseite()[
  = Rückseiten
  #align(center, text(1.2em)[Auf der Rückseite einer Karte findest du in der Regel die *Lösungen der Aufgaben*.])

  Hilfekarten haben normalerweise keine Lösung. Aber wenn auf der Vorderseite nicht genug Platz war, stehen auf der Rückseite manchmal weitere Informationen.
  #v(1em)
  #align(center, [So wie hier. #emoji.face.grin])
]

#hilfekarte(label: <expertenposter>)[
  = Das Expertenposter

  #wrap-content(
    align: right,
    image(width: 4.5cm, "0.1-LT-Abb_Expertenposter.jpg"),
  )[
    Hast du eine Station bearbeitet und _fühlst dich so sicher_ dabei, dass du anderen Schülerinnen und Schülern die Lösung _erklären_ kannst, dann trag dich auf dem Expertenposter als _Experte oder Expertin_ ein.

    Zu jeder Station kann es _zwei ExpertInnen_ geben.

    Kommst du bei einer Station nicht weiter, und helfen dir die Hilfekarten auch nicht, dann guck auf dem Expertenposter nach, ob es schon einen Experten oder eine Expertin für die Station gibt. Frag denjenigen oder diejenige nach Hilfe.
  ]
]

#leer()

#hilfekarte(
  label: <lehrperson>,
  infotext: ["Malvorlage Lehrer und Schüler" von #link("http://www.schulbilder.org", "Schulbilder.org").],
)[
  = Die Lehrperson
  Haben dir die Hilfekarten und die Experten / Expertinnen zu deiner Station nicht weitergeholfe (oder falls es keine Hilfen oder ExpertInnen gibt), dann kannst du natürlich auch deine Lehrperson um Hilfe bitten.

  #wrap-content(
    align: left,
    image(width: 4cm, "0.1-LT-Abb_Lehrer.jpg"),
  )[
    Aber am meisten lernt man, wenn man _erstmal selber versucht_, eine Station zu lösen. _Also denk zunächst gut nach, wie du vorgehen kannst, bevor du zum Lehrer kommst._ Bestimmt kommt dir dabei schon eine gute Idee für die Lösung.

    Hast du eine Station gelöst, kannst du dein Ergebnis mit den _Lösungen auf der Rückseite_ überprüfen. Hast du dann noch Fragen, beantwortet sie dir der Lehrer gerne.
  ]

]

#leer()

#hilfekarte()[
  = Haltestelle

  #align(
    center + horizon,
    cetz.canvas({
      import cetz.draw: *

      let scale = 1.5
      let yellow = rgb("#ffec01")
      let green = rgb("#009746")
      circle((0, 0), radius: 3 * scale, fill: yellow, stroke: none)
      circle((), radius: 2.5 * scale, fill: none, stroke: green + 20pt * scale)
      content((), text(96pt * scale, green, weight: "bold", font: "Arial", "H"))
    }),
  )
]
