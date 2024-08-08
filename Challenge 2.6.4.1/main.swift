//
//  main.swift
//  Challenge 2.6.4.1
//
//  Created by Markus Wirtz on 08.08.24.
//

import Foundation

struct Button {
    let titel: String
    var aktion: () -> Void
    
    func buttonKlick() {
        aktion()
    }
    
}

let button1 = Button(titel: "Home") {
    print("Button wurde geklickt!")
}

button1.buttonKlick()
