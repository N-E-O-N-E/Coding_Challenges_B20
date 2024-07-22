//
//  main.swift
//  Chalenge 5.1.2
//
//  Created by Markus Wirtz on 22.07.24.
//

import Foundation

struct Spieler {
    let name: String
    var auto: String
}

class Spielstand {
    var punkteTeam1: Int = 0
    var punkteTeam2: Int = 0
}


var spieler1 = Spieler(name: "Max", auto: "Ford")
var spielstand = Spielstand()

var spieler2 = spieler1
var spielstand2 = spielstand

spieler2.auto = "VW"
spielstand2.punkteTeam1 = 40

print("""

    Spieler1 Name: \(spieler1.name)
    Spieler1 Auto: \(spieler1.auto)
    
    Spieler2 Name: \(spieler2.name)
    Spieler2 Auto: \(spieler2.auto)
    
    Spielstand:  \(spielstand.punkteTeam1)
    Spielstand2: \(spielstand2.punkteTeam1)

---------------------------------------------

""")


