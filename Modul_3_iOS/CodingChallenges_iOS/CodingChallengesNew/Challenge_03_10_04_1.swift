//
//  Challenge_03_10_04_1.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 07.11.24.
//

import SwiftUI

struct Challenge_03_10_04_1: View {
    
    @State private var liked: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                AsyncImage(url: URL(string: "https://thispersondoesnotexist.com/")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(liked ? 1.1 : 1.0)
                }
                placeholder: {
                    ProgressView()
                }
                .onTapGesture(count: 2) {
                    withAnimation {
                        liked.toggle()
                    }
                    
                }
                .cornerRadius(10)
                .shadow(color: liked ? .pink : .clear, radius: 10)
                .padding()
                
                Image(systemName: liked ? "heart.fill" : "heart")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                //.animation(.spring, value: liked)
                    .animation(.easeInOut, value: liked)
                    .scaleEffect(liked ? 1.3 : 1.0)
                
                Spacer()
                    .navigationTitle("INSTAGRIMM")
            }
            .padding()
        }
    }
}

#Preview {
    Challenge_03_10_04_1()
}
