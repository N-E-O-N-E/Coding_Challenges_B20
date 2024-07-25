//
//  main.swift
//  Challenge 5.4.2
//
//  Created by Markus Wirtz on 25.07.24.
//

import Foundation

let grundZutaten = ["Salz", "Zucker", "Pfeffer", "Chilli", "Ingwer", "Oregano", "Basillikum", "Kokosfett"]
let backZutaten = ["Mehl", "Butter", "Milch", "Backpulver", "Vanille", "Orangat", "Zitronenschalen"]
let divZutaten = ["Kakao", "Weiße Schokolade", "Kokosraspel", "Mandeln", "Zitronen", "Mandarine"]


struct Rezept: Kochbar, Servierbar {
   
    var zutaten: [String]
    var portionen: Int
    
    func kochen() {
        print("Das Rezept wird mit den folgenden Zutaten zubereitet:")
        
        for (index, element) in zutaten.enumerated() {
            print("\t\(index+1). \(element)")
        }
    }
    
    func servieren() {
        print("Das Rezept wird in \(portionen) serviert!")
    }
    
}


var gericht1 = Rezept(zutaten: [String(grundZutaten.randomElement()!), String(grundZutaten.randomElement()!), String(backZutaten.randomElement()!), String(backZutaten.randomElement()!), String(divZutaten.randomElement()!), String(divZutaten.randomElement()!), String(divZutaten.randomElement()!)], portionen: 4)

gericht1.kochen()
gericht1.servieren()
