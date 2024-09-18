//
//  Challenge_03.02.01-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 02.09.24.
//

import SwiftUI
struct ContentView_03_02_01_2: View {
    
    @State private var number: Int = 10
    @State private var feuerwerk = false
    
    var body: some View {
        
        VStack {
            
        CountdownView2(number: $number)
            
            Button(action: {
                number -= 1
                
            }, label: {
                Text("Runterzählen!")
            })
            .padding()
            .bold()
            .background(Color(.blue))
            .foregroundColor(.white)
            .clipShape(.capsule)
            .cornerRadius(5)
            
           Divider()
           
            Text(feuerwerk ? "🧨" : "")
                .padding()
            
            Toggle(isOn: $feuerwerk , label: {
                Text("Zeige das Feuerwerk!")
            }) .padding()
            
        }
    }
}


struct CountdownView2: View {
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
    ContentView_03_02_01_2()
  
})
