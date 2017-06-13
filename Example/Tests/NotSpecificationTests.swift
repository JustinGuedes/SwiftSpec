//
//  NotSpecificationTests.swift
//  SwiftSpec_Tests
//
//  Created by Justin Guedes on 2017/06/13.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import SwiftSpec

class NotSpecificationTests: XCTestCase {
    
    func testShouldBeSatisfiedWhenSpecificationIsNotSatisfied() {
        let spec = DummySpecification(satisfied: false)
        let notSpec = NotSpecification(spec)
        
        let result = notSpec.isSatisfied(by: "Any")
        
        XCTAssertTrue(result)
    }
    
    func testShouldNotBeSatisfiedWhenSpecificationIsSatisfied() {
        let spec = DummySpecification(satisfied: true)
        let notSpec = NotSpecification(spec)
        
        let result = notSpec.isSatisfied(by: "Any")
        
        XCTAssertFalse(result)
    }
    
}
