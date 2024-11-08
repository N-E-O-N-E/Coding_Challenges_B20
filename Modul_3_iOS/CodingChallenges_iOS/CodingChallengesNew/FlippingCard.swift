//
//  ToastTest.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 08.11.24.
//

import SwiftUI

struct FlippingCard: View {
    @State private var flip1 = false
    @State private var flip2 = false
    @State private var rotationAngle: Double = 0
    
    func rotating() async {
        for _ in 0...360 {
            rotationAngle += 1
            try? await Task.sleep(nanoseconds: 1_000_000)
        }
        try? await Task.sleep(nanoseconds: 3000 * 1_000_000)
        flip2.toggle()
    }
    
    var body: some View {
        VStack {
            Button("Slide-Benachrichtigung") {
                withAnimation(.easeInOut(duration: 0.5)) {
                    flip1 = true
                    
                } completion: {
                    sleep(1)
                    withAnimation(.easeInOut(duration: 0.5)) {
                        flip1 = false
                    }
                }
            }
        }
        .overlay( flip1 ?
                  Text("Das ist eine Benachrichtigung welche automatisch wieder verschwindet.")
            .padding()
            .background(Color.black.opacity(0.8))
            .foregroundColor(.white)
            .cornerRadius(8)
            .transition(.asymmetric(
                insertion: .slide,
                removal: .slide
            ))
                .padding(.bottom, 50)
                .frame(width: 300, height: 150)
                  
                  : nil, alignment: .bottom )
        
        
        VStack {
            Button("Dreh-Benachrichtigung") {
                withAnimation() {
                    flip2 = true
                    Task {
                        await rotating()
                    }
                }
            }
        }
        .overlay( flip2 ?
                  Text("Das ist eine Benachrichtigung welche automatisch wieder verschwindet.")
            .padding()
            .background(Color.black.opacity(0.8))
            .foregroundColor(.white)
            .cornerRadius(8)
            .rotation3DEffect(
                .degrees(flip2 ? rotationAngle : 0), axis: (x: 0, y: 1, z: 0))
                .padding(.top, 50)
                .frame(width: 300, height: 150)
                .opacity(flip2 ? 1 : 0)
                  
                  : nil, alignment: .top )
    }
}

#Preview {
    FlippingCard()
}
