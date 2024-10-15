//
//  Challenge_03.03.02-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 10.09.24.
//

import SwiftUI

struct Haustier: Identifiable {
    var id: UUID
    var name: String?
}

struct Challenge_03_03_02_2: View {
    
    @State private var haustier = ""
    @State private var showSheet = false
    @State private var showAlert = false
    
    var body: some View {
        
        Button("Haustier hinzufügen") {
            showSheet = true
        }
        .padding(10)
        .background(.blue)
        .clipShape(.capsule)
        .foregroundColor(.white)
        .sheet(isPresented: $showSheet) {
           
            Rectangle().frame(width: 100, height: 6).clipShape(.capsule).padding()
            
                Form{
                    
                    Section("Name des Haustieres") {
                        TextField("Name eingeben", text: $haustier)
                        Text("Der Name ist: \(haustier)").font(.caption)
                    }
                    
                    Section("") {
                        Button("Speichern") {
                            showAlert = true
                            // Speichere Daten
                            
                        }.alert("Erfolgreich", isPresented: $showAlert) {
                            Button("OK") {
                                showSheet = false
                            }
                        } message: {
                            Text("Die Daten wurden gespeichert!")
                        }

                        
                        Button("Abbrechen", role: .cancel) {
                        showSheet = false
                        }.foregroundColor(.red)
                           
                    }
                }
        }
    }
}

#Preview {
    Challenge_03_03_02_2()
}

/*
 
 
 Der Name des Haustiers soll in einem TextField eingegeben werden
 Ein Button soll "Speichern" anzeigen (muss nichts ausführen)
 Ein Button soll "Abbrechen" anzeigen (muss nichts ausführen)
 Tipp: verpacke das Eingabefeld und die Buttons jeweils in eine Section. Einer Section kann auch ein Titel als Parameter übergeben werden
 */
