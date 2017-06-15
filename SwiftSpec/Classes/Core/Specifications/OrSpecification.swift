//
//  OrSpecification.swift
//  SwiftSpec
//
//  Created by Justin Guedes on 2017/06/13.
//

/// Specification to allow two specifications to be or-ed together and will be satisfied if any specification is satisfied.
public struct OrSpecification<FirstSpec: Specification, SecondSpec: Specification>: Specification where FirstSpec.Object == SecondSpec.Object {
    
    private let firstSpec: FirstSpec
    private let secondSpec: SecondSpec
    
    public init(_ firstSpec: FirstSpec, _ secondSpec: SecondSpec) {
        self.firstSpec = firstSpec
        self.secondSpec = secondSpec
    }
    
    public func isSatisfied(by object: FirstSpec.Object) -> Bool {
        return firstSpec.isSatisfied(by: object) || secondSpec.isSatisfied(by: object)
    }
    
}
