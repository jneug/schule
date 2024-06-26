#import "@local/schule:0.0.5"
#import schule.ab: *
#import schule.informatik: *

#import "@preview/cetz:0.1.0"
#import "@local/finite:0.1.0"

#show: arbeitsblatt.with(
  titel: [Reguläre Grammatiken],
  reihe: [Automaten und formale Sprachen],
  kurs: "Q2",
  nummer:	"I.VI",
  fach: "Informatik",

  autor: [Jonas Neugebauer],
  kuerzel: "Ngb",
  version: "2023-08-29",

  fontsize: 10pt,
  loesungen: "seite"
)

#abtitel()

Eine Sprache $L(A)$, die von einem DEA $A$ akzeptiert wird, nennt man eine
_reguläre Sprache_. Eine _Grammatik_ zur Produktion der Sprache
$L(A)$ nennt man eine _reguläre Grammatik_ $G_L(A)$. Man unterschiedet
_rechts- und linksreguläre Grammatiken_.

Die Produktionen einer _rechtsregulären Grammatik_ unterliegen folgenden Einschränkungen:

- Auf der linken Seite einer Produktion stehen nur einzelne _Nichtterminale_.
- Auf der rechten Seite einer Produktion stehen nur
  - das leere Wort ($epsilon$), \h(2cm) N #sym.arrow.r $epsilon$
	- ein _Terminal_, oder \h(2cm) N #sym.arrow.r T
	- ein _Terminal_ gefolgt von einem _Nichtterminal_. \h(2cm) N #sym.arrow.r TN

Ein Nichtterminal darf mehrmals auf der linken Seite vorkommen (Alternative). Als
Kurzschreibweise nutzen wir
#align(center, table(
  columns: 3,
  align: (left+horizon, center+horizon, left+horizon),
  stroke: none,
  [N #sym.arrow.r T \ N #sym.arrow.r TN],
  sym.arrow.r.double,
  [N #sym.arrow.r T | TN]
))

#aufgabe(label:<aufg:nea-zu-grammatik>)[
  Erstelle zum in @abb:automat1 dargestellten Automaten $A_1$ eine
	rechtslineare Grammatik, die die Sprache $L(A_1)$ produziert.

  #figure(
    finite.automaton(
      (
        q0: (q1: 0),
        q1: (q2: 0, q3: 1),
        q2: (q4: 0),
        q4: (q2: 0, q3: 1, q6: 1),
        q3: (q5: 0),
        q5: (q2: 0, q3: 1, q6: 1),
        q6: (:)
      ),
      layout: finite.layout.group.with(grouping:(
        ("q0", "q1"), ("q2", "q3", "q4", "q5"), ("q6",)
      ), spacing:1.5, layout:(
        finite.layout.linear.with(dir:right, spacing:1.5),
        finite.layout.grid.with(columns:2, spacing:(2.5, 2)),
        finite.layout.linear
      )),
      style:(
        stroke: .5pt + black,
        transition: (curve: 0),
        q1-q2: (label:(dist:-.33)),
        q4-q6: (label:(dist:-.33)),
        q3-q5: (curve: 1),
        q2-q4: (curve: -1),
        q4-q3: (curve: .8, label:(pos:.25, dist:-.33)),
        q5-q2: (curve: -.8, label:(pos:.25, dist:.33))
      )
    ),
    kind: image,
    caption: [Übergangsgraph eines NEA $A_1$]
  ) <abb:automat1>
]

#aufgabe(label:<grammatik-minimieren>)[
  Die Grammatik aus @aufg:nea-zu-grammatik ist zwar korrekt, aber (in der Regel) nicht optimal. Analysiert die Produktionsregeln und überlegt, ob ihr einige von ihnen vereinfachen könnt.
]

#aufgabe[
  Erstelle eine _rechtslineare Grammatik_ zum Rechenterm-Akzeptor vom Arbeitsblatt 5.
]

#aufgabe(label:<grammatik-zu-nea>)[
  Gegeben ist die Grammatik $G = (N, T, S, P)$ mit $N = {S, A, B, C}$, $T = {a, b, c}$ und $P = {S #sym.arrow.r a B | b A | c A, A #sym.arrow.r a B | b A | c A | #sym.epsilon, B #sym.arrow.r b C, C #sym.arrow.r b A}$.

  Leite einige Worte der Grammatik ab. Erstelle dann einen NEA, der die erzeugte Sprache akzeptiert.
]

#aufgabe[
  Überlege, wie eine "linksreguläre Grammatik"”" deﬁniert ist und begründe die Aussage:

  "_Zu jeder rechtsregulären Grammatik existiert eine äquivalente linksreguläre Grammatik._"

  Forme die Grammatik aus @grammatik-zu-nea in eine äquivalente linksreguläre Grammatik um.
]
