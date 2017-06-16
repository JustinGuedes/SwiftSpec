//
//  OrSpecificationTests.swift
//  SwiftSpec_Tests
//
//  Created by Justin Guedes on 2017/06/13.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import SwiftSpec

class OrSpecificationTests: XCTestCase {

    func testShouldBeSatisfiedWhenEitherSpecificationIsSatisfied() {
        let firstSpec = DummySpecification(satisfied: true)
        let secondSpec = DummySpecification(satisfied: false)
        let orSpec = OrSpecification(firstSpec, secondSpec)

        let result = orSpec.isSatisfied(by: "Any")

        XCTAssertTrue(result)
    }

    func testShouldBeSatisfiedWhenBothSpecificationsAreSatisfied() {
        let firstSpec = DummySpecification(satisfied: true)
        let secondSpec = DummySpecification(satisfied: true)
        let orSpec = OrSpecification(firstSpec, secondSpec)

        let result = orSpec.isSatisfied(by: "Any")

        XCTAssertTrue(result)
    }

    func testShouldNotBeSatisfiedWhenBothSpecificationsAreNotSatisfied() {
        let firstSpec = DummySpecification(satisfied: false)
        let secondSpec = DummySpecification(satisfied: false)
        let orSpec = OrSpecification(firstSpec, secondSpec)

        let result = orSpec.isSatisfied(by: "Any")

        XCTAssertFalse(result)
    }

}
