//
//  iOSMoney.swift
//  version 0.1: Basic USD currency operations and format printing
//
//  Created by Christopher Williams on 10/15/15.
//  Copyright © 2015 Christopher Williams. All rights reserved.
//

import Foundation

// Operation overloading (http://www.raywenderlich.com/80818/operator-overloading-in-swift-tutorial)
func == (this: iOSMoney, other: iOSMoney) -> Bool {
    return this.cents == other.cents
}
func != (this: iOSMoney, other: iOSMoney) -> Bool {
    return this.cents != other.cents
}
func > (this: iOSMoney, other: iOSMoney) -> Bool {
    return this.cents > other.cents
}
func < (this: iOSMoney, other: iOSMoney) -> Bool {
    return this.cents < other.cents
}
func >= (this: iOSMoney, other: iOSMoney) -> Bool {
    return this.cents >= other.cents
}
func <= (this: iOSMoney, other: iOSMoney) -> Bool {
    return this.cents <= other.cents
}
func + (this: iOSMoney, other: iOSMoney) -> iOSMoney {
    return iOSMoney(cents: this.cents + other.cents)
}
func - (this: iOSMoney, other: iOSMoney) -> iOSMoney {
    return iOSMoney(cents: this.cents - other.cents)
}
func * (money: iOSMoney, scalar: Int) -> iOSMoney {
    return iOSMoney(cents: money.cents * scalar)
}
func * (money: iOSMoney, scalar: Double) -> iOSMoney {
    // Rounding approximation
    return iOSMoney(cents: Int(round(Double(money.cents) * scalar)))
}
func * (scalar: Int, money: iOSMoney) -> iOSMoney {
    return iOSMoney(cents: money.cents * scalar)
}
func / (money: iOSMoney, scalar: Int) -> iOSMoney {
    return iOSMoney(cents: money.cents / scalar)
}

class iOSMoney {
    
    var cents: Int
    // TODO: Need an enum to define currency codes
    
    init(cents: Int) {
        self.cents = cents
    }
    
    func format() -> String {
        // TODO: Display in dollar amount
            return "$" + String(cents / 100) + "." + String(format: "%02d", cents % 100)
    }
}
