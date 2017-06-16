//
//  AnySpecification.swift
//  SwiftSpec
//
//  Created by Justin Guedes on 2017/06/13.
//

/// Specification that wraps any specification in a simple wrapper to prevent long types from forming,
/// because of the generic types.
public struct AnySpecification<SpecObject>: Specification {

    private let spec: (SpecObject) -> Bool

    public init<Spec: Specification>(_ spec: Spec) where Spec.Object == SpecObject {
        self.spec = { spec.isSatisfied(by: $0) }
    }

    public func isSatisfied(by object: SpecObject) -> Bool {
        return spec(object)
    }

}
