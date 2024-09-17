//
//  Actor.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 16.09.24.
//

import Foundation

struct Actor: Identifiable {
    
    var id: UUID
    
    var name: String
    var gender: Character
    var role: String
    var isFamous: Bool
    var biography: String
}
