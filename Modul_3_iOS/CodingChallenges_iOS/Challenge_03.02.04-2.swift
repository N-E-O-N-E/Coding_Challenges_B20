//
//  Challenge_03.02.04-2.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 05.09.24.
//

import SwiftUI

struct Challenge_03_02_04_2: View {
    
    @State private var datum: Date = Date()
    
    var body: some View {
       
        Text("DatePicker Übung").padding().font(.largeTitle).bold()
        
        
        VStack(alignment:.leading) {
            
            
            
            Divider()
            
            DatePicker("Datum auswählen:", selection: $datum, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .padding()
            
            Divider()
            
            Text("Meine Auswahl: \n\n\(datum.formatted(date: .complete, time: .omitted))")
                .padding()
                .font(.title3)
                .foregroundColor(.blue)
            
            //Spacer()
            
        }
    }
}


#Preview {
    Challenge_03_02_04_2()
}
