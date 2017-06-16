//
//  ClosedRangeSpecificationTests.swift
//  SwiftSpec_Tests
//
//  Created by Justin Guedes on 2017/06/16.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import SwiftSpec

class ClosedRangeSpecificationTests: XCTestCase {
    
    func testShouldReturnTrueWhenNumberIsWithinRangeInClosedRangeSpecification() {
        let closedRangeSpec = ClosedRangeSpecification(1...5)
        
        let result = closedRangeSpec.isSatisfied(by: 3)
        
        XCTAssertTrue(result)
    }
    
    func testShouldReturnFalseWhenNumberIsOutsideOfRangeInClosedRangeSpecification() {
        let closedRangeSpec = ClosedRangeSpecification(1...5)
        
        let result = closedRangeSpec.isSatisfied(by: 6)
        
        XCTAssertFalse(result)
    }
    
    func testShouldReturnTrueWhenNumberIsEqualToUpperBoundValueInClosedRangeSpecification() {
        let closedRangeSpec = ClosedRangeSpecification(1...5)
        
        let result = closedRangeSpec.isSatisfied(by: 5)
        
        XCTAssertTrue(result)
    }
    
}
