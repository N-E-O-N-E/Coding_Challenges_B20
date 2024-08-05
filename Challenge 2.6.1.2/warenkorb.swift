//
//  warenkorb.swift
//  Challenge 2.6.1.2
//
//  Created by Markus Wirtz on 05.08.24.
//

import Foundation

class Warenkorb {
    
    var produkte: [Produkt]
    
    init(produkte: [Produkt]) {
        self.produkte = produkte
    }
    
    func printWarenkorb() {
        print("Mein Warenkorb enthält: \n")
        for produkte in meinWarenkorb.produkte {
            print("\(produkte.produktName) für \(produkte.produktPreis) €")
        }
        print("\n")
    } // EndOfFunc
    
    func printWarenkorbWert() {
        
        var warenwert: Double = 0
        
        for produkte in meinWarenkorb.produkte {
            warenwert += produkte.produktPreis
        }
        print("Mein Warenkorbwert ist: \(warenwert) € \n")
        
    } // EndOfFunc
    
} // EndOfClass
