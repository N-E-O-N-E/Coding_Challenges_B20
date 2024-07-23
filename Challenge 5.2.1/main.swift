//
//  main.swift
//  Challenge 5.2.1
//
//  Created by Markus Wirtz on 23.07.24.
//

import Foundation

class Tier {
    let name: String
    var alter: Int
    
    init(name: String, alter: Int) {
        self.name = name
        self.alter = alter
    }
    
}

class Hund : Tier {
    
    let belltLaut: Bool = true
    
}

var Hund1 = Hund(name: "Ben", alter: 4)

print("Der Hund \(Hund1.name) ist \(Hund1.alter) alt. Bellt laut? \(Hund1.belltLaut) ")

