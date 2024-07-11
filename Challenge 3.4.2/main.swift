//
//  main.swift
//  Challenge 3.4.2
//
//  Created by Markus Wirtz on 11.07.24.
//

import Foundation

struct hotel {
    
    var nameHotel: String
    let anzZimmer: Int
    
    static var zimmerNr: Int = 0
    static var anzZimmerBelegt = 14
    
    mutating func checkIn(Gast: String, Zimmer: Int) {
        hotel.zimmerNr = Zimmer
        hotel.anzZimmerBelegt += 1

    }
    
    static func getZimmer() {
        print("Es sind aktuell '\(hotel.anzZimmerBelegt) Zimmer' belegt!")
    }
    
    mutating func checkOut(Zimmer: Int) {
        hotel.zimmerNr = 0
        hotel.anzZimmerBelegt -= 1
    }
    
    init(nameHotel: String, anzZimmer: Int) {
        self.nameHotel = nameHotel
        self.anzZimmer = anzZimmer
    }
    
}

var neuesHotel = hotel(nameHotel: "Musterhotel", anzZimmer: 100)

print("Das Hotel '\(neuesHotel.nameHotel)' hat '\(neuesHotel.anzZimmer) Zimmer'")
hotel.getZimmer()


