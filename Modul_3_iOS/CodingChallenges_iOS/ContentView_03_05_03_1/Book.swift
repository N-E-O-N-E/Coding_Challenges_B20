//
//  Book.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 18.09.24.
//

import SwiftUI
import SwiftData

@Model
class Book {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}

