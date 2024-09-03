//
//  Challenge_03.02.02-1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 03.09.24.
//

import Foundation

struct WhatsUpp: Identifiable {
    
    var id: UUID
    var vorname: String
    var nachname: String
    var strasse: String
    var hausNr: Int
    var plz: String
    var ort: String
    var eMail: String
    var telefonNr: String
    var alter: Int
    var zuletztOnline: String
    
    init(id: UUID, vorname: String, nachname: String, strasse: String, hausNr: Int, plz: String, ort: String, eMail: String, telefonNr: String, alter: Int, zuletztOnline: String) {
        self.id = id
        self.vorname = vorname
        self.nachname = nachname
        self.strasse = strasse
        self.hausNr = hausNr
        self.plz = plz
        self.ort = ort
        self.eMail = eMail
        self.telefonNr = telefonNr
        self.alter = alter
        self.zuletztOnline = zuletztOnline
    }
    
} // endStruct

let neuePerson1 = WhatsUpp(id: UUID(),
                           vorname: "Julius",
                           nachname: "Hauser",
                           strasse: "MarxStr.",
                           hausNr: 12,
                           plz: "66133",
                           ort: "Saarbrücken",
                           eMail: "juliusH@web.de",
                           telefonNr: "0151 8987665",
                           alter: 34,
                           zuletztOnline: "12:23")
