//
//  ComparableSpecificationTests.swift
//  SwiftSpec_Tests
//
//  Created by Justin Guedes on 2017/06/15.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import SwiftSpec

class ComparableSpecificationTests: XCTestCase {
    
    func testShouldReturnTrueWhenNumberIsGreaterThanGreaterThanComparableSpecification() {
        let greaterThanSpec = ComparableSpecification.greaterThan(12)
        
        let result = greaterThanSpec.isSatisfied(by: 13)
        
        XCTAssertTrue(result)
    }
    
    func testShouldReturnFalseWhenNumberIsLessThanGreaterThanComparableSpecification() {
        let greaterThanSpec = ComparableSpecification.greaterThan(12)
        
        let result = greaterThanSpec.isSatisfied(by: 11)
        
        XCTAssertFalse(result)
    }
    
    func testShouldReturnTrueWhenNumberIsLessThanLessThanComparableSpecification() {
        let lessThanSpec = ComparableSpecification.lessThan(12)
        
        let result = lessThanSpec.isSatisfied(by: 11)
        
        XCTAssertTrue(result)
    }
    
    func testShouldReturnFalseWhenNumberIsGreaterThanLessThanComparableSpecification() {
        let lessThanSpec = ComparableSpecification.lessThan(12)
        
        let result = lessThanSpec.isSatisfied(by: 13)
        
        XCTAssertFalse(result)
    }
    
    func testShouldReturnTrueWhenNumberIsEqualToEqualToComparableSpecification() {
        let equalToSpec = ComparableSpecification.equalTo(12)
        
        let result = equalToSpec.isSatisfied(by: 12)
        
        XCTAssertTrue(result)
    }
    
    func testShouldReturnFalseWhenNumberIsNotEqualToEqualToComparableSpecification() {
        let equalToSpec = ComparableSpecification.equalTo(12)
        
        let result = equalToSpec.isSatisfied(by: 21)
        
        XCTAssertFalse(result)
    }
    
    func testShouldReturnTrueWhenNumberIsGreaterThanGreaterThanOrEqualToComparableSpecification() {
        let greaterThanOrEqualToSpec = ComparableSpecification.greaterThanOrEqualTo(12)
        
        let result = greaterThanOrEqualToSpec.isSatisfied(by: 13)
        
        XCTAssertTrue(result)
    }
    
    func testShouldReturnTrueWhenNumberIsEqualToGreaterThanOrEqualToComparableSpecification() {
        let greaterThanOrEqualToSpec = ComparableSpecification.greaterThanOrEqualTo(12)
        
        let result = greaterThanOrEqualToSpec.isSatisfied(by: 12)
        
        XCTAssertTrue(result)
    }
    
    func testShouldReturnFalseWhenNumberIsLessThanGreaterThanOrEqualToComparableSpecification() {
        let greaterThanOrEqualToSpec = ComparableSpecification.greaterThanOrEqualTo(12)
        
        let result = greaterThanOrEqualToSpec.isSatisfied(by: 11)
        
        XCTAssertFalse(result)
    }
    
    func testShouldReturnTrueWhenNumberIsLessThanLessThanOrEqualToComparableSpecification() {
        let lessThanOrEqualToSpec = ComparableSpecification.lessThanOrEqualTo(12)
        
        let result = lessThanOrEqualToSpec.isSatisfied(by: 11)
        
        XCTAssertTrue(result)
    }
    
    func testShouldReturnTrueWhenNumberIsEqualToLessThanOrEqualToComparableSpecification() {
        let lessThanOrEqualToSpec = ComparableSpecification.lessThanOrEqualTo(12)
        
        let result = lessThanOrEqualToSpec.isSatisfied(by: 12)
        
        XCTAssertTrue(result)
    }
    
    func testShouldReturnFalseWhenNumberIsGreaterThanLessThanOrEqualToComparableSpecification() {
        let lessThanOrEqualToSpec = ComparableSpecification.lessThanOrEqualTo(12)
        
        let result = lessThanOrEqualToSpec.isSatisfied(by: 13)
        
        XCTAssertFalse(result)
    }
    
}
