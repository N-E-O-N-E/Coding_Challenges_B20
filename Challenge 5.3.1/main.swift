//
//  main.swift
//  Challenge 5.3.1
//
//  Created by Markus Wirtz on 24.07.24.

import Foundation

class Produkt {
    
    var name: String
    var preis: Double
    
    var bescheibung: String {
        "Produkt: \(name), kostet \(preis)"
    }
    
    init(name: String, preis: Double) {
        self.name = name
        self.preis = preis
    }
}

let produkt = Produkt.init(name: "Handy", preis: 800.00)
print(produkt.bescheibung)



