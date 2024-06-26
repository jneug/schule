#import "@local/schule:0.0.5": ab
#import ab: *

#show: arbeitsblatt.with(
	titel: [Quiz zur Geschichte der Informatik],
	reihe: [Grundlagen der Informatik],
	autor: [Jonas Neugebauer],
	kuerzel: "Ngb",
	kurs: "9Diff",
	nummer:	"I.1",
	fach: "Informatik",
	version: "2023-08-17",

	fontsize: 12pt
)

#abtitel()

#wrapfig(
	left, dy:-5mm,
	image(width:3.4cm, "9Diff-AB.1-Abb-1.jpg")
)[
Die Informatik ist noch ein recht junges Fach – im Vergleich etwa zur Mathematik oder zur Physik. Es gibt einige Frauen und Männer, die die Entstehung der Informatik maßgeblich beeinflusst haben.

Versucht im Team mithilfe des Internets, zu den folgenden Fragen Antworten zu finden. Am Schluss treten alle Teams in einem Quiz-Spiel zur Informatik gegeneinander an.

Teilt die Fragen untereinander auf und macht euch Notizen, die ihr beim Quiz nutzen könnt.
]

#rahmen[
	- Einer der ersten mechanischen Computer, die "Analytical Engine", wurde von einem Engländer gebaut. Wie heißt dieser Mann und wann hat er gelebt?
	- Die Person aus Frage 1 hat sehr eng mit einer Frau zusammen gearbeitet, der zu Ehren eine bekannte Programmiersprache "Ada" genannt wurde. Um wen geht es hierbei und welche Rolle hat die Frau bei der Analytical Engine gespielt?
	- Das was #name[Albert Einstein] für die Physik ist, ist #name[Alan Turing] für die Informatik. Wann lebte er und was sind seine wichtigsten Leistungen für die Informatik?
	- Es gibt eine Stadt, in der ein Denkmal #name[Alan Turings] steht. Wo steht das Denkmal und was hält Turing dort in der Hand? Welche Bedeutung hat dieser Gegenstand?
	- Drei Betriebssysteme dominieren heute den Markt: Windows, Linux (Basis von Android) sowie Mac OS. Wie heißen die "Erfinder" dieser Systeme und wann sind diese entstanden?
	- Welche bahnbrechende Erfindung für unser heutiges Leben hat #name[Tim Berners-Lee] gemacht?
	- Was ist die "Z3"? Wer hat sie entwickelt und wann war das? Wo kann man heute einen Nachbau der Z3 sehen?
	- Jeder moderne Computer (PC, Handy, …) basiert auf den Ideen von #name[John von Neumann]. Um welche "Idee" handelt es sich dabei?
	- Was versteht man unter "künstlicher Intelligenz"? Kannst du den Begriff in 1-2 Sätzen erklären?
	- Ein international hoch anerkannter Informatiker arbeitet als Professor an der Universität Bielefeld. Er hat vor einigen Jahren den Leibnitz-Preis für Nachwuchswissenschaftler bekommen. Von wem ist hier die Rede und in welchem Forschungsgebiet arbeitet diese Person?
	- #name[Gordon Moore] formulierte 1965 ein für die Informatik wegweisendes Gesetz. Wie heißt es und worum geht es dabei?
	- Welche Maßeinheiten und Größen spielen in der Informatik eine Rolle (z.B. für Speicher, Leistung, usw.)?
	- Was verbirgt sich hinter den Abkürzungen "WWW", "HTTP", "HTML" und "SSL"?
	- Die Gründer von Apple, Microsoft und Google haben in den letzten Jahrzehnten den Fortschritt der Rechenmaschine mitgestaltet. Wie heißen sie und was waren ihre wichtigsten Meilensteine?
]
