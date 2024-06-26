
#let cards_columns = 2
#let cards_rows = 3


#let defaults = (
  font: "Chalkboard SE",
  fontsize: 48pt,
  stroke: 4mm,
  radius: 7mm,
  color: green
)

#let card(color: defaults.color, align: center+horizon, body) = block(
  width: 100%, height: (100% / cards_rows) - defaults.stroke, stroke: defaults.stroke+color,
  inset: defaults.stroke,
  radius: defaults.radius, place(align, body)
)

#let word(size: defaults.fontsize, align: center+horizon, color: green, body) = card(
  color: color, align: align,
  {
    place(align, dx:1.5pt, dy: 1.5pt, text(font: defaults.font, size: size, fill: luma(195), body))
    place(align, text(font: defaults.font, size: size, body))
  }
)

#set page(paper: "a4", flipped: true, margin: 1cm)

#grid(
  columns: (1fr,) * cards_columns, gutter: defaults.stroke,
  word(color:blue)[Term],
  word(color:green)[Variable],
  word(color:green)[Operator],
  word(color:green)[Klammer],
  word(color:blue)[Wert des Terms],
  word(color:blue)[Gleichung],
  word(color:blue)[Lösung der Gleichung],
  word(color:red)[einsetzen],
  word(color:red)[berechnen],
  word(color:red)[lösen],
  word(color:red)[zusammenfassen],
  word(color:red)[umformen],
  word(color:orange)[gleichwertig],
  word(color:orange)[äquivalent],
  word(color:yellow, size: 26pt)[#text(green,"2a") #text(blue, "+ 9b") #text(green,"+ 3a") #text(blue, "- 1b")\
  \= #text(green,"2a") #text(green,"+ 3a") #text(blue, "+ 9b")  #text(blue, "- 1b")\
  \= #text(green,"5a") + #text(blue, "8b")],
  word(color:yellow)[10 #sym.dot x = 10x],
  word(color:yellow, size:40pt)[2 #sym.dot (#text(green, "3a") + #text(blue, "4b"))\ = 2 #sym.dot #text(green, "3a") + 2 #sym.dot #text(blue, "4b")\ = #text(green, "6a") + #text(blue, "8b")],
  word(color:yellow, size:34pt)[0,5x #sym.dot (#text(green, $1/3$) - #text(blue, "2,75"))\ = 0,5x #sym.dot #text(green, $1/3$) - 0,5x #sym.dot #text(blue, "2,75")\ = #text(green, $1/6x$) - #text(blue, $11/8x$)],
  word(color:yellow, size:36pt)[5,2 - (3x #text(blue, "-") $3/4$ #text(green, "+") 4,5)\ = 5,2 - 3x #text(blue, "+") $3/4$ #text(green, "-") 4,5],
)
