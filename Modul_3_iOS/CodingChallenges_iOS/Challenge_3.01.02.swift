
import SwiftUI

struct ContentView_30102: View {
    
    let kuchen = [
        Cake(icon: "🍰", name: "Käsekuchen"),
        Cake(icon: "🍰", name: "Marmorkuchen"),
        Cake(icon: "🍰", name: "Apfelkuchen")]
    
    var body: some View {
        
        VStack {
            
//            Text("Spezialkaffees des Tages")
//                .bold()
//                .foregroundColor(.pink)
//                .font(.title)
//    
//            Divider()
//            
//            Text("Frappuchino Latte ☕️")
//            Text("Cappuchino Choco ☕️")
//            Text("Green Tea Matcha 🍵")
//            
//            Divider()
//            
            
            Text("🧑‍🍳 KUCHEN 🧑‍🍳")
                .bold()
                .foregroundColor(.green)
                .font(.title)
    
            Divider()
            
            CakeView(kuchen: kuchen[0])
            CakeView(kuchen: kuchen[1])
            CakeView(kuchen: kuchen[2])
        
        }
        
        
    }
}

#Preview {
    ContentView_30102()
}
