//
//  Challenge_03-03-01-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 09.09.24.
//

import SwiftUI

struct Challenge_03_03_01_2: View {
    
    let lehrer = ["Herr Schmitt"]
    
    @State private var schueler = ["Max Mustermann",
                                   "Beate Beispiel",
                                   "Donner Wetter",
                                   "Paul Prototype",
                                   "Eva Exemplar",
                                   "Felix Versuch",
                                   "Hans Zimmer",
                                   "Klara Fall",
                                   "Ernst Haft",
                                   "Hella Wahnsinn"]
    
    var body: some View {
        
        List{
            Section("Lehrer \(Image(systemName: "person.fill" ))") {
                ForEach(lehrer, id: \.self) { lehrerName in
                    Text(lehrerName)
                } //forEach
            } //section
            
            Section("Schüler \(Image(systemName: "person.2.fill" ))") {
                ForEach(schueler, id: \.self) { schuelerName in
                    Text(schuelerName)
                        .swipeActions(edge: .trailing) {
                            
                            Button("Löschen", role: .destructive) {
                                if let index = schueler.firstIndex(of: schuelerName) {
                                    schueler.remove(at: index)
                                }
                            }
                        }
                } //forEach
            } //section
        } // liste
        Text("Listeninhalt").font(.title3).underline()
        ForEach(schueler, id: \.self) { name in
            Text(name)
        }
    } //View
}// struct




#Preview {
    Challenge_03_03_01_2()
}
