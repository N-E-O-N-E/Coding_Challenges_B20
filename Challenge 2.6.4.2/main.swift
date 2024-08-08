//
//  main.swift
//  Challenge 2.6.4.2
//
//  Created by Markus Wirtz on 08.08.24.
//

import Foundation

func Download(file: (String) -> ()) {
    
    print("Daten werden aus dem Internet geladen")
    for _ in 1...10 {
        print(" 🟧", terminator: "")
        Thread.sleep(forTimeInterval: 0.1)
        
    }
    print()
    print() // erster Umbruch
    
    file("Heruntergeladene Internetdaten")
}

Download() { file in
    print("Daten geladen: \(file)")
}
Download() { file in
    print("Daten erneut geladen: \(file)")
}


