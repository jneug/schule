#import "@local/schule:0.0.5": ab, informatik
#import ab: *

#import informatik: docs

#import "@preview/cetz:0.1.2"

#show: arbeitsblatt.with(
  titel: [MyMail],
  reihe: [Rechnernetze],
  kurs: [Q2],
  fach: "Informatik",
  nummer: "II.08",

  version: "2023-11-29",

  fontsize: 10pt,
)

#abtitel()

MyMail ist ein einfaches Mail-Programm, dass mit HIlfe des POP3-Protokolls Mails von einem Mail-Server abrufen und in einer GUI (_Graphical User Interface_) anzeigen kann. Die GUI ist schon fertig implementiert und kann verwendet werden.

#rahmen[
#docs.class("MyMailGUI", descr: [
  Aufbau des Programmfensters:

  #grid(columns:(auto, 1fr), gutter: 1cm,
    cetz.canvas({
      import cetz.draw: *

      rect((0,0), (4,3))
      rect((0,0), (1,3), fill:silver)
      rect((1,1.8), (4,3))
      rect((0,0), (4,-.1), fill:black)

      for i in range(5) {
        i += 1
        line((1.1,2.98 - i*.2), (1.9, 2.98 - i*.2 - .01), stroke:2pt+gray)
        line((2, 2.98 - i*.2), (3.9, 2.98 - i*.2 - .01), stroke:2pt+gray)
      }
      for (i, l) in (1, .85, .85, .8, .8, .8, .8).enumerate() {
        i += 1
        line((1.1,1.8 - i*.2), (1 + 2.9*l, 1.8 - i*.2), stroke:2pt+gray)
      }

      content((.5, 1.5), text(black, 2em)[*1*])
      content((2.5, 2.5), text(black, 2.5em)[*2*])
      content((2.5, 1), text(black, 2.5em)[*3*])
    }),
    [
      / 1: Seitenleiste mit Bedienelementen.
      / 2: Liste der verügbaren E-Mails mit Datum und Betreffzeile.
      / 3: Anzeige des E-Mail Textes der in (*2*) ausgewählten E-Mail.
      / 4: (schwarz) Statusleiste mit Fehler- und Statusmeldungen
    ]
  )
  ], (
  ("void addMailToList(Mail pMail)", [Fügt ein Mail-Objekt in die Liste der verfügbaren Mails (*2*) ein und aktualisiert das Fenster.]),
  ("void addMailsToList(Mail[] pMails)", [Fügt alle Mails aus dem angegebenen Array der Liste der verfügbaren Mails in (*2*) hinzu und aktualisiert das Fenster.]),
  ("void addMailsToList(List<Mail> pMails)", [Fügt alle Mails aus der angegebenen Liste der Liste der verfügbaren Mails in (*2*) hinzu und aktualisiert das Fenster.]),
  ("void removeMailFromList(Mail pMail)", [Entfernt die angegebene Mail aus der Liste der verfügbaren Mails in (*2*) und aktualisiert das Fenster.]),
  ("void clearAllMails()", [Entfernt alle Mails aus der Liste der verfügbaren Mails in (*2*) und aktualisiert das Fenster.]),
  ("void updateMailList()", [Aktualisiert das Fenster.]),

  ("void setStatus(String pMessage)", [Setzt den Text in der Statusleiste am unteren Rand auf den angegebenen Statustext.]),
  ("void setError(String pMessage)", [Setzt den Text in der Statusleiste am unteren Rand auf den angegebenen Fehlertext.]),
))
]

#aufgabe[
  Implementiere den Mail-Abruf in der Klasse `MyMail`, indem Du wie folgt vorgehst:

  #set enum(numbering:"a)")
  + Implementiere die Methoden `login` und `connectToServer`.
  + Implementiere die Methoden `getMessageCount`.
  + Implementiere die Methoden `getMail(int pNumber)`.
  + Implementiere die Methoden `getAllMails()`.
  + Implementiere die Methoden `deleteMail(Mail pMail)`.
]
