#import "@local/schule:0.0.5": ab
#import ab: *

#import "@preview/cetz:0.1.2"

#show: arbeitsblatt.with(
  titel: [Güterbahnhof],
  reihe: [Lineare dynamische Datenstrukturen],
  kurs: [Q1],
  fach: "Informatik",
  nummer: "II.04",

  version: "2023-11-21",

  fontsize: 10pt,
)

#abtitel()

#aufgabe[
  An einem Güterbahnhof gibt es drei Abstellgleise für Waggons.

  #align(center, cetz.canvas({
    import cetz.draw: *

    line((0,0), (5,0))
    line((2,0), (3,1), (5,1))
    line((2,0), (3,-1), (5,-1))

    content((5.1,1), anchor:"left", [*A*])
    content((5.1,0), anchor:"left", [*B*])
    content((5.1,-1), anchor:"left", [*C*])
  }))

  Auf Gleis A stehen nummerierte, unsortierte Waggons, die so rangiert werden sollen, dass sie anschließend in einer gewünschten Reihenfolge auf Gleis C stehen sollen. Folgende Vorgaben müssen beachtet werden:
  - Die Lok kann immer nur einen Waggon ziehen.
  - Es gibt drei Helfer: jeweils einen an den Gleisen A, B und C. Diese Helfer können immer nur die Nummer des ersten Waggons ablesen. Somit ist jeweils nur die Nummer des Wagens an der Spitze eines Abstellgleises bekannt.
  - Der Lokführer kann sich genau eine Information merken.
  - Gleis B (oder auch später A) kann als Abstellgleis benutzt werden.

  #teilaufgabe[
    Um das Umrangieren auf den Gleisen zu simulieren, sollen Stapel benutzt werden. Begründe diese Wahl der Datenstruktur und grenze sie gegen das Array ab.
  ]

  #teilaufgabe[
    Begründe, dass auch bei genügend Platz für alle Waggons auf zwei Gleisen ein drittes Gleis für die Sortierung benötigt wird.
  ]

  #teilaufgabe[
    Auf Gleis A stehen die Waggons mit den Nummern 14, 15, 11 und 16.

    #cetz.canvas({
      import cetz.draw: *

      set-style(content:(size: 2em))

      line((-.32,0), (1.68,0), (1.68,1), (.32, 1), (-.32,0))
      content((0.84,0.5), text(size:1.5em, weight:"bold", "Lok"))

      let waggons = (14,15,11,16)
      for (i,n) in waggons.enumerate() {
        i = i + 1
        rect((i*2,0), (i*2 + 1.68,1))
        content((i*2 + 0.84,0.5), text(size:1.5em, weight:"bold", str(n)))
        line((i*2, .12), (i*2 - .32, .12), stroke:2pt)
        line((i*2 - .16, .19), (i*2 - .16, .05), stroke:1.4pt)
      }

      let end = waggons.len()*2 + 2
      line((end - .16, .12), (end - .32, .12), stroke:2pt)
      line((end - .16, .19), (end - .16, .05), stroke:.7pt)
      line((end, 0), (end + 1.68, 0), (end, .68), (end, 0))
    })

    Diese Waggons sollen am Ende sortiert auf Gleis C stehen (kleinste Nummer am Prellbock). Stelle die Aktionen dar, die dieses Problem lösen, in folgender Form:
    #set enum(numbering:"(i)")
    + Hole Waggon 14 von Gleis A und bringe ihn nach Gleis ?
    + Hole Waggon ? von ? und bringe ihn nach Gleis ?
    + #sym.dots
  ]

  #teilaufgabe[
    Entwickele einen allgemeinen Algorithmus, der das Rangierproblem für möglichst alle Waggonkombinationen auf Gleis A lösen kann. Die Waggons sollen am Ende sortiert auf Gleis C stehen.
  ]

  #teilaufgabe[
    Analysiere den Quelltext indem Du erklärst, zu welchem Zweck er im Rangierbahnhof eingesetzt werden könnte.
  ]

  #sourcecode[```java
	public void wasGeht (Stack<Waggon> pGleis1, Stack<Waggon> pGleis2) {
			Stack<Waggon> lGleis = new Stack<Waggon>();
			while( !pGleis1.isEmpty() ) {
					lGleis.push(pGleis1.top());
					pGleis1.pop();
			}
			while( !lGleis.isEmpty() ) {
					pGleis2.push(lGleis.top());
					lGleis.pop();
			}
	}
  ```]
]

#pagebreak()

== Pseudocode zum Sortieralgorithmus
#sourcecode(numbering: none)[```
solange gleisA nicht leer
	Oberstes von gleisA nach gleisB
	solange gleisA nicht leer
		wenn Oberstes gleisA größer Oberstes gleisB
			Oberstes von gleisA nach gleisC
		sonst
			Oberstes von gleisB nach gleisC
			Oberstes von gleisA nach gleisB
		ende wenn
	ende solange
	solange gleisC nicht leer
		Oberstes von gleisC nach gleisA
	ende solange
ende solange

```]

== Übersetzung von Pseudocode zu Java
#table(columns:(1fr, 1fr), align: left+horizon, inset:8pt,
  ``` solange gleisA nicht leer```, ```java while( !gleisA.isEmpty() ) {```,
  ``` wenn Oberstes gleisA größer Oberstes gleisB```, ```java if( gleisA.top() > gleisB.top() ) {``` + super("*"),
  ``` Oberstes von gleisB nach gleisC```, ```java
  gleisC.push( gleisB.top() );
  gleisB.pop();
  ```,
  [], [#super("*")Objekte können nicht direkt verglichen werden, daher muss in unserem Beispiel die Nummer des Waggons verwendet werden:
  ```java
  gleisA.top().getNummer() > gleisB.top().getNummer()
  ```]
)

#aufgabe[
  Speichere eine Kopie des Projekts #ordner[05-Gueterbahnhof] aus IServ in Deinen persönlichen Bereich. Öffne das Projekt in BlueJ.

  #enuma[
    + Implementiere die Lösung der Güterbahnhofsaufgabe anhand des Pseudocodes und der Übersetzungstabelle oben.
    + Analysiere die Methode `wasGeht` in der Klasse `Rangierbahnhof`, indem Du anhand von Beispielen die Funktionsweise erläuterst. Studiere insbesondere die Verwendung von Stapeln.

      An welcher Stelle des Sortieralgorithmus oben könnte die Methode eingesetzt werden?
    + Implementiere eine Methode `Stack<Waggon> umkehren( Stack<Waggon> gleis )`, die die Reihenfolge der Waggons auf einem Gleis umkehrt (vorher: 11, 8, 16; nachher: 16, 8, 11).

      #tipp[Verwende eine Schlange als Hilfe: ```java Queue<Waggon> hilf = new Queue<Waggon>();```]
  ]
]
