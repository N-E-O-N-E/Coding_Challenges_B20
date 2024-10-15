//  Challenge_03.05.02-1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 17.09.24.

import SwiftUI
import SwiftData

@Model
class Fahrkarte {
    
    var preis: Double
    var kundenname: String
    var gueltigBis: Date
    
    init(preis: Double, kundenname: String, gueltigBis: Date) {
        self.preis = preis; self.kundenname = kundenname; self.gueltigBis = gueltigBis
    }
    
}

@Model
class Kunden {
    
    var kundenname: String
    var alter: Int
    var ticketGueltig: Bool
    
    init(kundenname: String, alter: Int, ticketGueltig: Bool) {
        self.kundenname = kundenname; self.alter = alter; self.ticketGueltig = ticketGueltig
    }
}

struct Challenge_03_05_02_1: View {
    var body: some View {
        
        VStack{
            
            Text("SwiftData Challenge 1")
            Text("\(NSDate())")
        }
            .modelContainer(for: [
                Fahrkarte.self, Kunden.self
            ])
    }
}

#Preview {
    let previewConfiguration = ModelConfiguration(isStoredInMemoryOnly: true)
    let previewContainer = try! ModelContainer(for: Fahrkarte.self, Kunden.self, configurations: previewConfiguration)

    return Challenge_03_05_02_1()
        .modelContainer(previewContainer)
}
