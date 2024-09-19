//
//  Challenge_03_05_03_1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 19.09.24.
//
import SwiftUI
import SwiftData

@Model
class Animal {
    var name: String
    
    var shelter: Shelter
    
    init(name: String, shelter: Shelter) {
        self.name = name
        self.shelter = shelter
    }
}
@Model
class Shelter {
    
    
    var city: String
    
    @Relationship(inverse: \Animal.shelter)
    var animals: [Animal]
    
    init(city: String, animals: [Animal]) {
        self.city = city
        self.animals = animals
    }
}


struct Challenge_03_05_03_1: View {
    @Environment(\.modelContext) var context
    @Query var animals: [Animal]
    
    var body: some View {
        VStack {
            Button("Hinzufügen") {
                
                let newShelter = Shelter(city: "Kaiserslautern", animals: [])
                let newAnimal = Animal(name: "Hund", shelter: newShelter)
               
                context.insert(newAnimal)
                
            }
            List {
                ForEach(animals) { animal in
                    Text("\(animal.name) in Tierheim: \(animal.shelter.city)")
                }
            }
        }
    }
}
#Preview {
    Challenge_03_05_03_1()
        .modelContainer(for: Animal.self)
}
