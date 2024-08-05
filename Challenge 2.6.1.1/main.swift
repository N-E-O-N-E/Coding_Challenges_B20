//
//  main.swift
//  Challenge 2.6.1.1
//
//  Created by Markus Wirtz on 05.08.24.
//

import Foundation


var liste: [String] = ["Mango", "Ananas", "Gurke"]

func add(_ pr: String...) {
    liste.append(contentsOf: pr)
}

func del(_ po: Int) {
    liste.remove(at: po)
}





add("Apfel", "Banane", "Melone")

print(liste)

del(2)

print(liste)








