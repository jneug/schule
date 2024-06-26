#import "@local/schule:0.0.5": ab, informatik
#import ab: *
#import informatik: db
#import db: schema, primary-key, foreign-key, erd, erd-old

#show: arbeitsblatt.with(
  nummer: "IV.3",
  titel: "ERM transformieren",
  reihe: "Relationale Datenbanken",
  fach: "Informatik",
  kurs: "Q2",
  name: "J. Neugebauer",
	kuerzel: "Ngb",
  version: "2024-02-07",

  fontsize: 10pt
)

#abtitel()

Wenn der erste Entwurf einer Datenbank in Form eines ER-Diagramms erstellt wurde, muss dieses im nächsten Schritt
in ein _Relationenschema_ transformiert werden. Ein _Relationenschema_ beschreibt die _Relationen_
(d.h. Tabellen), aus denen die relationale Datenbank am Ende bestehen soll.

Eine Relation wird in einem festen Format beschrieben:
#align(center, schema[
  Name(#primary-key[Schlüsselattribut], Attribut 1, Attribut2, ..., #foreign-key[Fremdschlüssel])
])


Die Transformation findet in vier Schritten (nach vier _Regeln_) statt:

#enum(
  grid(columns: (1fr, auto), gutter: 2em,
    [Jede _Entität_ mit ihren _Attributen_ wird eine Relation.],
    erd-old.erd({
      erd-old.entity(0, 0, "buch", "Buch")
      erd-old.attribute(to:"buch", -2.5, 0, "isbn", primary-key[ISBN])
      erd-old.attribute(to:"buch", 2.5, 0, "titel", [Titel])
    }) + schema[Buch(#primary-key[ISBN], Titel)]
  ),
  grid(columns: (1fr, auto), gutter: 2em,
    [Jede `m:n`-Beziehung wird in eine _eigenständige Relation_ überführt. Als Attribute bekommt die neue Relation die Primärschlüssel der beiden verknüpften Entitäten. Die Menge dieser _Schlüsselattribute_ bildet den _Primärschlüssel_ dieser neuen Relation. Zusätzlich werden die Attribute der Relation aufgenommen.],
    erd-old.erd({
      erd-old.entity(0, 0, "buch", "Buch")
      erd-old.attribute(to:"buch", 0, -1.5, "isbn", primary-key[ISBN])
      erd-old.attribute(to:"buch", 0, 1.5, "titel", [Titel])

      erd-old.relation(e1:"buch", c1: "n", e2:"kunde", c2: "m", 3, 0, "kauft", [kauft])
      erd-old.attribute(to:"kauft", 3, -2, "anzahl", [Anzahl])

			erd-old.entity(6, 0, "kunde", "Kunde")
      erd-old.attribute(to:"kunde", 6, -1.5, "kid", primary-key[KID])
      erd-old.attribute(to:"kunde", 6, 1.5, "name", [Name])
    }) + schema[kauft(#foreign-key[KID], #foreign-key[ISBN], Anzahl)]
  ),
  grid(columns: (1fr, auto), gutter: 2em,
    [Jede `1:n`-Beziehung wird ohne eigene Tabelle abgebildet. Stattdessen wird der Entität mit der Kardinalität `n` der _Primärschlüssel_ der anderen Entität als Attribut hinzugefügt.],
    erd-old.erd({
      erd-old.entity(0, 0, "buch", "Buch")
      erd-old.attribute(to:"buch", 0, -1.5, "isbn", primary-key[ISBN])
      erd-old.attribute(to:"buch", 0, 1.5, "titel", [Titel])

      erd-old.relation(e1:"buch", c1: "n", e2:"verlag", c2: "1", 3, 0, "verlegt", [verlegt])

			erd-old.entity(6, 0, "verlag", "Verlag")
      erd-old.attribute(to:"verlag", 6, -1.5, "vid", primary-key[VID])
      erd-old.attribute(to:"verlag", 6, 1.5, "name", [Name])
    }) + schema[Buch(#primary-key[ISBN], Titel, #foreign-key[VID])]
  ),
  grid(columns: (1fr, auto), gutter: 2em,
    [Jede `1:1`-Beziehung wird ohne eigene Tabelle abgebildet. Dazu wird der Primärschlüssel _einer_ Entität der Relation der anderen als Attribut hinzugefügt.],
    erd-old.erd({
      erd-old.entity(0, 0, "mita", "Mitarbeiter")
      erd-old.attribute(to:"mita", 0, -1.5, "mid", primary-key[MID])
      erd-old.attribute(to:"mita", 0, 1.5, "nachname", [Nachname])

      erd-old.relation(e1:"mita", c1: "1", e2:"verlag", c2: "1", 3, 0, "ceo", [ist CEO])

			erd-old.entity(6, 0, "verlag", "Verlag")
      erd-old.attribute(to:"verlag", 6, -1.5, "vid", primary-key[VID])
      erd-old.attribute(to:"verlag", 6, 1.5, "name", [Name])
    }) + [
      #schema[Mitarbeiter(#primary-key[MID], Nachname, #foreign-key[VID])]

      _oder_

      #schema[Verlag(#primary-key[VID], Name, #foreign-key[MID])]
    ]
  ),
)



#aufgabe[
  Transformiere die drei ER-Diagramme mit den vier Regeln jeweils in ein _Relationenschema_.

  #enum(
    erd.erd({
      erd.entity((0,0), "stadt", "Stadt")
      erd.attribute((-.5,-.75), "sid", primary-key[Stadt_ID], to:"stadt")
      erd.attribute((.5,-.75), "name", "Name", to:"stadt")

      erd.relation(e1: "stadt", c1:"1", e2: "auto", c2:"n", (1, 0), "steht", "steht")

      erd.entity((2,0), "auto", "Auto")
      erd.attribute((1.5,-.75), "aid", primary-key[Auto_ID], to:"auto")
      erd.attribute((2.5,-.75), "farbe", "Farbe", to:"auto")
      erd.attribute((2.8,0), "leistung", "Leistung", to:"auto")
    }),

    erd.erd({
      erd.entity((0,0), "dönerladen", "Dönerladen")
      erd.attribute((-.5,-.75), "did", primary-key[id], to:"dönerladen")
      erd.attribute((.5,-.75), "standort", "Standort", to:"dönerladen")

      erd.relation(e1: "dönerladen", c1:"n", e2: "produkt", c2:"m", (1, 0), "verkauft", "verkauft")

      erd.entity((2,0), "produkt", "Produkt")
      erd.attribute((1.5,-.75), "pid", primary-key[id], to:"produkt")
      erd.attribute((2.5,-.75), "name", "Name", to:"produkt")
    }),


    erd.erd(unit: .8cm, {
      erd.entity((5, -2), "bundesland", "Bundesland")
      erd.attribute(to:"bundesland", (4.2, -2), "bid", primary-key[ID])
      erd.attribute(to:"bundesland", (5, -2.8), "bname", "Name")

      erd.relation((5,-1), "b_s_i", "befindet sich in", e1:"ort", c2:"1", e2:"bundesland", c1:"n")

      erd.entity((0,0), "kunde", "Kunde")

      erd.relation((2.5,0), "w_i", "wohnt in", e1:"kunde", c1:"n", e2:"ort", c2:"1")

      erd.entity((5,0), "ort", "Ort")
      erd.attribute(to:"ort", (5.75, .35), "oplz", primary-key[Postleitzahl])
      erd.attribute(to:"ort", (5.75, -.35), "oname", "Name")

      erd.relation((0,1), "h", "hat", e1:"kunde", c1:"n", e2:"rabatt", c2:"1")

      erd.entity((0,2), "rabatt", "Rabattstatus")

      erd.relation((5,1), "b_s_i_2", "befindet sich in", e1:"ort", c1:"1", e2:"spedition", c2:"n")

      erd.relation((2.5,1), "bev", "bevorzugt", e1:"kunde", c1:"n", e2:"spedition", c2:"m")

      erd.entity((5,2), "spedition", "Spedition")
    })
  )
]

#line(length:100%, stroke:3pt+red)
```latex
		\teilaufgabe
		\begin{tikzpicture}[erd,baseline=(current bounding box.north)]
			\node (Kunde) at (-3.5,0) [entity] {Kunde};
			\node (id)  at (-5,0) [attribute] {\primarykey{id}};
			\node (Nachname)  at (-4.5,1) [attribute] {Nachname};
			\node (Vorname)  at (-2,1) [attribute] {Vorname};
			\draw (Kunde) -- (id);
			\draw (Kunde) -- (Nachname);
			\draw (Kunde) -- (Vorname);

			\node (wohnt in) at (-.5,0) [relation] {wohnt in};

			\node (Ort) at (2,0) [entity] {Ort};
			\node (Postleitzahl)  at (4.5,.5) [attribute] {\primarykey{Postleitzahl}};
			\node (Name)  at (4,-.5) [attribute] {Name};
			\draw (Ort) -- (Postleitzahl);
			\draw (Ort) -- (Name);

			\draw (Kunde) --node[above]{n} (wohnt in) --node[above]{1} (Ort);

			\node (Bundesland) at (2,3) [entity] {Bundesland};
			\node (BundeslandId)  at (0,3) [attribute] {\primarykey{id}};
			\node (BundeslandName)  at (2,4) [attribute] {Name};
			\draw (Bundesland) -- (BundeslandId);
			\draw (Bundesland) -- (BundeslandName);

			\node (befindet sich in) at (2,1.5) [relation] {\small befindet sich in};

			\draw (Bundesland) --node[left]{1} (befindet sich in) --node[right]{n} (Ort);

			\node (Rabattstatus) at (-3.5,-4) [entity] {Rabattstatus};
			\node (RabattstatusId)  at (-5.5,-4) [attribute] {\primarykey{id}};
			\node (RabattstatusBezeichnung)  at (-4.5,-5.1) [attribute] {Bezeichnung};
			\node (RabattstatusProzent)  at (-2,-5.1) [attribute] {Prozent};
			\draw (Rabattstatus) -- (RabattstatusId);
			\draw (Rabattstatus) -- (RabattstatusBezeichnung);
			\draw (Rabattstatus) -- (RabattstatusProzent);

			\node (hat) at (-3.5,-2) [relation] {hat};

			\draw (Kunde) --node[left]{n} (hat) --node[right]{1} (Rabattstatus);

			\node (Spedition) at (2,-4) [entity] {Spedition};
			\node (SpeditionId)  at (3.5,-4) [attribute] {\primarykey{id}};
			\node (SpeditionStrasse)  at (1,-5.1) [attribute] {Straße};
			\node (SpeditionName)  at (3.5,-5.1) [attribute] {Name};
			\draw (Spedition) -- (SpeditionId);
			\draw (Spedition) -- (SpeditionStrasse);
			\draw (Spedition) -- (SpeditionName);

			\node (befindet sich in 2) at (2,-2) [relation] {\small befindet sich in};

			\draw (Ort) --node[left]{1} (befindet sich in 2) --node[right]{n} (Spedition);

			\node (bevorzugt) at (-1,-2) [relation] {bevorzugt};

			\draw (Kunde) --node[right]{n} (bevorzugt) --node[left]{m} (Spedition);
		\end{tikzpicture}
	\end{teilaufgaben}
\end{aufgabe}

\end{document}
```
