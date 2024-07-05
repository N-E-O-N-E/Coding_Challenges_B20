//
//  main.swift
//  Challenge 2.4.2
//
//  Created by Markus Wirtz on 05.07.24.
//

import Foundation

// Temperatur Boolean

func luftfeuchtigkeit(aktuelleLuftfeuchtigkeit: Int, idealWert: Int) -> Bool {
    return aktuelleLuftfeuchtigkeit == idealWert
}
print("Ist die Luftfeuchtigkeit ideal? Antwort: \(luftfeuchtigkeit(aktuelleLuftfeuchtigkeit: 60, idealWert: 60))")


// Temperatur vergleich

func temperatur(aktuelleTemperatur: Double) -> String {
    
   // var ideal: String = ""
    
    if aktuelleTemperatur > 18 && aktuelleTemperatur < 25 {
        return "Die Temperatur von \(aktuelleTemperatur) Grad ist ideal für das Pflanzenwachstum."
    } else {
        return "Die Temperatur von \(aktuelleTemperatur) Grad ist nicht ideal!!!"
    }
    //return ideal
}

print(temperatur(aktuelleTemperatur: 22))

