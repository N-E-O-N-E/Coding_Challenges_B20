//
//  Challenge_03.02.03-1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 04.09.24.
//

import SwiftUI

struct Challenge_03_02_03_1: View {
    
    @State private var selKategorie: String = ""
    let kategorien = ["Arbeit", "Persönlich", "Einkaufen", "Fitness", "Hobby"]

    var body: some View {
        
        Picker("Kategorien", selection: $selKategorie) {
            ForEach(kategorien, id: \.self) { pic in
                Text(pic)
            }
        }
        .pickerStyle(.inline)
        .frame(height: 100)
        .background(.teal)
        .cornerRadius(20)
        .padding()
        
        
    }
}

#Preview {
    Challenge_03_02_03_1()
}
