//: [Previous](@previous)

import Foundation
import XCTest

//Given 2 int values, return true if one is negative and one is positive. Except if the parameter "negative" is true, then return true only if both are negative.

func posNeg(firstValue: Int, secondValue: Int, negative: Bool) -> Bool {
    if negative {
        return firstValue < 0 && secondValue < 0
    } else {
    return (firstValue * secondValue) < 0
    }
}


XCTAssert(posNeg(firstValue: -4, secondValue: -5, negative: true)) // → true
XCTAssert(!posNeg(firstValue: 4, secondValue: -5, negative: true)) // → false
XCTAssert(!posNeg(firstValue: 4, secondValue: 5, negative: true)) // → false
XCTAssert(posNeg(firstValue: 1, secondValue: -1, negative: false)) // → true
XCTAssert(!posNeg(firstValue: 4, secondValue: 5, negative: false)) // → false
XCTAssert(!posNeg(firstValue: -5, secondValue: -10, negative: false)) // → false

