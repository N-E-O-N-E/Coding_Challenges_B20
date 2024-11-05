//
//  RemindMe_View.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 05.11.24.
//

import SwiftUI

struct RemindMe_View: View {
    
    @StateObject var viewModel = RemindMe_ViewModel()
    
    var body: some View {
        VStack{
            Button(action: {
                viewModel.requestPermission()
            }) {
                HStack(spacing: 24){
                    Image(systemName: "bell")
                        .resizable()
                        .scaledToFit()
                    Text("Werde benachrichtigt")
                        .bold()
                }
            }
            .frame(width: 240, height: 32)
            .padding()
            .background(.pink)
            .foregroundStyle(.white)
            .cornerRadius(24)
            
            Button(action: {
                viewModel.scheduleNotification()
                
            }) {
                HStack(spacing: 24){
                    Image(systemName: "bell.fill")
                        .resizable()
                        .scaledToFit()
                    Text("Geplante Benachrichtigung")
                        .bold()
                }
            }
            .frame(width: 240, height: 32)
            .padding()
            .background(.green)
            .foregroundStyle(.white)
            .cornerRadius(24)
        }
    }
}



#Preview {
    RemindMe_View()
}
