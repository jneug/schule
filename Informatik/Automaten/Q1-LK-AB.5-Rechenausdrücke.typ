#import "@local/schule:0.0.5": ab
#import ab: *

#import "@local/cetz:0.1.0"
#import "@local/finite:0.1.0"

#show: arbeitsblatt.with(
  titel: [Rechenausdrücke],
  reihe: [Automaten und formale Sprachen],
  kurs: "Q2",
  nummer:	"I.V",
  fach: "Informatik",

  autor: [Jonas Neugebauer],
  kuerzel: "Ngb",
  version: "2023-08-17",

  fontsize: 11pt,
  loesungen: "seite"
)

#abtitel()

Wir wollen in FLACI einen Akzeptor für gültige mathematische Rechenausdrücke erstellen. Der Automat $A = (Q, s, Sigma, F, delta)$ soll folgender Definition entsprechen:
#rahmen[
	Das Alphabet besteht aus den Ziffern 0 bis 9, dem Dezimalpunkt und den Rechenzeichen für Addition, Subtraktion, Multiplikation und Division:

	$ Sigma = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, ., +, -, dot, :} $

	Ein gütiger Rechenausdruck sei ein mathematischer Term aus Zahlen und Rechenzeichen, wobei der Term immer mit einer Zahl beginnt. Folgt auf eine Zahl ein Rechenzeichen, so muss danach immer noch eine Zahl folgen. Das leere Wort ist ein gültiger Term.

	Eine Zahl besteht aus beliebigen Kombinationen der Ziffern 0 bis 9. Optional kann genau ein Dezimalpunkt enthalten sein, der aber immer von mindestens einer Ziffer gefolgt werden muss. Ist die erste Ziffer einer Zahl eine Null, dann darf unmittelbar darauf höchstens ein Dezimalpunkt folgen, aber keine andere Ziffer (z.B. $0.234$ ist gültig, $01.234$ oder $00.234$ sind ungültig).
]
#v(-5pt)
#aufgabe[
  Entschiede für die folgenden Worte, ob sie laut der Definition gültig sind:

	 #tasks(cols:4, gutter:1.5%)[
		- $0$
		- $0.0$
		- $0.00$
		- $00.00$
		- $12.1+00$
		- $24+51-34$
		- $124.42.1$
		- $1+:5.0$
		- $4+3-2 dot 3:0$
		- $4+3 dot 0.001+$
		- $4+3 dot 0.001+7.2$
		- $43+0.42 dot 1+3.4$
	]

  #loesung[
    #let check = text(fill:green, strong(sym.checkmark))
    #let fail = text(fill:red, strong("X"))
		- $0$ #check
		- $0.0$ #check
		- $0.00$ #check
		- $00.00$ #fail (keine zwei Nullen am Anfang)
		- $12.1+00$ #fail (Zahl darf nicht aus zwei Nullen bestehen)
		- $24+51-34$ #check
		- $124.42.1$ #fail (nicht mehrere Dezimalpunkte)
		- $1+:5.0$ #fail (keine zwei Rechenzeichen hintereinander)
		- $4+3-2 dot 3:0$ #check
		- $4+3 dot 0.001+$ #fail (kein einzelnes Rechenzeichen am Ende)
		- $4+3 dot 0.001+7.2$ #check
		- $43+0.42 dot 1+3.4$ #check
  ]
]

#aufgabe[
  Erstelle in FLACI den NEA $A$ und teste ihn ausgiebig. Nutze dazu die
	Worte aus Aufgabe 1.

	Eine Vorlage findest Du unter #link("https://link.ngb.schule/flaci-rechenterme").

  #loesung[
    #figure(cetz.canvas(length:1cm, {
        import cetz.draw: set-style
        import finite.draw: *

        set-style(
          stroke: .5pt + black
        )

        let nums = range(9).map(n=>n+1)
        let ops = ("+", "-", sym.dot, ":")

        state((0,0), "q0", initial:true)
        state((3,3), "q1", final:true)
        state((3,-3), "q2", final:true)
        state((6,0), "q3")
        state((10,0), "q4")
        state((14,0), "q5")

        transition("q0", "q1", inputs:(0,))
        transition("q0", "q2",
          inputs:nums.slice(1),
          curve:-1, label:(dist:-.33))
        transition("q1", "q3", inputs:(".",), curve:0)
        transition("q2", "q3", inputs:(".",), curve:0)
        transition("q3", "q4",
          inputs:nums, curve:0)
        transition("q4", "q4", inputs:nums, label:(pos:.88, dist:1.2))
        transition("q4", "q5", inputs:ops, curve:0)
        transition("q1", "q5", inputs:ops, curve:3)
        transition("q2", "q5", inputs:ops, curve:-3, label:(dist:-.33))
        transition("q5", "q1", inputs:(0,), curve:-1, label:(dist:-.33))
        transition("q5", "q2", inputs:nums.slice(1), curve:1)
      }),
      caption: [Ein mögliche Lösung für einen akzetierenden Automaten (in diesem Fall sogar ein DEA).]
    )
  ]
]

#line(stroke:.5pt + theme.primary, length:100%)

Der Automat $A$ kann Rechenterme laut der obigen Definition auf Gültigkeit prüfen.
Aber wie können wir gültige Terme konstruieren?

Eine Sprache $L$, die von einem DEA (oder auch NEA) akzeptiert wird, nennt man eine
_reguläre Sprache_. Eine Menge von Regeln zur Produktion von Wörtern aus
$L$ nennt man eine _reguläre Grammatik_.

#infobox[
Eine reguläre Grammatik zu einer Sprache $L$ ist ein 4-Tupel $G_L = (N, T, S, P)$ mit

- $N$ ist die Menge der _Nichtterminalsymbole_,
- $T$ ist die Menge der _Terminalsymbole_,
- $S$ ist das Startsymbol,
- $P$ ist die Menge der _Produktionen_.
]

_Terminale_ sind die Buchstaben der Sprache. _Nichtterminale_ sind
"Platzhalter", die durch die _Produktionen_ mit Kombinationen aus
Terminalen und Nichtterminalen ersetzte werden, bis keine Nichtterminale mehr vorhanden
sind. Begonnen wird die Produktion immer mit dem Startsymbol $S$.

#small[
  Beispiel für eine Produktion: $A arrow.r 0A | 1B | 2B | epsilon$ bedeutet, dass das Nichtterminal $A$ entweder mit $0A$, $1B$, $2B$ oder dem leeren Wort ersetzt werden kann. Das Nichtterminal $A$ in $0A$ kann wieder durch $0A$ ersetzt werden, und so weiter.
]

#aufgabe[
  Wie müsste eine reguläre Grammatik zur Produktion von Rechentermen (der Sprache $L(A)$) aussehen?

  #loesung[
    #let calc = (sym.plus, sym.minus, sym.dot, sym.colon)
    $
      S #sym.arrow.r 0A | #range(9).map(x => str(x+1)+"B").join(" | ") | #sym.epsilon\
      A #sym.arrow.r .C | #calc.map(x => x+"E").join(" | ") | #sym.epsilon\
      B #sym.arrow.r .C | #range(9).map(x => str(x+1)+"B").join(" | ") | #calc.map(x => x+"E").join(" | ") | #sym.epsilon\
      C #sym.arrow.r #range(10).map(x => str(x)+"D").join(" | ")\
      D #sym.arrow.r #range(10).map(x => str(x)+"D").join(" | ") | #calc.map(x => x+"E").join(" | ") | #sym.epsilon\
      E #sym.arrow.r 0A | #range(9).map(x => str(x+1)+"B").join(" | ")
    $
  ]
]
