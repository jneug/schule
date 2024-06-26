
#let defaults = (
  font: "Chalkboard SE",
  fontsize: 42pt,
  stroke: 4mm,
  radius: 6mm,
  color: green
)

#let card(color: defaults.color, body) = block(
  width: 100%, height: 18.5%, stroke: defaults.stroke+color, radius: defaults.radius, place(center+horizon, body)
)

#let word(size: defaults.fontsize, color: green, body) = card(
  color: color,
  {
    place(center+horizon, dx:1.5pt, dy: 1.5pt, text(font: defaults.font, size: size, fill: luma(195), body))
    place(center+horizon, text(font: defaults.font, size: size, body))
  }
)

#set page(paper: "a4", margin: 1cm)

#grid(
  columns: (1fr, 1fr), gutter: defaults.stroke + 1pt,
  word(color:blue)[Prozentsatz\ $p$],
  word(color:green)[Grundwert\ $G$],
  word(color:red)[Prozentwert\ $W$],
  card(color:silver)[
    #let w = 2.2cm
    #place(center+horizon, dx:w/2, dy:w/2, polygon(fill: white, stroke:2pt+black, (-w, w), (w, w), (0cm, -w)))
    #place(center+horizon, dy: 8pt, line(length:w*.75))
    #place(center+horizon, dy:w/2 + 5pt, text(size:w*.65, fill:green, $G$) + h(.5em) + text(size:w*.65, $dot$) + h(.5em) + text(size:w*.65, fill:blue, $p$))
    #place(center+horizon, dy:-w/3 + 5pt, text(size:w*.5, fill:red, $W$))
  ],
  word(color:orange)[Prozentzahl],
  word(color:blue)[Rabatt],
  word(color:blue)[Aufschlag],
  word(color:red)[Zinsen\ $W$],
  word(color:red)[Jahreszinsen\ (p.A.)],
  word(color:red)[Unterjährige Zinsen],
  word(color:blue)[Zinssatz\ $p$],
  word(size:defaults.fontsize*.75, color:green)[Startguthaben\ Startkapital\ $G$],
  word(color:red)[Endkapital\ $K$],
  word(color:red)[Zinseszinsen],
)
