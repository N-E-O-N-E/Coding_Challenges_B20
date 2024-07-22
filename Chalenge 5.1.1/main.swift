//  main.swift
//  Chalenge 5.1.1
//
//  Created by Markus Wirtz on 22.07.24.
//

import Foundation

class Fahrzeug {
    
    let marke: String
    let modell: String
    let baujahr: UInt
    var kilometerstand: Int
    
    init(marke: String, modell: String, baujahr: UInt, kilometerstand: Int) {
        self.marke = marke
        self.modell = modell
        self.baujahr = baujahr
        self.kilometerstand = kilometerstand
    }
    
    func ausgabe() {
        
        print("""
        Marke: \(marke)
        Modell: \(modell)
        Baujahr: \(baujahr)
        Kilomaterstand: \(kilometerstand)
        ---------------------------------
        """)
    }
}

var neuesFahrzeug1 = Fahrzeug(marke: "BMW", modell:"3er", baujahr: 1989, kilometerstand: 182000)
neuesFahrzeug1.ausgabe()

var neuesFahrzeug2 = Fahrzeug(marke: "VW", modell:"Polo", baujahr: 1995, kilometerstand: 182000)
neuesFahrzeug2.ausgabe()

var neuesFahrzeug3 = Fahrzeug(marke: "Ford", modell:"Mustang", baujahr: 1991, kilometerstand: 111500)
neuesFahrzeug2.ausgabe()



