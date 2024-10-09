//
//  CheckoutView.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 09.10.24.
//

import SwiftUI

struct CheckOutView: View {
    
    @EnvironmentObject var orderViewModel: OrderViewModel
    @State var displayCheckout = false
    
    var body: some View {
        VStack{
            Button("Rechnung erstellen") {
                displayCheckout.toggle()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(.capsule)
            .bold()
            if displayCheckout {
                VStack{
                    Text("Rechnung wird erstellt...")
                    Divider()
                    Text("Abgerechnete Gesamtbestellungen:")
                    Divider()
                    Text("\(orderViewModel.totalOrders)")
                        .font(.title)
                        .bold()
                }
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.gray)
            }
        }
    }
}

#Preview {
    CheckOutView()
}
