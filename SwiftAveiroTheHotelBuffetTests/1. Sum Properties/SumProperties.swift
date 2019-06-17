//
//  SumProperties.swift
//  SwiftAveiroTheHotelBuffetTests
//
//  Created by Rodrigo López-Romero Guijarro on 17/06/2019.
//  Copyright © 2019 Rodrigo López-Romero Guijarro. All rights reserved.
//

import XCTest
import SwiftCheck
@testable import SwiftAveiroTheHotelBuffet

class SumProperties: XCTestCase {
    
    func testTrueTest() {
        property("True should pass")
            <- forAll { (_: Int) in
                return true
        }
    }
    
    // SUM IMPLEMENTATION
    func sum(_ op1: Int, _ op2: Int) -> Int {
        return op1 + op2
    }
    
    // PROPERTY-BASED TESTS
    
}
