//
//  main.swift
//  structInitAlter_Test
//
//  Created by Markus Wirtz on 08.07.24.
//

import Foundation

struct Person {
    
    var name: String
    var gebtag: String
    var alter: Int
    
    init(name: String, gebtag: String) {
        self.name = name
        self.gebtag = gebtag
        self.alter = Person.berechnung(geburtstagInput: gebtag)
    }
        // Eingabe String, Rückgabe Int ( Alter )
        static func berechnung(geburtstagInput: String) -> Int {
            
            let format = DateFormatter()
            format.dateFormat = "dd.mm.yyyy" 
            // Formatvorlage für den Input mit DateFormatter()
            
            let geburtstagFormatiert = format.date(from: geburtstagInput)! 
            // Parsen des Inputs in Date-Format für Variable
            
            let neuerKalender = Calendar.current
            // neuer kalender initialisierung
            
            let alterKomponente = neuerKalender.dateComponents([.year], from: geburtstagFormatiert, to: Date())
            //  dateComponent im Format .year von geburtstag-formatiert bis Date() also jetzt in Variabl
            
            return alterKomponente.year!
            // Rückgabe des Alters von der Komponente Jahr
        
    }
}

var neuePerson = Person(name: "Jürgen", gebtag: "23.09.1967")
print("\(neuePerson.name) ist aktuell \(neuePerson.alter) Jahre alt.")








