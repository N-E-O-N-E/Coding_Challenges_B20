//
//  main.swift
//  Challenge 3.1.2
//
//  Created by Markus Wirtz on 08.07.24.
//

import Foundation

struct Besucher {
    
    var besucherName: String
    var besucherAlter: Int
    var istMitglied: Bool
    
    var preis: Double = 5.0
    var preisAdult: Double = 10.0
    
    init(besucherName: String, besucherAlter: Int, istMitglied: Bool) {
        self.besucherName = besucherName
        self.besucherAlter = besucherAlter
        self.istMitglied = istMitglied
        
        if besucherAlter < 18 {
            print("\n\(besucherName), zahlt einen Preis von: \(preis) EUR - vergünstigter Preis da minderjährig")
            if istMitglied == true {
                print("Mitglieder-Rabatt von 50% aktiv. Zu zahlen sind \(String(format: "%.2f",preis/2)) EUR.")
            }
        } else if besucherAlter >= 18 {
            print("\n\(besucherName), zahlt einen Preis von: \(preisAdult) EUR - Voller Preis da volljähring.")
            if istMitglied == true {
                print("Mitglieder-Rabatt von 50% aktiv. Zu zahlen sind \(String(format: "%.2f",preisAdult/2)) EUR.")
            }
        }
    }
}

var besucher1 = Besucher(besucherName: "Peter", besucherAlter: 17, istMitglied: false)
var besucher2 = Besucher(besucherName: "Nicole", besucherAlter: 17, istMitglied: true)
var besucher3 = Besucher(besucherName: "Lena", besucherAlter: 26, istMitglied: false)
var besucher4 = Besucher(besucherName: "Jens", besucherAlter: 31, istMitglied: true)

