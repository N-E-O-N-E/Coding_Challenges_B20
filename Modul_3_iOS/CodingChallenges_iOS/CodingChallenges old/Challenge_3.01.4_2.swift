//
//  Challenge_3.01.4_2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 29.08.24.
//

import SwiftUI

struct Challenge_3_01_4_2: View {
    var body: some View {
        
        Button(action: {
            print("Newsletter abonniert!")
            
        }, label: {
            Text("Abonnieren")
                .foregroundStyle(.white)
        })
        .padding()
        .background(.black)
        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
        
        
        
    }
}

#Preview {
    Challenge_3_01_4_2()
}
