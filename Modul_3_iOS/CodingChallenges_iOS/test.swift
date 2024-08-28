//
//  test.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 28.08.24.
//

import SwiftUI


struct Book {
    let titel: String
    let autor: String
    let bewertung: String
    
}


let buch1 = Book(titel: "Harry Potter und der Stein der Weisen", autor: "von JK Rowling", bewertung: "5 Sterne")


struct test: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(buch1.titel)
                .font(.headline)
                .fixedSize(horizontal: false, vertical: false)
            Divider()
            
            HStack {
                
                Text(buch1.autor)
                Divider()
                Text(buch1.bewertung)
                
            }
        } 
        .fixedSize(horizontal: false, vertical: true)
        
        .padding()
        
        .background(.mint)
        .cornerRadius(15)
        .padding()
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
        
    }
}

#Preview {
    test()
}
