//: [Previous](@previous)

import Foundation
import XCTest

//Given two int values, return their sum. Unless the two values are the same, then return double their sum.

func sumDouble(first: Int, second: Int) -> Int {
    if first == second {
        return (first + second) * 2
    } else {
        return first + second
    }
}

XCTAssert(sumDouble(first: 1, second: 2) == 3)
XCTAssert(sumDouble(first: 3, second: 2) == 5)
XCTAssert(sumDouble(first: 2, second: 2) == 8)
