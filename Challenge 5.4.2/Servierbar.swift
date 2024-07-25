//
//  Servierbar.swift
//  Challenge 5.4.2
//
//  Created by Markus Wirtz on 25.07.24.
//

import Foundation

protocol Servierbar {
    var portionen: Int {get set}
    func servieren()
}
