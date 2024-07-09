//
//  main.swift
//  Challenge 3.2.1
//
//  Created by Markus Wirtz on 09.07.24.
//

import Foundation

struct Buch {
    let titel: String
    let pages: Int
    var leser: String {
        didSet {
            print("Der neue Leser ist \(leser) wurde geändert. Der alte Leser war \(oldValue)")
            
        
        }
    }
    

    init(titel: String, pages: Int, leser: String) {
        self.titel = titel
        self.pages = pages
        self.leser = leser
        
    }
    
    func ausgabe() {
        print("""
            Titel: \(titel)
            Seiten: \(pages)
            Leser: \(leser)
            
            """)
    }
    
    mutating func edit(NeuerLeser: String){
        self.leser = NeuerLeser
    }


}

var neuesBUCH1 = Buch(titel: "Buch 1", pages: 30, leser: "Markus")
var neuesBUCH2 = Buch(titel: "Buch 2", pages: 45, leser: "Matthias")
var neuesBUCH3 = Buch(titel: "Buch 3", pages: 70, leser: "Lena")


neuesBUCH1.ausgabe()
neuesBUCH2.ausgabe()
neuesBUCH3.ausgabe()

neuesBUCH3.edit(NeuerLeser: "Jürgen")
neuesBUCH3.edit(NeuerLeser: "Markus")

neuesBUCH3.ausgabe()



