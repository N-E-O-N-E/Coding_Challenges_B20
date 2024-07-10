//
//  main.swift
//  Challenge 3.3.2
//
//  Created by Markus Wirtz on 10.07.24.
//

import Foundation

var roomTemp: Int = 19

switch roomTemp {

case 23: 
    print("Die Zieltemperatur ist erreicht")
case 19:
    print("Die Aufwärmfunktion wird aktiviert")
case 27:
    print("Die Kühlfunktion wird aktiviert")
default:
    print("Temperatur wird überwacht")
    
}

enum raumtemperatur {
    case kalt
    case warm
    case heiß
}

var aktTemp = raumtemperatur.kalt

switch aktTemp {
case.kalt:
    print("Der Raum ist abgekühlt!")
case.warm:
    print("Der Raum hat sich aufgewärmt!")
case.heiß:
    print("Der Raum hat sich stark aufgewärmt!")

    
    
}
