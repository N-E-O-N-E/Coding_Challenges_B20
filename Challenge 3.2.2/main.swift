//
//  main.swift
//  Challenge 3.2.2
//
//  Created by Markus Wirtz on 09.07.24.
//

import Foundation

struct Ausweis {
    let ausweissNr: Int
    var ausweisBesitzer: String
    {
        didSet {
            print("Der Name wurde von \(oldValue) zu \(ausweisBesitzer) geändert!")
        }
    }
    var geliehenAnzahl: Int
    {
        didSet {
            print("Ein weiteres Buch wurde ausgeliehen!")
        }
    }
}

var ausweiss1 = Ausweis.init(ausweissNr: 12345, ausweisBesitzer: "Max", geliehenAnzahl: 20)
ausweiss1.geliehenAnzahl = 21


func editbesitzer(neuerBesitzer: inout String) {
    ausweiss1.ausweisBesitzer = neuerBesitzer
}

var neuerName: String = "Johannes"
editbesitzer(neuerBesitzer: &neuerName)
