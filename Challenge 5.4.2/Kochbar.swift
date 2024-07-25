//
//  Kochbar.swift
//  Challenge 5.4.2
//
//  Created by Markus Wirtz on 25.07.24.
//

import Foundation


protocol Kochbar {
    
    var zutaten: [String] {get set}
    func kochen()
}
