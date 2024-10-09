



import SwiftUI

@MainActor
class OrderViewModel: ObservableObject {

    @Published var totalOrders: Int = 0
    
    func addOrders(_ amount: Int) {
        totalOrders += amount
    }
    
}



