import SwiftUI

// ViewModel
@MainActor
class CounterViewModel: ObservableObject {
    @Published var counter: Int = 0
    
    func increase() {
        counter += 1
    }
    
    func decrease() {
        counter -= 1
    }
}

// View
struct Challenge_03_07_01_2: View {
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some View {
        
        Button {
            viewModel.increase()
        } label: {
            Text(" + ")
        }.buttonStyle(.borderedProminent)
        
        Button {
            viewModel.decrease()
        } label: {
            Text(" - ")
        }.buttonStyle(.borderedProminent)
    }
}

#Preview {
    Challenge_03_07_01_2()
}
