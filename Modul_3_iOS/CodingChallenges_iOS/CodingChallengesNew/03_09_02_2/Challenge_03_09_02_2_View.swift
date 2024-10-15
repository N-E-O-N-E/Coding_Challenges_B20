//
//  Challenge_03_09_02_2_View.swift
//  CodingChallenges_iOS
//
//  Created by Markus Wirtz on 15.10.24.
//

import SwiftUI

struct Challenge_03_09_02_2_View: View {
    
    @EnvironmentObject private var authViewModel: authViewModel
    
    var body: some View {
        Text("Herzlich willkommen")
    }
}

#Preview {
    Challenge_03_09_02_2_View()
        .environmentObject(authViewModel())
}
