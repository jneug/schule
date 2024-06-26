#import "@local/schule:1.0.0": ab
#import ab: *
#import mathe: *


#show: arbeitsblatt.with(
  /* @typstyle:off */
  reihe: "Dezimalzahlen",
  titel: "Rechenübungen",
  fach: "Mathematik",

  autor: (
    name: "J. Neugebauer",
    abbr: "Ngb"
  ),

  paper: "a5",
  flipped: true,
  fontsize: 11pt,

  version: datetime.today(),
)

#let eqns(a, b, c) = [
  #pagebreak(weak: true)
  Berechne die Lösungen der drei Terme und gehe dabei so vor:

  1. Löse alle _Minusklammern_ auf.
  2. Wende Rechenregeln an, die Dir helfen können geschickt zu rechnen.
  3. Berechne das Ergebnis.

  Notiere alle Deine Rechnungen sorgfältig und ordentlich.
  #[
    #set math.equation(numbering: "(1)")
    #counter(math.equation).update(0)
    #v(1fr)
    #a
    #v(1fr)
    #b
    #v(1fr)
    #c
    #v(1fr)
  ]

  #set text(9pt)
  #hinweis[Deine Sitznachbar:in hat andere Aufgaben als Du, aber Ihr könnt euch gegenseitig bei der Lösung unterstützen.]
]

// Seite 1
#eqns[
  $ 0,3 dot (-100) + (0,5^2 + 3 / 8) dot 1 3 / 5 $
][
  $ 17 - 23 + (19 - 3) - (19 + 17 - 75) - 7 + 23 $
][
  $ -2,3 dot 8,8 - 2,3 dot (-10,8) $
]

// Seite 2
#eqns[
  $ -200 dot (-0,5) dot (-207 / 100 + 3,5 + 23 / 4) $
][
  $ -2,06 - (-1,99 + 2,94) - 0,04 - (0,06 - (-0,99)) $
][
  $ (-3 / 5 + 6) dot (-5 / 9) $
]

// Seite 3
#eqns[
  $ (-1,3 + 18,3) dot 17 / 51 dot (3,5 : 1 / 2) dot 3 $
][
  $ 19 / 24 + (3 / 5 - 3 / 8) - (9 / 24 + 7 / 8 - 2 / 5) + (1 / 6) $
][
  $ (7,25 dot 1 / 3 + 2 / 3 dot 7,25) - 0,5^2 $
]

// Seite 4
#eqns[
  $ -(1 / 10 + 7) dot (-0,5 - 1 / 2) + 1 / 10^2 $
][
  $ (15,32 - 23,89) - (4,32 + 2,09) - (0,3^2 + (-0,89)) $
][
  $ (2,4 - 4 1 / 5) : (-2) $
]

// Lösungen Seite 1
#pagebreak()
#set page(paper: "a4", flipped: false)
#v(1fr)
/* Korrekte Lösung
$
  &0,3 dot (-100) + (0,5^2 + 3/8) dot 1 3/5 \
= &-30 + (0,25 + 3/8) dot 8/5 \
= &-30 + (2/8 + 3/8) dot 8/5 \
= &-30 + 5/8 dot 8/5 \
= &-30 + #cancelup($5$, $1$)/#canceldown($8$, $1$) dot #cancelup($8$, $1$)/#canceldown($5$, $1$) \
= &-30 + 1 \
= & -29
$
*/
// Fehlerhafte Lösung
$
  &0,3 dot (-100) + (0,5^2 + 3 / 8) dot 1 3 / 5 \
  = &-30 + (0,25 + 3 / 8) dot 13 / 5 \
  = &-30 + (2 / 8 + 3 / 8) dot 13 / 5 \
  = &-30 + 5 / 8 dot 13 / 5 \
  = &-30 + #cancelup($5$, $1$)/8 dot 13/#canceldown($5$, $1$) \
  = &-30 + 13 / 5 \
  = &-150 / 5 + 13 / 5 \
  = &-137 / 5
$
#v(1fr)
$
  &17 - 23 + (19 - 3) - (19 + 17 - 75) - 7 + 23 \
  = &17 - 23 + 19 - 3 - 19 - 17 + 75 - 7 + 23 \
  = &17 - 17 + 23 - 23 + 19 - 19 - 3 - 7 + 75 \
  = &(17 - 17) + (23 - 23) + (19 - 19) - (3 + 7) + 75 \
  = &0 + 0 + 0 - 10 + 75 \
  = &65
$
#v(1fr)
$
  &-2,3 dot 8,8 - 2,3 dot (-10,8) \
  = &-2,3 dot (8,8 + (-10,8)) \
  = &-2,3 dot (8,8 - 10,8) \
  = &-2,3 dot (8,8 - 10,8) \
  = &-2,3 dot -2,0 \
  = &4,6 \
$
#v(1fr)

// Lösungen Seite 2
#pagebreak()
#set page(paper: "a4", flipped: false)
#v(1fr)
$
  &-200 dot (-0,5) dot (-207 / 100 + 3,5 + 23 / 4) \
  = &100 dot (-2,07 + 3,5 + 5,75) \
  = &100 dot (1,43 + 5,75) \
  = &100 dot 7,18 \
  = &718
$
#v(1fr)
/* Korrekte Lösung
$
  &-2,06 - (-1,99 + 2,94) - 0,04 - (0,06 - (-0,99))  \
= &-2,06 - (-1,99) - 2,94 - 0,04 - 0,06 + (-0,99) \
= &-2,06 + 1,99 - 2,94 - 0,04 - 0,06 - 0,99 \
= &-2,06 - 0,04 + 1,99 - 0,99 - 2,94 - 0,06 \
= &-2,06 + (-0,04) + 1,99 + (-0,99) + (-2,94) + (-0,06) \
= &(-2,06 + (-0,04)) + (1,99 + (-0,99)) + (-2,94 + (-0,06)) \
= &(-2,06 - 0,04) + (1,99 - 0,99) + (-2,94 - 0,06) \
= &-2,1 + 1,0 + (-3,0) \
= &-1,1 + (-3,0) \
= &-4,1 \
$
*/
// Fehlerhafte Lösung
$
  &-2,06 - (-1,99 + 2,94) - 0,04 - (0,06 - (-0,99)) \
  = &-2,06 - 1,99 - 2,94 - 0,04 - 0,06 + (-0,99) \
  = &-2,06 - 1,99 - 2,94 - 0,04 - 0,06 - 0,99 \
  = &-2,06 - 0,04 - 1,99 - 0,99 - 2,94 - 0,06 \
  = &-2,06 + (-0,04) - 1,99 + (-0,99) + (-2,94) + (-0,06) \
  = &(-2,06 + (-0,04)) + (-1,99 + (-0,99)) + (-2,94 + (-0,06)) \
  = &(-2,06 - 0,04) + (-1,99 - 0,99) + (-2,94 - 0,06) \
  = &-2,1 + (-2,98) + (-3,0) \
  = &-5,08 + (-3,0) \
  = &-8,08 \
$
#v(1fr)
$
  &(-3 / 5 + 6) dot (-5 / 9) \
  = &(-3 / 5 dot (-5 / 9)) + (6 dot (-5 / 9)) \
  = &(-#cancelup($3$, 1)/#canceldown($5$, 1) dot (-#cancelup($5$, 1)/#canceldown($9$, 3)))
  + (#cancelup($6$, 2)/1 dot (-5/#canceldown($9$, 3))) \
  = &1 / 3 + (-10 / 3) \
  = &-9 / 3
$
#v(1fr)

// Lösungen Seite 3
#pagebreak()
#set page(paper: "a4", flipped: false)
#v(1fr)
$
  &(-1,3 + 18,3) dot 17 / 51 dot (3,5 : 1 / 2) dot 3 \
  = &17 dot 17 / 51 dot (3,5 dot 2) dot 3 \
  = &17 dot 17 / 51 dot 7 dot 3 \
  = &17 dot 17 / 51 dot 21 \
  = &17 dot 21 dot 17 / 51 \
  = &357 dot 17 / 51 \
  = &#cancelup($357$, 7)/1 dot 17/#canceldown($51$, 1) \
  = &(7 dot 17) / 51 \
  = &119 / 51 \
$
#v(1fr)
$
  &19 / 24 + (3 / 5 - 3 / 8) - (9 / 24 + (-7 / 8) - 2 / 5) + (1 / 6) \
  = &19 / 24 + 3 / 5 - 3 / 8 - 9 / 24 - (-7 / 8) + 2 / 5 + 1 / 6 \
  = &19 / 24 - 9 / 24 + 3 / 5 + 2 / 5 + 7 / 8 - 3 / 8 + 1 / 6 \
  = &(19 / 24 - 9 / 24) + (3 / 5 + 2 / 5) + (7 / 8 - 3 / 8) + 1 / 6 \
  = &10 / 24 + 1 + 4 / 8 + 1 / 6 \
  = &10 / 24 + 24 / 24 + 12 / 24 + 4 / 24 \
  = &50 / 24 \
  = &25 / 12
$
#v(1fr)
/* Korrekte Lösung
$
  &(7,25 dot 1/3 + 2/3 dot 7,25) - 0,5^2 \
= &(7,25 dot (1/3 + 2/3)) - 0,25 \
= &(7,25 dot 1) - 0,25 \
= &7,25 - 0,25 \
= &7
$
*/
// Fehlerhafte Lösung
$
  &(7,25 dot 1 / 3 + 2 / 3 dot 7,25) - 0,5^2 \
  = &(7,25 dot (1 / 3 + 2 / 3)) - 0,75 \
  = &(7,25 dot 1) - 0,75 \
  = &7,25 - 0,75 \
  = &6,5
$
#v(1fr)

// Lösungen Seite 4
#pagebreak()
#set page(paper: "a4", flipped: false)
#v(1fr)
$
  &-(1 / 10 + 7) dot (-0,5 - 1 / 2) + 1 / 10^2 \
  = &-(1 / 10 + 7) dot (-1) + 1 / 100 \
  = &(1 / 10 + 7) + 1 / 100 \
  = &10 / 100 + 700 / 100 + 1 / 100 \
  = &711 / 100 \
  = &7,11
$
#v(1fr)
$
  &(15,32 - 23,89) - (4,32 + 2,09) - (0,3^2 + (-0,89)) \
  = &15,32 - 23,89 - 4,32 - 2,09 - (0,09 - 0,89) \
  = &15,32 - 23,89 - 4,32 - 2,09 - 0,09 + 0,89 \
  = &15,32 - 4,32 + 0,89 - 23,89 + (-2,09) - 0,09 \
  = &(15,32 - 4,32) + (0,89 - 23,89) + ((-2,09) - 0,09) \
  = &11,0 - 23,0 - 2,18 \
  = &-34,0 - 2,18 \
  = &-36,18
$
#v(1fr)
/* Korrekte Lösung
$
  &(2,4 - 4 1/5) : (-2) \
= &(2,4 - 4 1/5) dot (1/#{-2}) \
= &(12/5 - 21/5) dot (1/#{-2}) \
= &(-9/5) dot (1/#{-2}) \
= &#{$-9 dot 1$}/#{$5 dot -2$} \
= &#{-9}/#{-10} \
= &9/10 \
$
*/
// Fehlerhafte Lösung
$
  &(2,4 - 4 1 / 5) : (-2) \
  = &(2,4 - 4 1 / 5) dot (1/#{-2}) \
  = &(12 / 5 - 6 / 5) dot (1/#{-2}) \
  = &(6 / 5) dot (1/#{-2}) \
  = &#{$6 dot 1$}/#{$5 dot -2$} \
  = &6/#{-10} \
  = &-3 / 5 \
  = &-0,6 \
$
#v(1fr)
