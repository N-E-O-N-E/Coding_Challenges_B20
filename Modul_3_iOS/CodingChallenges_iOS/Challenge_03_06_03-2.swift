//
//  Challenge_03_06_03-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 02.10.24.
//

import SwiftUI

struct Challenge_03_06_03_2: View {
    
    @State private var image = "https://picsum.photos/500/500"
    
    
    
    var body: some View {
        
        Text("Async Bild...")
        
        Button {
            //image = "https://picsum.photos/500/500"
            image = "https://picsum.photos/\(Int.random(in: 500...600))/\(Int.random(in: 500...600))"
        } label: {
            AsyncImage(url: URL(string: image)) { image in
                image
                    .resizable()
                    .frame(width: 260, height: 260)
                    .clipShape(.rect(cornerRadius: 8))
                
            } placeholder: {
                ProgressView()
            }
        }
        
        
    }
}

#Preview {
    Challenge_03_06_03_2()
}
