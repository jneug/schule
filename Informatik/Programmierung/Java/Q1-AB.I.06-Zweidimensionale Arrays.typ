#import "@local/schule:0.0.5": ab
#import ab: *

#show: arbeitsblatt.with(
  titel: [Zweidimensionale Arrays],
  reihe: [Objektorientierte Programmierung mit Java],
  autor: [Jonas Neugebauer],
  kuerzel: "Ngb",
  kurs: "Q1",
  nummer:	"I.06",
  fach: "Informatik",
  version: "2023-09-29",

  fontsize: 11pt
)


#sourcecode[```java
public void example() {
  int[][] zahlen = new int[10][4];
    zahlen[0] = new int[]{1, 2, 3, 4};
    zahlen[1] = new int[]{4 ,3 ,2, 1};

    zahlen[2][0] = 20;
    zahlen[2][1] = 21;
    zahlen[2][2] = 22;
    zahlen[2][3] = 23;

    for( int j = 0; j < 4; j += 1 ) {
        zahlen[3][j] = zahlen[0][j];
    }

    for( int i = 4; i < 10; i += 1 ) {
        for( int j = 0; j < 4; j += 1 ) {
            zahlen[i][j] = zahlen[i-2][j];
        }
    }

    for( int j = 0; j < 4; j += 1 ) {
        zahlen[9][j] = zahlen[4][j] + zahlen[6][j];
    }

    zahlen[3][2] = -99;
    zahlen[5][3] = -99;
    zahlen[9][0] = -99;
}
```]

Analysiere den Quelltext und notiere die Veränderungen der Zahlen in der Tabelle. Wechen Aufbau hat die Tabelle am Ende des Programms?

#align(center, table(columns: (2cm,) * 5,
  align: center,
  fill: (c,r) => if c == 0 or r == 0 {luma(240)},
  [], ..range(4).map(str),
  ..range(10).map(i => (([#i],) + range(4).map((..) => []))).flatten())
)
