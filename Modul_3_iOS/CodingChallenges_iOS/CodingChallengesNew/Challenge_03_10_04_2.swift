//
//  Challenge_03_10_04_1.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 07.11.24.
//

import SwiftUI

struct Challenge_03_10_04_2: View {
    
    @State private var liked: Bool = false
    @State private var angle: Angle = .zero
    @GestureState private var scale = 1.0
    
    var body: some View {
        NavigationStack {
            VStack {
                AsyncImage(url: URL(string: "https://thispersondoesnotexist.com/")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(angle)
                        .scaleEffect(scale)
                }
                placeholder: {
                    ProgressView()
                }
                .onTapGesture(count: 1) {
                    withAnimation {
                        liked.toggle()
                    }
                }
                .onTapGesture(count: 2, perform: {
                    angle = .zero
                })
                .gesture(
                    SimultaneousGesture(
                        RotateGesture()
                            .onChanged({ value in
                                angle = value.rotation
                            }),
                        MagnifyGesture()
                            .updating($scale) { value, gestureState, transaction in
                                gestureState = value.magnification
                            }
                    )
                ) // gestureEnd
                .cornerRadius(10)
                .shadow(color: liked ? .pink : .clear, radius: 10)
                .padding()
                
                Image(systemName: liked ? "heart.fill" : "heart")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                    .animation(.easeInOut, value: liked)
                    .scaleEffect(liked ? 1.3 : 1.0)
                
                Spacer()
                    .navigationTitle("INSCHDAGRAMM")
            }
            .padding()
        }
    }
}

#Preview {
    Challenge_03_10_04_2()
}
