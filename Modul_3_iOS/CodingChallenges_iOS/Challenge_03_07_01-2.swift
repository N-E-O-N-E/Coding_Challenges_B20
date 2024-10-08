import SwiftUI

// ViewModel
@MainActor
class CounterViewModel: ObservableObject {
    @Published var counter: Int = 3400
    
    func increase() {
        counter += 100
    }
    
    func decrease() {
        counter -= 100
    }
}

// View
struct Challenge_03_07_01_2: View {
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some View {
        
        Text("Kontostand").font(.title3).bold().padding(10)
        Text("\(viewModel.counter) EUR").font(.title).padding(40)
        
        HStack {
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
}

#Preview {
    Challenge_03_07_01_2()
}
