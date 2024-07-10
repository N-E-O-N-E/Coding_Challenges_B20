//
//  main.swift
//  Challenge 3.3.1
//
//  Created by Markus Wirtz on 10.07.24.
//

import Foundation

// 3.3.1. Coding Enums

enum Raum {
    case wohnzimmer, schlafzimmer, küche, bad, büro
}

enum Geraetestatus {
    case an, aus, standby
}

enum Geraetetyp {
    case licht, heizung, klimaanlage, sicherheitssystem
}

var meinWohnzimmer: Raum = .wohnzimmer
var meinSchlafzimmer: Raum = .schlafzimmer

var lichtStatus = Geraetestatus.an
var tvStatus = Geraetestatus.standby

var sytem = Geraetetyp.sicherheitssystem

print("In meinem \(meinWohnzimmer) ist das Licht \(lichtStatus) und in meinem \(meinSchlafzimmer) ist das TV \(tvStatus). \nIn meiner Wohnung gibt es zusätzlich ein \(sytem)!")


