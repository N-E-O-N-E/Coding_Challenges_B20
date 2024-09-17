//
//  Challenge_03.05.01-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 16.09.24.
//

import SwiftUI

struct Challenge_03_05_01_2: View {
    
    @State private var users: [User] = [
        .init(id: UUID(), username: "Max", gender: "m", email: "max@weber.de"),
        .init(id: UUID(), username: "Julia", gender: "w", email: "julia@weber.de")]
    
    @State private var actors: [Actor] = [
        .init(id: UUID(), name: "Hunter", gender: "m", role: "Officer", isFamous: true, biography: "Kurzbeschreibung")]
     
    @State private var movies: [Movie] = [
        .init(id: UUID(), name: "Film 1", length: 60, releaseDate: Date(), synopsis: "Das ist ein Film 1"),
        .init(id: UUID(), name: "Film 2", length: 90, releaseDate: Date(), synopsis: "Das ist ein Film 2"),
        .init(id: UUID(), name: "Film 3", length: 120, releaseDate: Date(), synopsis: "Das ist ein Film 3"),
        .init(id: UUID(), name: "Film 4", length: 85, releaseDate: Date(), synopsis: "Das ist ein Film 4")]
    
    @State private var favorites: [Favorite] = []
    @State private var genres: [MovieGenre] = []
   
    var body: some View {
        
        Button("Favoriten hinzufügen") {
            favorites.append(Favorite(id: UUID(), userId: users[0].id, movieId: movies[0].id))
            favorites.append(Favorite(id: UUID(), userId: users[0].id, movieId: movies[2].id))
        }
        
        List {
            ForEach(favorites) { list in
                Text("Movie ID: \(list.movieId)")
            }
        }.listStyle(.inset)
        
        
        
    }
}

#Preview {
    Challenge_03_05_01_2()
}
