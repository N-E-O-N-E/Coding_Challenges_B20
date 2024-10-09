

import SwiftUI

struct OrderAddView: View {
    
    @ObservedObject var orderViewModel: OrderViewModel
    
    @Binding var isPresenting: Bool
    @State var amount: Int = 1
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Bestellung hinzufügen")
                .font(.headline)
            
            Stepper("Menge: \(amount)", value: $amount)
                .frame(width: 220)
            
            Button("Jetzt hinzufügen") {
                orderViewModel.addOrders(amount)
                isPresenting = false
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(.capsule)
            .bold()
        }
        .padding()
    }
}
