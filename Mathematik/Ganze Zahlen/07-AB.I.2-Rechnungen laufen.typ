#import "@local/schule:1.0.0": ab
#import ab: *

#show: arbeitsblatt.with(
  reihe: "Ganze Zahlen",
  titel: "Mit negativen Zahlen rechnen",
  fach: "Mathematik",
  kurs: "Jg.7",
  nummer: "V.2",
  autor: (name: "J. Neugebauer", abbr: "Ngb"),
  lizenz: "cc-by-nc-sa-eu",
  version: datetime.today(),
  fontsize: 11pt,
  binding: true,
)

Das Rechnen mit negativen Zahlen kann man sich leicht anschaulich vorstellen, indem man an der Zahlengerade entlangläuft.

#aufgabe(titel: "Baut euch einen Zahlenstrahl")[
  Sucht euch einige Steine oder Stöcker, mit denen ihr einen Zahlenstrahl markieren könnt. Jeder Stein ist eine Zahl. Wählt einen besonders auffälligen Stein für die „Null“ in der Mitte. Der Zahlenstrahl sollte mindestens von -5 bis 5 gehen.
]

#aufgabe(titel: "Rollen verteilen")[
  Einigt euch in der Gruppe darauf, wer welche Rolle übernehmen soll:

  / Gruppenleitung: Zuständig für die Koordination der Gruppe und behält den Überblick,
  / Schreiber\:in: Protokolliert die Ergebnisse,
  / Springer\:in: Läuft auf dem Zahlenstrahl entlang,
  / Ansager\:in: Sagt die Rechenterme an und passt auf, dass die Springer:in alles richtig macht.
]

#aufgabe(titel: "Rechnen am Zahlenstrahl")[
  "Lauft" die folgenden Rechnungen am Zahlenstrahl ab. Geht dazu den Rechenterm von links nach rechts Zeichen für Zeichen durch und die Springer:in führt jeweils die vorgegebene Aktion exakt aus. Einige Aktionen fehlen noch. Überlegt gemeinsam, was in der jeweiligen Situation gemacht werden muss.

  #unteraufgaben(cols: 4)[
    - 0 + 2 + 2 – 3
    - 3 – 6 + 3 – 2
    - (-2) + 7 + (-4)
    - (-1) + (-4) – (-6)
  ]

  #align(
    center,
    table(
      columns: 2,
      rows: 1cm,
      align: horizon + left,
      fill: tablefill(),
      [Zeichen], [Aktion],
      [Erste Zahl der Rechnung], [Stelle dich bei der Zahl auf],
      [Positive Zahl], [Gehe so viele Schritte nach vorne],
      [Negative Zahl], [],
      [Plus (Rechenzeichen)], [Schaue /drehe dich in die positive Richtung],
      [Minus (Rechenzeichen)], [],
    ),
  )
]

#aufgabe(titel: "Eigene Rechenaufgaben")[
  Wechselt die Rollen, so dass jeder einmal Springer:in ist und überlegt euch eigene Rechenaufgaben, die gelaufen werden müssen.
]
