//
//  main.swift
//  Challenge 4.2.2
//
//  Created by Markus Wirtz on 16.07.24.
//

import Foundation

// Leere Liste
var liste: [String] = []
print(liste)

// Elemente hinzufügen

// liste.append("Äpfel")
// liste.append("Bananen")
// ...

liste += ["Äpfel", "Bananen", "Milch", "Brot", "Butter"]
print(liste)

// Elemente löschen
liste.remove(at: 2)
print(liste)

// Überprüfen der Liste
print(liste.isEmpty)
print(liste.contains("Bananen"))
print(liste.count)
