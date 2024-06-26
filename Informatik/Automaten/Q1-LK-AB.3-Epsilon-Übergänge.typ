#import "@local/schule:0.0.5": ab
#import ab: *

#import "@preview/finite:0.1.0": automaton

#show: arbeitsblatt.with(
  titel: [Epsilon-Übergänge],
  reihe: [Automaten und formale Sprachen],
  autor: [Jonas Neugebauer],
  kuerzel: "Ngb",
  kurs: "Q2",
  nummer:	"I.III",
  fach: "Informatik",
  version: "2023-08-17",

  fontsize: 12pt
)

#abtitel()

Nichtdeterministische endliche Automaten (NEA) sind häufig viel übersichtlicher als ihr deterministisches Gegenstück. In manchen Fällen hilft es zusätzlich, Übergänge zu benutzen, die _ohne Eingabe_ ausgeführt werden. Solche Übergänge nennt man *Epsilon-Übergänge* ($epsilon$ steht für das leere Wort).

#aufgabe[
  Der gezeigte Automat $A$ über dem Alphabet $sigma = {0,1,2,3}$ akzeptiert die Sprach $L(A) = 0^*1^*2^*3^*$. Konstruiere den gezeigten NEA in FLACI und teste ihn.


  #figure(
    automaton((
      q0: (q0: 0, q1: none),
      q1: (q1: 1, q2: none),
      q2: (q2: 2, q3: none),
      q3: (q3: 3)
    ), style: (
      transition: (label: $epsilon$)
    )),
    caption: [Übergangsgraph des Automaten $A$.]
  )<abb:graph_1>
]

#aufgabe[
  Versuche zu erklären, warum der Graph aus abb:graph_1 durch die
  Epsilon-Übergänge übersichtlicher wird. Wie würde ein Graph für einen äquivalenter
  NEA _ohne Epsilon-Übergänge_ aussehen?

  #hinweis[Zu jedem NEA _mit Epsilon-Übergängen_ gibt es einen äquivalenten DEA
  (der dieselbe Sprache akzeptiert) _ohne Epsilon-Übergänge_.]
]

#aufgabe[
  Um die Potenzmengenkonstruktion durchführen zu können, kannst du zuerst einen NEA ohne Epsilon-Übergänge konstruieren und diesen Umformen.

  Du kannst den NEA aber auch direkt umformen. Dabei werden Epsilon-Übergänge berücksichtigt, indem die Zustände am Ende der Übergänge immer mit in die Menge der Folgezustände aufgenommen werden.

  #align(center, grid(
    columns: 2,
    gutter: 1.5cm,
    [#figure(
      automaton((
        q0: (q0: 0, q1: $epsilon$),
        q1: (q1: 1)
      )),
      caption: [Ein NEA mit Epsilon-Übergang.]
    )<abb:grah_2>],
    [#figure(
      automaton((
        q01: (q01: 0, q1: 1),
        q1: (q1: 1, e: 0),
        e: (e: (0,1))
      ), style: (
        q01: (label: [{q#sub[0], q#sub[1]}]),
        e: (label: [Err])
      )),
      caption: [Ergebnis als DEA.]
    )<abb:grah_3>]
  ))

  Konstruiere für den NEA $A$ aus aufg:graph-1 oben einen äquivalenten DEA.
]
