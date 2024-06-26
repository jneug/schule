#import "@local/schule:0.0.5": ab
#import ab: *

#show: arbeitsblatt.with(
  titel: [Übersicht Java],
  reihe: [Objektorientierte Programmierung mit Java],
  autor: [Jonas Neugebauer],
  kuerzel: "Ngb",
  kurs: "Q1",
  nummer:	"I.01",
  fach: "Informatik",
  version: "2023-09-07",

  fontsize: 11pt
)

#show raw.where(block:true): it => block(fill:luma(240), inset:(x:.5em, y:.4em), width: 100%, radius:4pt, it)

#let section(title, body) = block(width: 100%, stroke:.5pt + black, inset:.8em)[#place(dy:-1em, box(fill:white, inset:(x:.8em, y:0em), [*#title*]))
  #v(.5em)
  #body
]

#abtitel()

#section("Variablen")[
  === Hilfsvariablen
  #grid(
    columns: (60%,1fr), gutter: 8mm,
    [```java
    int bezeichner = 100;
    boolean einBeliebigerBezeichner = true;
    ```
    Deklaration:\ #text(fill:red, "Datentyp") Bezeichner = #text(green, "Initialwert");

    #text(.88em)[(übliche #text(fill:red, "Datentypen"): `int`, `double`, `boolean`, `String`)]],
    [#set text(.88em); Hilfsvariablen werden in einem Block _deklariert_ und sind bis zum Ende des Blocks _gültig_. Danach hören sie auf zu existieren.]
  )

  === Objektvariablen (Attribute)
  #grid(
    columns: (60%,1fr), gutter: 8mm,
    [```java
    private int bezeichner = 100;
    private boolean einBeliebigerBezeichner = true;
    ```
    Deklaration:\ `private` #text(fill:red, "Datentyp") Bezeichner = #text(green, "Initialwert");
    ],
    [#set text(.88em); Objektvariablen (Attribute) werden in einer Klasse _deklariert_ und sind in der gesammten Klasse _gültig_. Außerhalb der Klasse nicht. Zugriff erfolgt mit _Gettern_ und _Settern_.]
  )

  === Paramtetervariablen
  #grid(
    columns: (60%,1fr), gutter: 8mm,
    [```java
    public int add( int a, int b ) { ... }
    public void doSomething(
      boolean pWahrheit, double pWert
    ) { ... }
    ```
    Deklaration (Innerhalb eines _Methodenkopfes_): #text(fill:red, "Datentyp") Bezeichner
    ],
    [#set text(.88em); Paramtervariablen (kurz _Parameter_) werden im Kopf einer Methode (innerhalb der runden Klammern) _deklariert_ und sind in der gesammten Methode _gültig_. Außerhalb der Methode nicht. Sie werden erst beim Aufruf der Methode _initialisiert_.]
  )

  #text(.88em)[Bezeichner für Variablen werden _klein_ geschrieben (ggf. im Format `meineVariable`). Parameter beginnen mit einem `p`, um sie leicht erkennbar zu machen.]
]

#section("Methoden")[
  #grid(
    columns: (60%,1fr), gutter: 8mm,
    [```java
    public int add( int a, int b ) {

    }
    public void tuEtwas() {

    }
    ```
    #text(blue, "Sichtbarkeit") #text(fill:red, "Rückgabetyp") Bezeichner( _Parameter_ ) {\
      #h(1cm)_Methodenrumpf_ (Befehle)\
    }
    ],
    [#set text(.88em); Methoden besitzen einen _Methodenkopf_ und einen _Methodenrumpf_ Der Kopf definiert die _Signatur_ der Methode (Rückgabetyp, Parameter). Der Rumpf enthält die Befehle.]
  )

  === Getter und Setter
  #grid(
    columns: (60%,1fr), gutter: 8mm,
    [```java
    public int getAlter() {
      return alter;
    }
    public void setAlter( int pNeuesAlter ) {
      alter = pNeuesAlter;
    }
    ```],
    [#set text(.88em); _Getter_ und _Setter_ sind immer einer _Objektvariablen_  zugeordnet. Ein Getter hat den gleichen Rückgabetyp wie der Datentyp der Objektvariablen und gibt deren Wert zurück. Ein Setter hat den Rückgabetyp `void` und einen Paramter mit demselben Datentyp wie die zugehörige Objektvariable. Er setzt die Variable auf den Wert des Parameters.]
  )
]

#pagebreak()
#section("Bedingte Anweisungen")[
  #grid(
    columns: (60%,1fr), gutter: 8mm,
    [```java
    if( x == 5 ) { ... }
    if( a > 0 && a < 10 ) {
      ...
    } else {
      ...
    }
    ```],
    [#set text(.88em); _Bedingte Anweisungen_ prüfen eine _Bedingung_ und führen die Befehle im _Rumpf_  nur dann aus, wenn diese `true` ist. Eine _Bedingung_  kann auch aus mehreren _logischen Ausdrücken_ bestehen. Es kann auch optional ein `else` Befehl folgen, der ausgeführt wird, wenn die Bedingung `false` ist.]
  )

  === Logische Ausdrücke
  #grid(
    columns: (60%,1fr), gutter: 8mm,
    [```java
    x > 100 && x < 100
    x ==5 || x == 6 || x == 7
    (pMin == 0 and pMax == 100) or (pMin == 100 and pMax == 0)
    ```],
    [#set text(.88em); _Logische Audrücke_ sind _Bedingungen_, die entweder `true` oder `false` sind. Sie ergeben immer einen _Wahrheitswert_. Sie können  überall verwendet werden, wo auch Wahrheitswerte erlaubt sind (z.B. als Rückgabe von _Methoden_.)]
  )
]

#section("Schleifen")[
  === Zählschleifen
  #grid(
    columns: (60%,1fr), gutter: 8mm,
    [```java
    for( int i = 0; i < 100; i += 1 ) {
      ...
    }

    for( int x = pNumberOfElements; x > 0 ; i -= 1 ) {
      ...
    }

    int a = 0
    for( ; a < 500 ; a += 5 ) {
      ...
    }
    ```],
    [#set text(.88em); _Zählschleifen_ führen die Befehle im _Rumpf_ aus, solange die _Zählvariable_ (in der Regel `i`) eine _Bedingung_ erfüllt. Die Zählvariable wird nach jeder Ausführung des Rumpfes um eine feste Schrittweise erhöht.]
  )

  === Bedingte Schleifen
  #grid(
    columns: (60%,1fr), gutter: 8mm,
    [```java
    while( i > 0 ) {
      ...
    }
    ```],
    [#set text(.88em); _Bedingte Schleifen_ führen den _Rumpf_  solange aus, wie die _Bedingung_ im _Kopf_  `true` ist. Beim Programmieren muss darauf geachtet werden, dass die Bedingung auch wirklich irgendwann `false` wird. Ansonsten entsteht eine _Endlosschleife_.]
  )
]
