//
//  Challenge_03.03.3-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 11.09.24.
//

import SwiftUI

struct NewsView: View {
    var title: String
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "newspaper")
                .resizable()
                .frame(width: 100, height: 100)
            Text("Letzte Artikel")
                .font(.headline)
            List(1..<10) { _ in
                Text("Breaking News!")
            }
        }.navigationTitle(title)
    }
}



struct ContentViewNews: View {
    var body: some View {
        
        NavigationStack {
            List {
                NavigationLink("News View"){
                    NewsView(title: "News View")
                }.navigationTitle("Willkommen")
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentViewNews()
}
