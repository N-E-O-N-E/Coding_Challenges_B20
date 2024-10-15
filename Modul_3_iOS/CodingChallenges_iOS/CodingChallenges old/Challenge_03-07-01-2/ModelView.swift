import SwiftUI

@MainActor
class CounterViewModel: ObservableObject {
    @Published var counter: Int = 3400
    @Published var easterEgg: Int = 3
    @Published var eggFoundBool: Bool = false
    
    func increase() {
        counter += 100
    }
    func increaseMax() {
        easterEgg -= 1
        counter += 1000
        counter -= 150
        
        if easterEgg == 0 {
            counter = 0
            eggFoundBool.toggle()
        }
    }
    
    func decrease() {
        counter -= 100
    }
}
