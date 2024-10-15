//
//  Challenge_03_09_02_2_Login.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 15.10.24.
//

import SwiftUI

struct Challenge_03_09_02_2_Login: View {
    @EnvironmentObject private var authViewModel: authViewModel
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
       
        
        NavigationStack {
            VStack {
                TextField("Email-Adresse", text: $email)
                    .textInputAutocapitalization(.never)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                SecureField("Passwort", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
                
                Button("Anmelden") {
                    authViewModel.loginUser(email: email, password: password)
                }
                .buttonStyle(.borderedProminent)
                
                Divider()
                
                Button("Registrieren") {
                    authViewModel.register(email: email, password: password)
                }
                .buttonStyle(.borderedProminent)
                
            }
        }
        
        
        
        
        
    }
}

#Preview {
    Challenge_03_09_02_2_Login()
        .environmentObject(authViewModel())
}
