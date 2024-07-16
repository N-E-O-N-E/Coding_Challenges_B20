//
//  main.swift
//  Challenge 4.2.1
//
//  Created by Markus Wirtz on 16.07.24.
//

import Foundation

var meineListe: [String] = ["Äpfel", "Bananen", "Milch", "Brot", "Tee", "Käse", "Tomaten", "Salat", "Melone", "Trauben", "Schokolade"]

print(meineListe)


print("Das erste Element in meiner Liste ist: \(meineListe[0])")

print("Das dritte Element in meiner Liste ist: \(meineListe[2])")

print("Das letzte Element in meiner Liste ist: \(meineListe[meineListe.endIndex - 1])")
print("Das letzte Element in meiner Liste ist: \(meineListe[meineListe.count - 1])")

meineListe[1] = "Eier"
meineListe[3] = "Butter"

meineListe.append("Orangen")
meineListe.insert("Eiskaffee", at: 0)

print(meineListe)

var entfernen: Int = meineListe.firstIndex(of: "Tee")!
meineListe.remove(at: entfernen)

print("Tee wurde gelöscht")
print(meineListe)

