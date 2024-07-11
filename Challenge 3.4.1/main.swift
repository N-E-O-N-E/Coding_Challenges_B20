//
//  main.swift
//  Challenge 3.4.1
//
//  Created by Markus Wirtz on 11.07.24.
//

import Foundation


struct hotelzimmer {
    
    var nameGast: String
    var nrZimmer: Int
    static var nameHotel: String = "Musterhotel"
    
    init(nameGast: String, nrZimmer: Int) {
        self.nameGast = nameGast
        self.nrZimmer = nrZimmer
    }
    
    static func editHotel(Hotelname: String) {
        hotelzimmer.nameHotel = Hotelname
        print("Der Name des Hotels geändert in: \(hotelzimmer.nameHotel)")
    }
    
    mutating func checkin(Gast: String) {
        self.nameGast = Gast
        print("\(nameGast) mit der Zimmernummer \(nrZimmer) hat eingecheckt!")
    }
    mutating func checkout(Gast: String) {
        self.nameGast = Gast
        print("\(nameGast) mit der Zimmernummer \(nrZimmer) hat ausgecheckt!")
        self.nameGast = ""
    }
    
}

hotelzimmer.editHotel(Hotelname: "VIP Hotel")

var zimmer1: hotelzimmer = hotelzimmer(nameGast: "Max", nrZimmer: 23)

zimmer1.checkin(Gast: "Max")
zimmer1.checkout(Gast: "Max")



