//
//  main.swift
//  Challenge 2.3.1
//
//  Created by Markus Wirtz on 03.07.24.
//

import Foundation

/*
Du programmierst eine App, die das Pastakochen 🍝 vereinfachen soll. 
 
 Sie prüft jede Minute, ob die Pasta schon fertig gekocht ist.
 
Programmiere die Logik nach folgendem Kontrollfluss. 
 Dabei soll jede Minute entweder "Pasta kocht..." mit print auf der
 
 Konsole ausgegeben werden oder "Guten Appetit!", wenn die Kochzeit die vorgegebene Dauer erreicht hat.
*/

var kochzeit = 0
let dauer = 10

while kochzeit < dauer {
        print("Pasta kocht \(kochzeit)")
        kochzeit += 1
    }
print("Guten Appetit")
 

kochzeit = 0

while true {
    if kochzeit < dauer {
        print("Pasta kocht \(kochzeit)")
        kochzeit += 1
    }
    else {
        print("Guten Appetit")
        break
    }
}



