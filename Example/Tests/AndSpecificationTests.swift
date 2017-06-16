//
//  AndSpecificationTests.swift
//  SwiftSpec_Tests
//
//  Created by Justin Guedes on 2017/06/13.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import SwiftSpec

class AndSpecificationTests: XCTestCase {

    func testShouldBeSatisfiedWhenBothSpecificationsAreSatisfied() {
        let firstSpec = DummySpecification(satisfied: true)
        let secondSpec = DummySpecification(satisfied: true)
        let andSpec = AndSpecification(firstSpec, secondSpec)

        let result = andSpec.isSatisfied(by: "Any")

        XCTAssertTrue(result)
    }

    func testShouldNotBeSatisfiedWhenEitherSpecificationIsNotSatisfied() {
        let firstSpec = DummySpecification(satisfied: false)
        let secondSpec = DummySpecification(satisfied: true)
        let andSpec = AndSpecification(firstSpec, secondSpec)

        let result = andSpec.isSatisfied(by: "Any")

        XCTAssertFalse(result)
    }

    func testShouldNotBeSatisfiedWhenBothSpecificationsAreNotSatisfied() {
        let firstSpec = DummySpecification(satisfied: false)
        let secondSpec = DummySpecification(satisfied: false)
        let andSpec = AndSpecification(firstSpec, secondSpec)

        let result = andSpec.isSatisfied(by: "Any")

        XCTAssertFalse(result)
    }

}
