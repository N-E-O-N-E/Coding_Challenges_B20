//
//  main.swift
//  Challenge 2.1.1
//
//  Created by Markus Wirtz on 01.07.24.
//

import Foundation

var roomTemp: Double = 18
var targetTempClima: Double = 21
var windowOpen: Bool = true
var isRaining: Bool = true
var energieUseWatt: Int = 2500

// Überprüfe, ob die aktuelle Raumtemperatur kleiner als die gewünschte Temperatur ist und gib das Ergebnis mit print auf der Konsole aus.

if roomTemp < targetTempClima {
    print("Die Raumtemperatur ist zu gering!")
}

// Überprüfe, ob das Fenster offen ist und es regnet und gib das Ergebnis mit print auf der Konsole aus.

if (windowOpen == true) && (isRaining == true) {
    print("Das Fenster ist offen und es regnet!")
}

// Überprüfe, ob der aktuelle Energieverbrauch größer oder gleich 2000 ist und gib das Ergebnis mit print auf der Konsole aus.

if energieUseWatt >= 2000 {
    print("Der aktuelle Energieverbrauch ist größer als 2000 Watt")
}

// Überprüfe, ob die aktuelle Raumtemperatur nicht gleich der gewünschten Temperatur ist und gib das Ergebnis mit print auf der Konsole aus.

if roomTemp != targetTempClima {
    print("Die aktuelle Raumtemperatur entspricht nicht der Zieltemperatur!")
}

// Überprüfe, ob das Fenster geschlossen ist oder die Raumtemperatur höher oder gleich 18 ist und gib das Ergebnis mit print auf der Konsole aus.

if (windowOpen == false) || (roomTemp >= 18) {
    print("Das Fenster ist geöffnet und es ist mindestens 18 Grad!")
}








