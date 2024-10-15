//
//  Challenge_03.03.3-1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 11.09.24.
//

import SwiftUI

struct view1: View {
    var body: some View {
        HStack {
            Text("Inhalt View 1")
        }
        
        
    }
}

struct view2: View {
    var body: some View {
        Text("Inhalt View 2")
    }
}


struct Challenge_03_03_3_1: View {
    var body: some View {
        
        TabView {
            
            view1()
                .tabItem {
                    Label("View 1", systemImage: "house")
                }
            view2()
                .tabItem {
                    Label("View 2", systemImage: "house")
                }
            
        }
        
    }
}

#Preview {
    Challenge_03_03_3_1()
}
