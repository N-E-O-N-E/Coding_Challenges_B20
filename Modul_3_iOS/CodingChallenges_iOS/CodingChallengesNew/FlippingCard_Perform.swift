//
//  FlippingCardPerform.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 08.11.24.
//

import SwiftUI

struct FlippingCardPerform: View {
    @State private var flip: Bool = false
    
    func backflip() async {
        try? await Task.sleep(for: .seconds(2))
        flip.toggle()
    }
    
    private var rotationAngle: Angle {
        withAnimation {
            flip ? .degrees(0.0) : .degrees(180.0)
        }
    }
    
    var body: some View {
        VStack {
            Button("Dreh-Benachrichtigung") {
                flip.toggle()
                Task {
                    await backflip()
                }
            }
        }
        
        Text("Das ist eine Benachrichtigung welche automatisch wieder verschwindet.")
            .padding()
            .background(Color.black.opacity(0.8))
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding(.top, 50)
            .frame(width: 300, height: 150)
            .opacity(flip ? 1 : 0)
            .rotation3DEffect(rotationAngle, axis: (x: 0, y: 1, z: 0))
            .animation(.linear, value: rotationAngle)
    }
}

#Preview {
    FlippingCardPerform()
}
