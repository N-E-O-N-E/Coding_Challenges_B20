//
//  CodingChallengesNewApp.swift
//  CodingChallengesNew
//
//  Created by Markus Wirtz on 15.10.24.
//

import SwiftUI
import Firebase

@main
struct CodingChallengesNewApp: App {
    
//    init() {
//        FirebaseConfiguration.shared.setLoggerLevel(.min)
//        FirebaseApp.configure()
//    }
    
    var body: some Scene {
        WindowGroup {
//            if authViewModel().isUserLoggedIn {
//                Challenge_03_09_02_2_View()
//            } else {
//                Challenge_03_09_02_2_Login()
//            }
            NoteView()
        }
        
//        .environmentObject(authViewModel())
        }
    }

