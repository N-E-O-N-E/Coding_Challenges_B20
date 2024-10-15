//
//  User.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 16.09.24.
//

import Foundation

struct User: Identifiable {
    
    var id: UUID
    var username: String
    var gender: Character
    var email: String
    
}
