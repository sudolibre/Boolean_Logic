//: Playground - noun: a place where people can play

import UIKit
import XCTest

//Given two temperatures, return true if one is less than 0 and the other is greater than 100.

func icyHot(firstTemp: Int, secondTemp: Int) -> Bool {
    let allTemps = [firstTemp, secondTemp]
    var someTempIsHot = false
    var someTempIsIcy = false
    
    for temp in allTemps {
        if temp < 0 {
            someTempIsIcy = true
        } else if temp > 100 {
            someTempIsHot = true
        }
    }
    // let isIcyHot = someTempIsHot && someTempIsIcy
    return someTempIsHot && someTempIsIcy
    
}


XCTAssert(icyHot(firstTemp: 120, secondTemp: -1)) // → true
XCTAssert(icyHot(firstTemp: -1, secondTemp: 120)) // → true
XCTAssert(!icyHot(firstTemp: 2, secondTemp: 120)) //→ false
//extra tests
XCTAssert(!icyHot(firstTemp: 15, secondTemp: 75))
XCTAssert(!icyHot(firstTemp: -15, secondTemp: -130))
XCTAssert(!icyHot(firstTemp: 222, secondTemp: 1200))
