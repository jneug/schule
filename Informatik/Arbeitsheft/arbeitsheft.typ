
#let typst-scale = scale
#let numbering-poly(n, size: 10mm, scale: 100%) = {
  size = size * scale
  let polys = {
    place(
      top + left,
      polygon(
        stroke: none,
        fill: luma(88%),
        (0mm, 0mm),
        (size * 110%, 0mm),
        (0mm, size * 110%),
      ),
    )
    place(
      top + left,
      polygon(
        stroke: none,
        fill: rgb(128, 128, 128, 50%),
        (0mm, 0mm),
        (size * 150%, 0mm),
        (0mm, size * 80%),
      ),
    )
    place(
      top + left,
      polygon(
        stroke: none,
        fill: rgb(88, 88, 88, 50%),
        (0mm, 0mm),
        (size * 70%, 0mm),
        (0mm, size * 110%),
      ),
    )
  }
  if calc.odd(n) {
    typst-scale(x: -100%, polys)
    place(top + right, dx: -size * 10%, dy: size * 10%, text(font: ("Arial",), fill: white, size: size * 33%)[#n])
  } else {
    polys
    place(top + left, dx: size * 10%, dy: size * 10%, text(font: ("Arial",), fill: white, size: size * 33%)[#n])
  }

}

#let arbeitsheft(titel: none, kurs: none, ..args, body) = {
  set page(
    paper: "a4",
    margin: (
      inside: 2.4cm,
      outside: 1.8cm,
    ),
    header: {
      set text(12pt)
      counter(page).display((n, ..) => {
        locate(loc => {
          let (last, ..) = counter(page).final(loc)
          if n > 2 and n + 1 < last {
            if calc.odd(n) [
              #place(bottom + right, dx: 3mm, dy: -1em, numbering-poly(n - 2))
              #kurs #h(1fr) #titel #h(1fr) #hide[#kurs]
              #place(bottom + left, dy: .5em, line(length: 100% - 5mm, stroke: .5pt + luma(33)))
            ] else [
              #place(bottom + left, dx: -3mm, dy: -1em, numbering-poly(n - 2))
              #hide[#kurs] #h(1fr) #titel #h(1fr) #kurs
              #place(bottom + right, dy: .5em, line(length: 100% - 5mm, stroke: .5pt + luma(33)))
            ]
          }
        })
      })
    },
    footer: [],
  )

  page(margin: (1.8cm))[
    #set align(center)
    #v(5cm)
    #block(width: 100%, stroke: 3pt + black, fill: luma(10%), inset: 2em, radius: 1em)[
      #text(fill: luma(75%), weight: "bold", size: 26pt, "Arbeitsheft")\
      #text(fill: white, weight: "bold", size: 42pt, titel)
    ]
    #text(fill: luma(50%), weight: "bold", size: 26pt)[-- #kurs --]
  ]
  pagebreak()
  pagebreak()

  outline(title: "Inhalt")
  pagebreak()

  set par(
    justify: true,
    leading: 1em,
  )
  set text(
    font: ("Cochin", "Liberation Serif", "Times", "Times New Roman"),
    size: 13pt,
  )
  set heading(numbering: "I.1.a")
  show heading: set text(font: ("Ubuntu", "Liberation Sans", "Helvetica Neue", "Arial"))
  body

  // Fill to page number
  counter(page).display((n, ..) => {
    let a = 4 - calc.rem(n, 4)
    for i in range(a) {
      hide(str(i))
      pagebreak()
    }
  })
  pagebreak()
  pagebreak()
}

#import "@preview/codelst:2.0.1": sourcecode

#import "@preview/gentle-clues:0.6.0"
#let notiz = gentle-clues.clue.with(title: none)

#import "@preview/octique:0.1.0"
#let icon = octique.octique
