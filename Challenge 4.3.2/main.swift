//
//  main.swift
//  Challenge 4.3.2
//
//  Created by Markus Wirtz on 17.07.24.
//

import Foundation

// Anlegen der Liste

var movieScores: [String:Int] = [
    "Inception": 9,
    "The Matrix": 8,
    "Interstellar": 9,
    "The Dark Knight": 10
    ]

print(movieScores)

// Hinzufügen von Filmen mit Bewertung
movieScores["Pulp Fiction"] = 8
print(movieScores)
movieScores["Fight Club"] = 9
print(movieScores)

// Löschen eines Filmes
movieScores.removeValue(forKey: "Fight Club")
print(movieScores)

// Überprüfen der Bewertungen
print("Der Film 'The Matrix' hat die Wertung: \(Int(movieScores["The Matrix"]!))")


