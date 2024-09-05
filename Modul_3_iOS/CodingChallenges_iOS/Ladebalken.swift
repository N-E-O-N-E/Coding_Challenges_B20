//
//  Challenge_03.02.04-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 05.09.24.
//

import SwiftUI

struct Ladebalken: View {
    @State private var ladeMax = 20.0
    
    var body: some View {
       
        VStack {
            
            Text("Ladebalken").font(.title)
                .padding()
            Text("\(String(format: "%.0f", ladeMax)) %").font(.title)
                .padding()
            
            Stepper("Ladebalken füllen", value: $ladeMax, step: 20.0)
                .padding()
            
            Gauge(value: ladeMax, in: 0...100, label: {
                Text("\(String(format: "%.0f", ladeMax)) %").font(.caption)
            }).padding()
                .gaugeStyle(.accessoryCircular)
            
            Gauge(value: ladeMax, in: 0...100, label: {
                Text("Laden")
            }).padding()
                .gaugeStyle(.accessoryCircularCapacity)
            
            Gauge(value: ladeMax, in: 0...100, label: {
                Text("Ladefortschritt")
            }).padding()
                .gaugeStyle(.accessoryLinear)
            
            Gauge(value: ladeMax, in: 0...100, label: {
                Text("Ladefortschritt")
            }).padding()
                .gaugeStyle(.accessoryLinearCapacity)
            
            Gauge(value: ladeMax, in: 0...100, label: {
                Text("Ladefortschritt")
            }).padding()
                .gaugeStyle(.linearCapacity)
            
            ProgressView("Fortschritt")
                .progressViewStyle(.circular)
                .padding()
            
            Spacer()
        }
    }
}

#Preview {
    Ladebalken()
}
