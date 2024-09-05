//
//  Challenge_03.02.04-1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 05.09.24.
//

import SwiftUI

struct Challenge_03_02_04_1: View {
    
    @State private var wasserziel: Double = 5.0
    @State private var wassermenge: Double = 1.0
    @State private var getrWasser: Int = 0
    @State private var passwort: String = ""
    
    var body: some View {
        
        
        VStack {
            
            Text("Wassermenge pro Tag")
                .font(.title)
                .padding()
            
            Text("Wassermenge: \(Int(wassermenge))")
                .font(.title3)
            
            Slider(value: $wassermenge, in: 0...wasserziel)
                .padding()
            
            Divider()
          
            Stepper("Wassermenge ändern", value: $getrWasser, in: 0...Int(wasserziel), step: 1)
                .padding()
            Text("Wassermenge: \(getrWasser)")
                .font(.title3)
            
            Divider()
            
            SecureField("Passwort eingeben: ", text: $passwort)
                .padding()
          
        }
        
        
        
    }
}

#Preview {
    Challenge_03_02_04_1()
}
