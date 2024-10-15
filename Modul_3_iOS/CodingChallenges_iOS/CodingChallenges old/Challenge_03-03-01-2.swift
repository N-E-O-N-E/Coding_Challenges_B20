//
//  Challenge_03-03-01-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 09.09.24.
//

import SwiftUI

struct Challenge_03_03_01_2: View {
    
    struct person: Identifiable {
        
        var id: UUID = UUID()
        var name: String = ""
        var position: String = ""
    }
    
    @State private var personen: [person] = [
        .init(id: UUID(), name: "Herr Schmitt", position: "Lehrer"),
        .init(id: UUID(), name: "Max", position: "Schüler"),
        .init(id: UUID(), name: "Isabell", position: "Schüler"),
        .init(id: UUID(), name: "Julia", position: "Schüler"),
        .init(id: UUID(), name: "Paul", position: "Schüler"),
        .init(id: UUID(), name: "Eva", position: "Schüler"),
        .init(id: UUID(), name: "Felix", position: "Schüler"),
        .init(id: UUID(), name: "Klara", position: "Schüler"),
        .init(id: UUID(), name: "Patrick", position: "Schüler"),
        .init(id: UUID(), name: "Martin", position: "Schüler"),
        
    ]
    
    var body: some View {
        
        List{
            Section("Lehrer \(Image(systemName: "person.fill" ))") {
                ForEach(personen.filter { $0.position == "Lehrer"}) { person in
                    Text(person.name)
                    
                }
            }
            Section("Schüler \(Image(systemName: "person.2.fill" ))") {
                ForEach(personen.filter {$0.position == "Schüler"}) { person in
                    Text(person.name)
                        .swipeActions(edge: .trailing) {
                            Button("Löschen", role: .destructive) {
                                personen.removeAll(where: { $0.id == person.id})
                                }
                            }
                        }
                }
            }
        }
    }

#Preview {
    Challenge_03_03_01_2()
}
