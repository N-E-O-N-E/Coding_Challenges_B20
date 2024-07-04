//
//  main.swift
//  Challenge 2.4.1
//
//  Created by Markus Wirtz on 04.07.24.
//

import Foundation



// variante 1
func gruesse() {
    print("Smart-Garden-System!")
}
gruesse()




// Variante 2
func anzahlPflanzen(Anzahl: Int) {
    print("Du musst \(Anzahl) Pflanzen bewässern")
}
anzahlPflanzen(Anzahl: 23)


// Eigene Funktion
func eigeneSmartGardenFunktion (Anzahl: Int, Wetter: Bool) {
    
    if Wetter == true {
        print("Das Wetter ist gut, es müssen \(Anzahl) Pflanzen bewäsert werden")
    } else {
        print("Heute muss keine Pflanze bewässert werden, da das Wetter schlecht ist.")
    }
}

var UserEingabe = true
var UserEingabe2 = false
eigeneSmartGardenFunktion(Anzahl: 23, Wetter: UserEingabe)
eigeneSmartGardenFunktion(Anzahl: 45, Wetter: UserEingabe2)
