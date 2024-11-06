//
//  03_10_03_1.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 06.11.24.
//

import SwiftUI

struct _3_10_03_1: View {
    
    @State private var buttonToggle = false
    var body: some View {
        
        VStack {
            Text("Start the engine to fly...")
                .font(.headline)
                .foregroundStyle(.black)
                .padding(20)
            
            Button(buttonToggle ? "Stop" : "Start", systemImage: "fan.fill") {
                buttonToggle.toggle()
                
            }
            .frame(width: 250 ,height: 90)
            .background(buttonToggle ? Color.red : Color.black)
            .foregroundStyle(.white)
            .font(.title2)
            .scaleEffect(2)
            .symbolEffect(.rotate, isActive: buttonToggle)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 10)
            
        }.padding()
    }
}

#Preview {
    _3_10_03_1()
}
