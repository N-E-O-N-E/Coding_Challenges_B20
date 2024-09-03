//
//  Challenge_03.02.02-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 03.09.24.
//

import SwiftUI

struct Challenge_03_02_02_2: View {
    
    let neuePerson1 = [
        WhatsUpp(id: UUID(), vorname: "Max", nachname: "Müller", eMail: "max@web.de", telefonNr: "0151 9812562"),
        WhatsUpp(id: UUID(), vorname: "Julius", nachname: "Hauser", eMail: "max@web.de", telefonNr: "0151 9812562"),
        WhatsUpp(id: UUID(), vorname: "Harry", nachname: "Weber", eMail: "max@web.de", telefonNr: "0151 9812562"),
        WhatsUpp(id: UUID(), vorname: "Daniel", nachname: "Hoffmann", eMail: "max@web.de", telefonNr: "0151 9812562"),
    ]
    
    var body: some View {
        ScrollView {
        
            VStack(alignment: .leading) {
            
                HStack{
                    let anzahl = neuePerson1.count
                    
                    VStack(alignment: .trailing){
                        
                        ForEach(0..<anzahl) { _ in
                            Text("Vorname: ")
                            Text("Nachname: ")
                            Text("E-Mail: ")
                            Text("Telefon-Nr: ")
                            Divider()
                        }
                    }
                    
                    VStack(alignment: .leading){
                        
                        ForEach(neuePerson1) { person in
                            
                            Text(person.vorname)
                            Text(person.nachname)
                            Text(person.eMail)
                            Text(person.telefonNr)
                            Divider()
                        }
                    }
                }
            }
        }.background(Color(.cyan)).cornerRadius(20).foregroundColor(.white).font(.title3).padding().shadow(radius: 3)
        
        
        
        
        
        
        
    }
}

#Preview {
    Challenge_03_02_02_2()
}
