//
//  iOSMoney.swift
//  iOSMoney
//
//  Created by Christopher Williams on 10/15/15.
//  Copyright © 2015 Christopher Williams. All rights reserved.
//

import Foundation

class iOSMoney {
    
    var cents: Int
    // TODO: Need an enum to define currency codes
    
    init(cents: Int) {
        self.cents = cents
    }
    
    func format() -> String {
        // TODO: Display in dollar amount
        return "$" + String(cents / 100) + "." + String(cents % 100)
    }
}
