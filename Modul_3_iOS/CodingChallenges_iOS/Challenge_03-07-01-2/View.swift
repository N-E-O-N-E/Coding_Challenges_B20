//
//  View.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 08.10.24.
//

import SwiftUI

struct Challenge_03_07_01_2: View {
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some View {
        Image(systemName: viewModel.eggFoundBool ? "questionmark.diamond.fill.ar" :"eurosign.bank.building.fill").font(.system(size: 100))
            .onLongPressGesture {
                viewModel.increaseMax()
            }
        Text(viewModel.eggFoundBool ? "Bankrupt! 🥊" :"Kontostand").font(.title).bold().padding(10)
        Text("\(viewModel.counter) EUR").font(.title).padding(40)
        HStack {
            Button {
                viewModel.increase()
            } label: {
                Text("Einzahlung")
            }.buttonStyle(.borderedProminent).tint(.green)
                
            
            Button {
                viewModel.decrease()
            } label: {
                Text("Auszahlung")
            }.buttonStyle(.borderedProminent).tint(.orange)
        }
    }
}

#Preview {
    Challenge_03_07_01_2()
}
