//
//  Challenge_03_09_01_2_ViewModel.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 15.10.24.
//

import Firebase
import FirebaseAuth
import Foundation

@MainActor
class authViewModel: ObservableObject {
    
    @Published var benuzer: User?

    var isUserLoggedIn: Bool {
        self.benuzer != nil
    }

    private let auth = Auth.auth()

    
    func register(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { authResult, error in
            if let error {
                print("Fehler beim Anmelden: \(error)")
                return
            }

            guard let authResult, let email = authResult.user.email else { return }

            print("Benutzer erfolgreich registriert mit der Id: \(authResult.user.uid) und Email-Adresse: \(email)")
            self.benuzer = authResult.user
        }
    }
    
    func loginUser(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { authResult, error in
            if let error {
                print("Login failed: ", error.localizedDescription)
                return
            }
            guard let authResult, let email = authResult.user.email else { return }
            
            print("User with email '\(email)' is logged in with id ‘\(authResult.user.uid)'")
            self.benuzer = authResult.user
        }
    }
    
    
}

