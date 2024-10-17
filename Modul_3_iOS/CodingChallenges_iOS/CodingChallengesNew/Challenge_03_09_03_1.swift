//
//  Challenge_03_09_03_1.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 16.10.24.
//
/*
 
Top-Level-Design
---------------------------------------------------------------------
Für Häuser und Räume werde je separate Collections erstellt.

Collection: Häuser

    - HausID
    - Hausname
    - Hausart
    - Adresse
    - Kaufpreis
    - Baujahr
    - Energieklasse
    - letzteRenovierung
    - [RaumID]

Collection: Räume
    - RaumID
    - [HausID]
    - Raumname
    - Raumlage
    - Größe


Mehrere Abfragen notwendig für Haus und Räume anzuzeigen.



Nested-Design
--------------------------------------------------------------------
Räume werden in den Haus Colections eingebettet

Collection: Häuser

     - HausID
     - Hausname
     - Hausart
     - Adresse
     - Kaufpreis
     - Baujahr
     - Energieklasse
     - letzteRenovierung
     - [RaumID]
        - Raumname
        - Raumlage
        - Größe


Einfache Abfrage möglich aber schwiriger zu Warten da bei Raumänderungen das Haus mit angepasst werden muss.actor
Datenredundanz - Räume können mehrfach vorhanden sein.

*/
