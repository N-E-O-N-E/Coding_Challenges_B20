//
//  Challenge_3.01.02_Cake.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 27.08.24.
//

import SwiftUI

struct Cake {
    var icon = "🍰"
    var name: String
    
}

struct CakeView: View {
    var kuchen: Cake
    
    var body: some View {
        VStack {
            Text(kuchen.icon)
            Text(kuchen.name)
                .padding()
        }
    }
}


