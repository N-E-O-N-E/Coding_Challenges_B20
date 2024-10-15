//
//  Challenge_03-06-03-1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 02.10.24.
//

import SwiftUI

struct Challenge_03_06_03_1: View {
    
    @State private var countdown = 10
    @State private var disarmed = false
    @State private var seconds = 1.0
    
    var body: some View {
        ZStack {
            HStack{
                Image(systemName: "cable.coaxial")
                    .resizable()
                    .foregroundStyle(.green)
                    .frame(width: 100, height: 100)
                Spacer()
                Image(systemName: "cable.coaxial")
                    .resizable()
                    .scaleEffect(x: 1, y: -1)
                    .foregroundStyle(.red)
                    .frame(width: 100, height: 100)
            }
            .scaledToFit()
            .padding(.top, 100)
            .padding(17)
            HStack{
                Button("Cut"){disarmed.toggle()}
                Spacer()
                Button("Cut"){seconds = 0.2}
            }
            .buttonStyle(BorderedProminentButtonStyle())
            .padding()
            .padding(.top, 170)
            VStack{
                Text(countdown > 0 ? "💣" : "💥")
                    .font(.system(size: 200))
                    .padding(.leading,22)
                Text(countdown.description)
                    .font(.system(size: 40))
            }
        }
        .task {
            await startCounter()
        }
    }
    
    func startCounter() async {
        while countdown > 0 {
            countdown -= 1
            
            if disarmed {
                break
            }

            do {
                try await Task.sleep(for: .seconds(seconds))
                
            } catch {
                
                print("Fehler")
            }
            
        }//endWhile
    }
}

#Preview {
    Challenge_03_06_03_1()
}
