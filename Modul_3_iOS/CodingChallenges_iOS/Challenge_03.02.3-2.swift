//
//  Challenge_03.02.3-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 04.09.24.
//

import SwiftUI

struct Challenge_03_02_3_2: View {
    
    @State private var selTemp: TemperaturUnit = .celsius
    
    enum TemperaturUnit: String, Identifiable, CaseIterable {
        case celsius
        case fahrenheit
        case kelvin
        
        var id: String {rawValue}
    }
    
    var body: some View {
        Picker("Temperaturauswahl", selection: $selTemp) {
            ForEach(TemperaturUnit.allCases) { item in
                Text(item.rawValue).tag(item)
            }
        }.pickerStyle(.wheel)
    }
}

#Preview {
    Challenge_03_02_3_2()
}
