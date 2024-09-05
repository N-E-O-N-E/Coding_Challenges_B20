//
//  Diagramme.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 05.09.24.
//

import SwiftUI
import Charts

struct ChartItem: View {
    
    @State var carTypes = ["Audi" : 3, "BMW" : 2, "Opel" : 5]
    
    var body: some View {
        VStack {
            
            Chart {
                
                ForEach(carTypes.keys.sorted(), id: \.self) { type in
                    BarMark(
                        x: .value("Marke", type),
                        y: .value("Menge", carTypes[type]!)
                    )
                }
                
                
            }
            
            Button("Zufällig") {
                carTypes["Audi"] = (0...100).randomElement()
                carTypes["BMW"] = (0...100).randomElement()
                carTypes["Opel"] = (0...100).randomElement()
            }
            .buttonStyle(.borderedProminent)
            
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.yellow)
        .cornerRadius(10)
        
        Spacer()
    }
}

#Preview {
    ChartItem()
}
