//
//  Movie.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 16.09.24.
//

import Foundation

struct Movie: Identifiable {
    
    var id: UUID
    var name: String
    var length: Int
    var releaseDate: Date
    var synopsis: String
}
