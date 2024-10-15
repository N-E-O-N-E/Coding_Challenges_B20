//
//  Challenge_03.03.01-1.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 09.09.24.
//

import SwiftUI


struct Challenge_03_03_01_1: View {
    
    
    let namen = ["Max Mustermann",
                 "Beate Beispiel",
                 "Donner Wetter",
                 "Paul Prototype",
                 "Eva Exemplar",
                 "Felix Versuch",
                 "Hans Zimmer",
                 "Klara Fall",
                 "Ernst Haft",
                 "Hella Wahnsinn"
    ]
    
    
    
    var body: some View {
        
        List(namen, id: \.self) { name in
            HStack {
                Image(systemName: "list.bullet.rectangle.portrait.fill" )
                Text(name)
            }
            
        }
    }
}


#Preview {
    Challenge_03_03_01_1()
}
