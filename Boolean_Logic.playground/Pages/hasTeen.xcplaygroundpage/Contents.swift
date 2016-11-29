//: [Previous](@previous)

import Foundation
import XCTest

//We'll say that a number is "teen" if it is in the range 13..19 inclusive. Given 3 int values, return true if 1 or more of them are teen.

func hasTeen(first: Int, second: Int, third: Int) -> Bool {
    let ageRange = 13...19
    let ages = [first, second, third]
    for age in ages {
        if ageRange.contains(age) { return true }
    }
    return false
}

XCTAssert(hasTeen(first: 13, second: 20, third: 10)) // → true
XCTAssert(hasTeen(first: 20, second: 19, third: 10)) // → true
XCTAssert(hasTeen(first: 20, second: 10, third: 13)) // → true
XCTAssert(!hasTeen(first: 20, second: 25, third: 35))

