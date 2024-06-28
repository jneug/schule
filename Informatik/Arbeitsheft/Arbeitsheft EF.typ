
#import "arbeitsheft.typ": *


#show: arbeitsheft.with(
  titel: "Programmierung mit Java",
  kurs: "IF-EF",
)

= Was ist Programmierung?

_Java_ ist eine _Objektorientierte Programmiersprache_.

== Was ist ein Algorithmus?

#notiz[
  Ein _Algorithmus_ ist eine eindeutige, endliche Abfolge von Befehlen zur Lösung einer Klasse von Problemen.
]

Eine _Klasse von Problemen_ bedeutet hier, dass der Algorithmus ein Problem für verschiedene Eingaben lösen kann. Beispielsweise berechnet der Algorithmus _Summe zweier Zahlen_ die Summe für beliebige Kombinationen aus ganzen Zahlen.

_Eindeutig_ bedeutet, dass zu jedem Zeitpunkt eindeutig bestimmbar ist, welcher Befehl als Nächster ausgeführt wird. Das bedeutet auch, dass für dieselbe Eingabe immer dieselbe Lösung herauskommt. (Das Ergebnis von $3+5$ ist immer $8$ und nicht manchmal $12$.)

_Endlich_ bedeutet, dass der Algorihtmus irgendwann zu einem Ende kommt und nicht endlos weiter arbeitet (#sym.arrow Terminiertheit).

== Eigenschaften von Algorithmen

/ Terminiertheit: Der Algorithmus endet nach einer endlcihen Anzahl Arbeitsschritte.
/ Finitheit: Der Algorihtmus lässt sich mit einer endlichen Anzahl Befehlen aufschreiben.
/ Determiniertheit: Der Algorihtmus hat eine eindeutige Abfolge von Befehlen.
/ Determinismus: Der Algorihtmus produiert für gleiche Eingaben immer dieselbe Ausgabe.



== Imperative Programmierung

_Imperative Programmierung_ ist ein _Programmierparadigma_, bei dem alle Befehle eines Algorithmus hintereinander aufgeschrieben werden und in einer eindeutig definierten Abfolge ausgeführt werden. Dabei kann es Sprünge zu früheren Programmteilen geben und Programmteile, die nur unter bestimmten Bedingungen ausgeführt werden. Aber grundsätzlich gibt es eine klare Reihenfolge der Befehle.

== Programmierung mit Java

Quelltext #sym.arrow Compiler #sym.arrow Interpreter

#pagebreak()
= Grundlagen

== Befehle nutzen

#notiz(title: "Datenypen", icon: sym.excl)[
  Eine Variable muss in Java immer einen festen _Datentyp_ bekommen. Das bedeutet, dass der _Interpreter_
]

*Aufgabe 1: Finde den Fehler*
#grid(
  columns: 2,
  gutter: 5mm,
  [a)], [b)],
  sourcecode(```
  int zahl1 = 5;
  int zahl 2 = 6;
  System.out.println(zahl1 + zahl 2)
  ```),
  sourcecode(```
  char buchst1 = 72
  char buchst2 = 'G'
  System.out.println(buchst1 & buchst2)
  ```),

  [c)], [d)],
  sourcecode(```
  int zahl1 = 5;
  int zahl 2 = 6;
  System.out.println(zahl1 + zahl 2)
  ```),
  sourcecode(```
  char buchst1 = 72
  char buchst2 = 'G'
  System.out.println(buchst1 & buchst2)
  ```),
)

#pagebreak(weak: true)
== Variablen

#pagebreak(weak: true)
== Schleifen

#pagebreak(weak: true)
== Bedingte Anweisungen

#pagebreak(weak: true)
== Programme strukturieren

=== Strukturierte Zerlegung

=== Programmablaufpläne

#pagebreak(weak: true)
== Methoden

#pagebreak(weak: true)
== Parameter und Rückgaben

#pagebreak()
= Objektorientierte Modellierung

#pagebreak()
= Objektorientierte Programmierung

#pagebreak()
= Programmierprojekte

#pagebreak()
= Knobelecke
