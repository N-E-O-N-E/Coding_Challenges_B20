//
//  ViewModel.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 09.10.24.
//

import SwiftUI

struct Challenge_03_07_02_1: View {
    
    @StateObject private var orderViewModel = OrderViewModel()
    
    @State private var isPresentingOrderSheet = false
    
    var body: some View {
        VStack(spacing: 20) {

            Image("coffee")
                .resizable()
                .scaledToFit()
                .opacity(0.8)
                .padding()

            Text("Bestellungen:  \(orderViewModel.totalOrders)")
                .font(.title)
                .bold()
                .padding()
                .background(Color.white)
            
            Spacer()
            
            Button("Bestellung hinzufügen") {
                isPresentingOrderSheet = true
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(.capsule)
            .bold()
            
            CheckOutView()
                .environmentObject(orderViewModel)
        }
        .sheet(isPresented: $isPresentingOrderSheet) {
            OrderAddView(orderViewModel: orderViewModel, isPresenting: $isPresentingOrderSheet)
        }
    }
}



#Preview {
    Challenge_03_07_02_1()
}
