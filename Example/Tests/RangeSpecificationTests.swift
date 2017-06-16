//
//  RangeSpecificationTests.swift
//  SwiftSpec_Tests
//
//  Created by Justin Guedes on 2017/06/16.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import SwiftSpec

class RangeSpecificationTests: XCTestCase {
    
    func testShouldReturnTrueWhenNumberIsWithinRangeInRangeSpecification() {
        let rangeSpec = RangeSpecification(1..<5)
        
        let result = rangeSpec.isSatisfied(by: 3)
        
        XCTAssertTrue(result)
    }
    
    func testShouldReturnFalseWhenNumberIsOutsideOfRangeInRangeSpecification() {
        let rangeSpec = RangeSpecification(1..<5)
        
        let result = rangeSpec.isSatisfied(by: 6)
        
        XCTAssertFalse(result)
    }
    
    func testShouldReturnFalseWhenNumberIsEqualToUpperBoundValueInRangeSpecification() {
        let rangeSpec = RangeSpecification(1..<5)
        
        let result = rangeSpec.isSatisfied(by: 5)
        
        XCTAssertFalse(result)
    }
    
}
