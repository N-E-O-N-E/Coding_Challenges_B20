//
//  CodingChallenges_iOSApp.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 27.08.24.
//

import SwiftUI
import SwiftData

@main
struct CodingChallenges_iOSApp: App {
    var body: some Scene {
        WindowGroup {
            
            ContentView_03_05_03_1()
            
        }.modelContainer(for: [
            Book.self
        ])
    }
}
