#import "@local/schule:1.0.0": lt
#import lt: *

#import "@preview/cetz:0.2.2"

#show: lerntheke.with(
  /* @typstyle:off */
  titel:     "Terme und Gleichungen",

  nummer:    "0.1",

  autor: (
    name:    "J. Neugebauer",
    kuerzel: "Ngb",
  ),

  version:   "2024-06-25",
)

#hilfekarte(label: <hilfe:terme>)[
  = Terme

  Einen _sinnvollen_ Rechenausdruck aus Zahlen, Rechenzeichen, und Klammern nennen wir einen *Term*.

  Beispiele:
  - $(3 + 15) - 7 dot 8$
  - $9283 - 45 : 5$
  - $1092 - 25 dot 6 + 95 : 5$

  #v(1cm)
  Wenn in einem Term mehr als zwei Zahlen durch Rechenzeichen verknüpft werden, dann rechnet man nach folgender Vereinbarung:

  + Rechne zuerst den Inhalt von Klammern aus. In den Klammern steht wieder ein Term. Berechne ihn auch nach diesen drei Regeln.
  + Punkt- vor Strichrechnung.
  + Kommt nur Punkt- oder nur Strichrechnung vor, rechne von links nach rechts.
]

#rueckseite()[
  = Rechenbaum

  Mit einem Rechenbaum kannst du die Berechnung eines Terms übersichtlich darstellen.

  $ (53 + 15) - 7 dot (12 - 4) = 12 $
  #align(
    center,
    cetz.canvas({
      import cetz.draw: *
      import cetz.tree: tree

      tree(
        spread: 2,
        direction: "up",
        draw-node: (node, ..) => {
          if node.content in ($+$, $-$, $dot$) {
            circle((), radius: .6em, stroke: .6pt)
          }
          content((), node.content)
        },
        draw-edge: (from, to, ..) => {
          // line(from, to)
          // bezier(from, to, (rel: (-1, 0), to: to))
          let (f, t) = (
            (rel: (0, .1), to: from + ".north"),
            (rel: (0, -.1), to: to + ".south"),
          )
          line(from, f, stroke: .6pt)
          bezier(
            f,
            t,
            (horizontal: t, vertical: f),
            (horizontal: t, vertical: f),
            stroke: .6pt,
          )
        },
        (
          $12$,
          ($-$, ($68$, ($+$, $53$, $15$)), ($56$, ($dot$, $7$, ($8$, ($-$, $12$, $4$))))),
        ),
      )
    }),
  )
]

#hilfekarte(label: <hilfe:kommutativgesetz>)[
  = Kommutativgesetz
  Wenn ein term *nur* aus Additionen oder *nur* aus Multiplikationen besteht, dann kannst du die _Summanden_ oder _Faktoren_ beliebig vertauschen.

  #set align(center)
  #v(.5fr)
  #grid(
    columns: (1fr, 1fr, 1fr),
    $3+4=4+3$, $8 dot 7 dot 9 = 9 dot 8 dot 7$, $5+7+9+12 = 7+12+5+9$,
  )

  #v(.5fr)
  #let draw-node(size, fill) = circle(radius: 3mm, fill: fill)
  #let (blue, red, green) = (
    gradient.radial(theme.primary.lighten(70%), theme.primary, theme.primary.darken(20%), center: (33%, 25%)),
    gradient.radial(theme.secondary.lighten(70%), theme.secondary, theme.secondary.darken(20%), center: (33%, 25%)),
    gradient.radial(theme.muted.lighten(70%), theme.muted, theme.muted.darken(20%), center: (33%, 25%)),
  )
  #let field(n, fill) = mathe.frac.field(n, 1, n, fill: fill, draw-node: draw-node)

  #grid(
    columns: 7,
    row-gutter: 5pt,
    field(2, red), [], field(4, blue), [], field(4, blue), [], field(2, red),
    $2$, $+$, $4$, $=$, $4$, $+$, $2$,
  )
  #v(.5fr)


  #let field(n, m, fill) = mathe.frac.field(n, m, n * m, fill: fill, draw-node: draw-node)
  #grid(
    columns: 3,
    gutter: 5pt,
    mathe.frac.field(
      3,
      2,
      3,
      fill: blue,
      blank: red,
      draw-node: draw-node,
    ),
    [],
    {
      mathe.frac.field(1, 2, 2, fill: blue, draw-node: draw-node)
      mathe.frac.field(1, 2, 2, fill: red, draw-node: draw-node)
      mathe.frac.field(1, 2, 2, fill: green, draw-node: draw-node)
    },

    $2 dot 3$, $=$, $3 dot 2$,
  )
  #v(5pt)
]

#hilfekarte(label: <hilfe:assoziativgesetz>)[
  = Assoziativgesetz
]

#hilfekarte(label: <hilfe:distributivgesetz>)[
  = Distributivgesetz
]

#leer()

#hilfekarte(label: <hilfe:potenzen>)[
  = Potenzen
]

#leer()

#karte1(
  hilfen: (<hilfe:terme>,),
  infotext: infotext-loesung[
    #unteraufgaben(cols: 6, gutter: .2em, width: 3em)[
      - #eval-math(`12 - (7 - 2)`)
      - #eval-math(`120 : (4 dot 15)`)
      - #eval-math(`4 dot (25 : (15 : 3))`)
      - #eval-math(`(25 - 13) : (11 - 7)`)
      - #eval-math(`22 : (33 : (5 - 2))`)
      - #eval-math(`50 : (30 - (25 - 5))`)
    ]
  ],
)[
  = Terme ausrechnen I

  Erstelle einen Rechenbaum und berechne die Lösung der Terme.

  #v(1fr)
  #unteraufgaben(cols: 3)[
    - $12 - (7 - 2)$
    - $120 : (4 dot 15)$
    - $4 dot (25 : (15 : 3))$
    - $(25 - 13) : (11 - 7)$
    - $22 : (33 : (5 - 2))$
    - $50 : [30 - (25 - 5)]$
  ]
  #v(1fr)
]
