//
//  main.swift
//  Challenge 2.6.3.1
//
//  Created by Markus Wirtz on 07.08.24.
//

import Foundation

// Aufgabe 1

let greet = {
  print("Greetings!")
}

greet()

// Aufgabe 2

func next(_ a: Int, _ calculate_next: (Int) -> Int) -> Int {
    calculate_next(a)
}

//let y = next(10, calculate_next: { (x: Int) -> Int in return x + 10 })
let y = next(10) { x in x + 10 }

print(y)


