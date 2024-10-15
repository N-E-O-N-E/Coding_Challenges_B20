//
//  Challenge_03.02.01-1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 02.09.24.
//

import SwiftUI

struct CountDown: View {
    
    @State private var number: Int = 10
    
    var body: some View {
        
        VStack {
            
        CountdownView(number: $number)
            
            Button(action: {
                number -= 1
                
            }, label: {
                Text("Weiter...")
            })
            .padding()
            .bold()
            .background(Color(.blue))
            .foregroundColor(.white)
            .clipShape(.capsule)
            .cornerRadius(5)
            
        }
    }
}


struct CountdownView: View {
    @Binding var number: Int
    
    var body: some View {
    
        VStack (spacing: 40) {
            Text("Countdown!")
                .font(.title)
            Text(number.description)
                .font(.largeTitle)
                .foregroundStyle(.red)
        }
    }
}

#Preview(body: {
    CountDown()
  
})
