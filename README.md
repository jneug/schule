> LaTeX Dateien für Arbeitsblätter usw.

Hier sammele ich meine Arbeitsblätter und Materialien (hauptsächlich für den Informatik- und Mathematikunterricht).

Die Materialien sind unter [CC-BY-SA Lizenz 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.de) veröffentlicht und dürfen beliebig weiterverwendet werden.

Das Repository ist nach Fach und Thema sortiert. Alle Dateinamen folgen einem festen Schema. Zu jedem Dokument sind die TeX-Quelldateien und fertig gesetzte PDF-Dateien im Repository vorhanden.

## Fehler und Verbesserungen melden

Fehler und Verbesserungen können gerne an mich gemeldet werden. Entweder per [GitHub Issue](https://github.com/jneug/schule/issues), per Nachricht an mich oder direkt als Pull-Request.

## Änderungen vornehmen

Die Materialien dürfen beliebig verändert werden. Dazu ist allerdings eine Funktionierende LaTeX Umgebung notwendig. Die Arbeit mit LaTeX ist nicht ganz einfach und bedarf einiger Vorbereitung.  Je nach Fach sind weitere Zusatzpakete notwendig, um beispielsweise Syntaxhervorhebungen von Quelltexten darzustellen oder Funktionsgraphen zu plotten.

In Folgenden beschreibe ich die Installation und Konfiguration unter macos, wie ich sie derzeit nutze. Nach diesem Vorgehen sollten alle Quelldateien als PDFs gesetzt werden können. Auf anderen Betriebssystemen sind ggf. weitere/andere Schritte notwendig.

### Vorbereitungen

Auf einem Mac wird die Installation der verschiedenen Komponenten durch die Verwendung von [Homebrew](https://brew.sh) deutlich erleichtert. Die Installation von Homebrew wird auf der Webseite des Projekts beschrieben.

### TeX installieren

Wichtigste Komponente ist zunächst eine TeX Distribution. Unter macos kann MacTeX verwendet werden und unter Windows MikTeX.

### Pakete

TeXlive kommt mit dem eigenen Paket-Manager `tlmgr`. Zunächst sollte das Tool selbst und alle bisher installierten Pakete auf Aktualisierungen geprüft werden. Ich nutze dazu den Paket-Erver der TU-Chemnitz unter `https://ftp.tu-chemnitz.de/pub/tex/systems/texlive/tlnet`.

```
sudo tlmgr --repository https://ftp.tu-chemnitz.de/pub/tex/systems/texlive/tlnet update --self
sudo tlmgr --repository https://ftp.tu-chemnitz.de/pub/tex/systems/texlive/tlnet update --all
```

Das Material benötigt auf jeden Fall die Pakete [schule](https://www.ctan.org/package/schule) und [ngbschule](https://github.com/jneug/ngbschule), sowie deren Abhängigkeiten, um übersetzt zu werden. Einige Dokumente nutzen weitere Zusazpakete.

`schule` ist in vielen LaTeX-Distributionen (TeXlive, MikTeX, ...) enthalten. Das Paket vereinfacht einige Funktionen, die in der Schule regelmäßig genutzt werden. Vor allem das Setzen von Aufgaben in Arbeitsblättern und Klassenarbeiten, und das Erstellen von Erwartungshorizonten wird vereinfacht.

`ngbschule` enthält meine eigenen Kommandos und Umgebungen, für den Einsatz in der Schule. Das Paket ist leicht anpassbar für eigene Bedürfnisse, aber basiert auf meinen Vorstellungen für Design und Layout von Schuldokumenten. Es ist nicht in den Distributionen vorhanden und muss in die lokale LaTeX Installation integriert werden. Die Details unterscheiden sich je nach Plattform und LaTeX-Version. Details sind auf der [Github-Seite des Pakets](https://github.com/jneug/ngbschule) zu finden.

Wenn MacTeX vollständig installiert wurde, dann sollten die nötigen Pakete fast alle vorhanden sein. Nur `ngbschule` und `FLaLL` (für den Satz von endlichen Automaten) müssen manuell installiert werden.

Wurde nur BasicTeX installiert, dann können die mindestens benötigten Pakete mit `tlmgr` installiert werden:

```
sudo tlmgr install --repository https://ftp.tu-chemnitz.de/pub/tex/systems/texlive/tlnet adjustbox arrayjobx cancel ccicons collectbox courier csquotes elocalloc enumitem environ esvect fontaxes forarray forest gauss inlinedef interval isomath longdivision marginfix marginnote mathfixs menukeys multido multirow numprint pgf-blur pgf-umlcd pgf-umlsd pgfopts pict2e prettyref relsize schule silence siunitx skmath struktex syntaxdi tasks tcolorbox tex-gyre tkz-base tkz-fct translations trimspaces utfsym was wrapfig xifthen xmpincl xpatch xurl zref xypic scratch simplekv kastrup chivo xint minted framed catchfile
```

`ngbschule` und `FLaLL` müssen wieder manuell installiert werden.

### Der richtige Editor

### latexmk einrichten

### Pygments installieren

### QR-Codes

### Gnuplot installieren

### UMLet
