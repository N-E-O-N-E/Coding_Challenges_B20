//
//  ContentView.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 18.09.24.
//

import SwiftUI
import SwiftData

let books = [
    Book(title: "Harry Potter and the Philosopher's Stone"),
    Book(title: "The Lord of the Rings"),
    Book(title: "To Kill a Mockingbird"),
    Book(title: "1984"),
    Book(title: "Pride and Prejudice"),
    Book(title: "The Great Gatsby"),
    Book(title: "Moby Dick"),
    Book(title: "War and Peace"),
    Book(title: "The Catcher in the Rye"),
    Book(title: "Jane Eyre")
]

struct ContentView_03_05_03_1: View {
    
    @Environment(\.modelContext) var context
    
    @Query(sort: \Book.title) var myBooks: [Book]
    
    @Query(
        filter: #Predicate<Book> { book in
            book.title.contains("Harry") || book.title.contains("Moby") || book.title.contains("Kill") 
        },
        sort: \Book.title) var myBooksFilter: [Book]
    
    var body: some View {
        VStack {
            Button("Bücher einfügen"){
                for book in books {
                    context.insert(book)
                }
            }
            List {
                Section("Alle Bücher") {
                    ForEach(myBooks) { book in
                        Text(book.title)
                    }
                }.onAppear(){
                    do{
                        try context.delete(model: Book.self)
                    } catch {
                        
                    }
                    
                }
                Section("Alle Bücher mit dem Wort 'Harry'") {
                    ForEach(myBooksFilter) { book in
                        Text(book.title)
                    }
                }.onAppear(){
                    do{
                        try context.delete(model: Book.self)
                    } catch {
                        
                    }
                    
                }
            }
        }
    }
}


#Preview {
    ContentView_03_05_03_1()
        .modelContainer(for: [
            Book.self
        ])
}
