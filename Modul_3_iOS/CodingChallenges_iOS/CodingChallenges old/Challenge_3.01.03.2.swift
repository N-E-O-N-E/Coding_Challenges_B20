//
//  Challenge_3.01.03.2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 28.08.24.
//

import SwiftUI

struct Challenge_3_01_03_2: View {
    var body: some View {
        
        Button {
            print("Huhu ich wurde gedrückt")
        } label: {
            Text("Klicke hier...")
        }
        
        Button(action: {
            print("Huhu ich wurde gedrückt")
        }, label: {
            Text("Klicke hier...")
        })
        
        
    }
}

#Preview {
    Challenge_3_01_03_2()
}


