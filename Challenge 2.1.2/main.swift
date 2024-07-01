//
//  main.swift
//  Challenge 2.1.2
//
//  Created by Markus Wirtz on 01.07.24.
//

import Foundation

var aktLuftfeuchtigkeit: Int = 35
var targetLuftfeuchtigkeit: Int = 30
var lightIsOn: Bool = true
var peopleInHouse: Bool = true
var waterUsed: Int = 500

// Überprüfe, ob die aktuelle Luftfeuchtigkeit höher als die gewünschte Luftfeuchtigkeit ist. Wenn ja, gib "Entfeuchter einschalten" auf der Konsole aus.
if aktLuftfeuchtigkeit > targetLuftfeuchtigkeit {
    print("Entfeuchter einschalten")
}

// Überprüfe, ob das Licht eingeschaltet ist und niemand zu Hause ist. Wenn ja, gib "Licht ausschalten" auf der Konsole aus.
if lightIsOn == true && peopleInHouse == true {
    print("Licht ausschalten")
}

// Überprüfe, ob der aktuelle Wasserverbrauch größer oder gleich 400 ist. Wenn ja, gib "Hoher Wasserverbrauch" auf der Konsole aus.
if waterUsed >= 400 {
    print("Hoher Wasserverbrauch")
}

// Überprüfe, ob die aktuelle Luftfeuchtigkeit nicht gleich der gewünschten Luftfeuchtigkeit ist. Wenn ja, gib "Luftfeuchtigkeit anpassen" auf der Konsole aus. Andernfalls gib "Luftfeuchtigkeit optimal" auf der Konsole aus.
if aktLuftfeuchtigkeit != targetLuftfeuchtigkeit {
    print("Luftfeuchtigkeit anpassen")
}
else {
    print("Luftfeuchtigkeit optimal")
}

// Überprüfe, ob das Licht ausgeschaltet ist oder jemand zu Hause ist. Wenn ja, gib "Komfort gewährleistet" auf der Konsole aus. Andernfalls gib "Komfort nicht gewährleistet" auf der Konsole aus.
if lightIsOn != True || peopleInHouse == true {
    print("Komfort gewährleistet")
}
else {
    print("Komfort nicht gewährleistet")
}
