//
//  CodingChalenge_03.03.2-1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 10.09.24.
//

import SwiftUI

struct CodingChalenge_03_03_2_1: View {
    
    @State private var alert = false
    
    var body: some View {
        
        VStack{
            
            Image(systemName: "dog.fill")
            
            
            Button("Löschen") {
                alert = true
            }.alert("Bild löschen", isPresented: $alert) {
                Button("Löschen", role: .destructive) {
                    
                }
            } message: {
                Text("Willst du den Hund wirklich löschen?")
            }
            
            
        }
    }
}

#Preview {
    CodingChalenge_03_03_2_1()
}
