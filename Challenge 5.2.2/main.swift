//
//  main.swift
//  Challenge 5.2.2
//
//  Created by Markus Wirtz on 23.07.24.
//

import Foundation

class Tier {
    let name: String
    var alter: Int
    
    init(name: String, alter: Int) {
        self.name = name
        self.alter = alter
    }
    
    func beschreibung() {
       print("Name: \(name), Alter: \(alter)")
    }
}

class Katze: Tier {
    
    var schnurrt: Bool
    
    init(schnurrt: Bool, name: String, alter: Int) {
        self.schnurrt = schnurrt
        super.init(name: name, alter: alter)
    }
    
    override func beschreibung() {
        print("Name: \(name), Alter: \(alter), Schnurrt: \(schnurrt)")
    }
}

var katze1 = Katze(schnurrt: true, name: "Pussy", alter: 5)

print("""
      
      Name:     \(katze1.name)
      Alter:    \(katze1.alter)
      Schnurrt: \(katze1.schnurrt)
      
      """)

