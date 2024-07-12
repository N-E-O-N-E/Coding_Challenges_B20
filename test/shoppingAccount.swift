//
//  shoppingAccount.swift
//  test
//
//  Created by Markus Wirtz on 12.07.24.
//

import Foundation

struct ShoppingAccount {
    
    private var guthaben: Double
    var accountStatus: AccountStatus
    static var accountCounter: Int = 0
    
    init(guthaben: Double, accountStatus: AccountStatus) {
        self.guthaben = guthaben
        self.accountStatus = accountStatus
    }
}

