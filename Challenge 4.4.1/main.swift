//
//  main.swift
//  Challenge 4.4.1
//
//  Created by Markus Wirtz on 18.07.24.
//

import Foundation

var genres: [String] = ["Rock", "Pop", "Jazz", "Classical"]

for (index,(title)) in genres.sorted().enumerated() {
    print("\(index+1). Genre ist: \(title)")
}



