//
//  Chalenge_03.05.01-1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 16.09.24.
//

import SwiftUI

struct Chalenge_03_05_01_1: View {
    
    @AppStorage("NachtmodusIsOn") private var isOn: Bool = false
    
    var body: some View {
            
            VStack {
                
                Toggle("Nachtmodus", isOn: $isOn)
                    .frame(width: 250, height: 40)
                    .padding(10)
                    .foregroundColor(isOn ? .white : .black)
                    .background(isOn ? Color.black : Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    
            }
        
    }
    
}

#Preview {
    Chalenge_03_05_01_1()
}
