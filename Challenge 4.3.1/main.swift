//
//  main.swift
//  Challenge 4.3.1
//
//  Created by Markus Wirtz on 17.07.24.
//

import Foundation


var meinSet: Set<String> = ["Inception", "The Matrix", "Interstellar", "The Dark Knight"]
print(meinSet)

meinSet.insert("Rocky 1")
print(meinSet)

meinSet.insert("Rocky 2")
print(meinSet)

meinSet.insert("Rocky 3")
print(meinSet)

meinSet.insert("Rocky 5")
print(meinSet)

meinSet.remove("Inception")
print(meinSet)

print(meinSet.contains("The Matrix"))
print(meinSet.contains("Avatar"))

