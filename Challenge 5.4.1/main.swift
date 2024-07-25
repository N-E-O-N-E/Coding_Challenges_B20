//
//  main.swift
//  Challenge 5.4.1
//
//  Created by Markus Wirtz on 25.07.24.
//

import Foundation

struct Gericht: Essbar {
    
    var kalorien: Int
    
    func istGesund() -> Bool {
        if kalorien <= 500 {
            return true
        } else {
            return false
        }
    }
    
    
    let name: String
    var preis: Double


    func preisInfo() {
        print("Name: \(name), Preis: \(preis) €, Kalorien: \(kalorien) kal")
    }
    
}

let rahmschnitzel = Gericht(kalorien: 660, name: "Rahmschnitzel", preis: 2.90)
let salat = Gericht(kalorien: 95, name: "Gemischter Salat", preis: 1.99)


rahmschnitzel.preisInfo()
salat.preisInfo()

print("\(rahmschnitzel.name) ist gesund: \(rahmschnitzel.istGesund())")
print("\(salat.name) ist gesund: \(salat.istGesund())")




