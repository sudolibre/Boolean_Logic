//: [Previous](@previous)

import Foundation
import XCTest

//We have a loud talking parrot. The "hour" parameter is the current hour time in the range 0..23. We are in trouble if the parrot is talking and the hour is before 7 or after 20. Return true if we are in trouble.

func parrotTrouble(isTalking: Bool, hour: Int) -> Bool? {
    let hourRange = 0...23
    if !hourRange.contains(hour) {
        print("The supplied hour, \"\(hour)\", is not valid")
        return nil
    }
    return isTalking && (hour < 7 || hour > 20)
}

XCTAssert(parrotTrouble(isTalking: true, hour: 6)!) // → true
XCTAssert(!parrotTrouble(isTalking: true, hour: 7)!) // → false
XCTAssert(!parrotTrouble(isTalking: false, hour: 6)!) // → false
XCTAssertNil(parrotTrouble(isTalking: true, hour: 75))

