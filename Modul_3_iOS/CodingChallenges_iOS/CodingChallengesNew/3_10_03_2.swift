//
//  3_10_03_2.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 06.11.24.
//

import SwiftUI

struct _3_10_03_2: View {
    @State private var buttonToggle = false
    @State private var offsexX = 0
    @State private var offsexY = 0
    @State private var scale: Double = 1.0
    @State private var timer: Timer?
    
    func fly() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { _ in
            withAnimation(.linear(duration: 5)) {
                if buttonToggle {
                    offsexX += Int(Range(1...9).randomElement()!)
                    offsexY -= Int(Range(1...6).randomElement()!)
                    scale += 0.03
                }
            } completion: {
                offsexX = 0
                offsexY = 0
                scale = 1.0
            }
        })
    }
    
    var body: some View {
        
        VStack {
            HStack {
                
                Image(systemName: buttonToggle ? "airplane.departure" : "airplane")
                    .scaleEffect(scale)
                    .offset(x: CGFloat(offsexX), y: CGFloat(offsexY))
                    
                Text("Start the engine")
                    .font(.headline)
                    .foregroundStyle(.black)
                    .padding(20)
            }
            
            Button(buttonToggle ? "Stop" : "Start", systemImage: "fan.fill") {
                buttonToggle.toggle()
                fly()
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
    _3_10_03_2()
}
