//
//  produkte.swift
//  Challenge 2.6.1.2
//
//  Created by Markus Wirtz on 05.08.24.
//

import Foundation

struct Produkt {
    
    let produktName: String
    var produktPreis: Double

} // EndOfStruct

var banane = Produkt(produktName: "Banane", produktPreis: 0.85)
var apfel = Produkt(produktName: "Apfel", produktPreis: 0.80 )
var birne = Produkt(produktName: "Birne", produktPreis: 0.75)
var melone = Produkt(produktName: "Melone", produktPreis: 1.25)
var trauben = Produkt(produktName: "Trauben", produktPreis: 2.65)
var kiwi = Produkt(produktName: "Kiwi", produktPreis: 0.85)
var orange = Produkt(produktName: "Orange", produktPreis: 0.95)

var einkaufsliste: [Produkt] = [banane, apfel, birne, melone, orange, trauben, kiwi]


