//
//  Challenge_03.05.02-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 17.09.24.
//

import SwiftUI
import SwiftData

struct Challenge_03_05_02_2: View {
    
    @Environment(\.modelContext) private var kunden
    @Query private var kundenListe: [Kunden]
    
    @State private var textInput: String = ""
    
    var body: some View {
       
        VStack(alignment:.leading) {
            Text("Name eingeben: ")
            TextField("Name", text: $textInput).textFieldStyle(.roundedBorder).textInputAutocapitalization(.sentences)
                .onSubmit {
                    let currentEntry = Kunden(kundenname: textInput, alter: 25, ticketGueltig: true)
                    kunden.insert(currentEntry)
                    textInput = ""
                }
                
               
        }.padding(.horizontal)
            .modelContainer(for: [
                Fahrkarte.self, Kunden.self
            ])
        
        List {
            if kundenListe.isEmpty {
                Text("Keine Einträge!")
            } else {
                ForEach(kundenListe) { kunden in
                    Text(kunden.kundenname)
                }
            }
        }
    }
}

#Preview {
    let previewConfiguration = ModelConfiguration(isStoredInMemoryOnly: true)
    let previewContainer = try! ModelContainer(for: Kunden.self, Fahrkarte.self, configurations: previewConfiguration)
    return Challenge_03_05_02_2()
        .modelContainer(previewContainer)
}
