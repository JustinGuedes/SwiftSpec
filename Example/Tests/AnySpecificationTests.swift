//
//  AnySpecificationTests.swift
//  SwiftSpec_Tests
//
//  Created by Justin Guedes on 2017/06/13.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import SwiftSpec

class AnySpecificationTests: XCTestCase {

    func testShouldWrapSpecificationInAnySpecificationStruct() {
        let testSpec = DummySpecification(satisfied: true)
        let anySpec = AnySpecification(testSpec)

        let result = anySpec.isSatisfied(by: "Any")

        XCTAssertTrue(result)
    }

    func testShouldWrapAnotherSpecificationInAnySpecificationStruct() {
        let testSpec = DummySpecification(satisfied: false)
        let anySpec = AnySpecification(testSpec)

        let result = anySpec.isSatisfied(by: "Any")

        XCTAssertFalse(result)
    }

}
