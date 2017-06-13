//
//  DummySpecifications.swift
//  SwiftSpec_Tests
//
//  Created by Justin Guedes on 2017/06/13.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import SwiftSpec

struct DummySpecification: Specification {
    
    let satisfied: Bool
    
    func isSatisfied(by object: Any) -> Bool {
        return satisfied
    }
    
}
