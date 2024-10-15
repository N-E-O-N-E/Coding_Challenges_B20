//
//  ContentView.swift
//  CodingChallenge_1
//
//  Created by Markus Wirtz on 26.08.24.
//

import SwiftUI

struct ContentView_30101: View {
    var body: some View {
        VStack {
            Image(systemName: "mail")
                .imageScale(.large)
                .foregroundStyle(.pink)
                .onAppear()
                
            Text("\nSie haben Post!")
            
            
        }
        
        .padding()
        
        HStack {
            Button("Button1") {
                
            }
            Button("Button2") {
                
            }
            Button("Button3") {
                
            }
        }
        .padding(20)

        
    }
}

#Preview {
    ContentView_30101()
}
