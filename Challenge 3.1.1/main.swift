//
//  main.swift
//  Challenge 3.1.1
//
//  Created by Markus Wirtz on 08.07.24.
//

import Foundation

struct TierDesTages {
    
    var name: String
    var tierart: String
    var alter: Int
    var gefaehrdet: Bool
    
}

var neuerLöwe = TierDesTages(name: "Leo", tierart: "Löwe", alter: 5, gefaehrdet: false)
var neuerElefant = TierDesTages(name: "Rudi", tierart: "Elefant", alter: 10, gefaehrdet: true)
var neuerHund = TierDesTages(name: "Ben", tierart: "Hund", alter: 4, gefaehrdet: false)

print(neuerLöwe)
print(neuerElefant)
print(neuerHund)

print("""
Ein neues Tier hat den zoo erreicht!
------------------------------------

Name: \(neuerLöwe.name)
Tierart: \(neuerLöwe.tierart)
Alter: \(neuerLöwe.alter)
Gefährdet: \(neuerLöwe.gefaehrdet)

""")

print("""

Name: \(neuerElefant.name)
Tierart: \(neuerElefant.tierart)
Alter: \(neuerElefant.alter)
Gefährdet: \(neuerElefant.gefaehrdet)

""")

print("""

Name: \(neuerHund.name)
Tierart: \(neuerHund.tierart)
Alter: \(neuerHund.alter)
Gefährdet: \(neuerHund.gefaehrdet)

""")

