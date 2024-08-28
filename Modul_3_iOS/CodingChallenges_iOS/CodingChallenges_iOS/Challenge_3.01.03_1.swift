//
//  Challenge_3.01.03_1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 28.08.24.
//

import SwiftUI

struct Challenge_3_01_03_1: View {
    
    
    var body: some View {
       
       
        VStack {
            
            
            ZStack(alignment: .bottom) {
                Image("maus")
                    .resizable()
                    .frame(width: 200, height: 150)
                    .cornerRadius(20)
                
                Text("Maus")
                    .padding(4)
                    .background(.yellow)
                    .padding(4)
                    .opacity(0.5)
                    
            
            }
            
            ZStack(alignment: .bottom) {
                Image("tastatur")
                    .resizable()
                    .frame(width: 200, height: 150)
                    .cornerRadius(20)
                
                Text("Tastatur")
                    .padding(4)
                    .background(.yellow)
                    .padding(4)
                    .opacity(0.5)
            }
            
            ZStack(alignment: .bottom) {
                Image("monitor")
                    .resizable()
                    .frame(width: 200, height: 150)
                    .cornerRadius(20)
                
                Text("Monitor")
                    .padding(4)
                    .background(.yellow)
                    .padding(4)
                    .opacity(0.5)
            }
            
            ZStack(alignment: .bottom) {
                Image("vrbrille")
                    .resizable()
                    .frame(width: 200, height: 150)
                    .cornerRadius(20)
                
                Text("VR-Brille")
                    .padding(4)
                    .background(.yellow)
                    .padding(4)
                    .opacity(0.5)
            }
            
        }
        
    }
}

#Preview {
    Challenge_3_01_03_1()
}
