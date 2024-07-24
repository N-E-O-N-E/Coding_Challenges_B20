//
//  main.swift
//  Challenge 5.3.2
//
//  Created by "Markus Wirtz" on 24.07.24.
//

import Foundation

extension Bool {
    
    func gegenteil() -> Bool {
        return !self
    }
    
}

extension Double {
    
    func quadrat() -> Double {
        return self * self
    }
}


let boolWert: Bool = true
print("Das Gegenteil von \(boolWert) ist: \(boolWert.gegenteil())") // Erwartete Ausgabe: "false"

let doubleWert: Double = 3.0
print("Das Quadrat von \(doubleWert) ist: \(doubleWert.quadrat())") // Erwartete Ausgabe: "9.0"



