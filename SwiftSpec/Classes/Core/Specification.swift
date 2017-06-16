//
//  Specification.swift
//  SwiftSpec
//
//  Created by Justin Guedes on 2017/06/13.
//

public protocol Specification {

    associatedtype Object

    /// Determines whether the specification is satisfied by the object passed in.
    ///
    /// - Parameter object: The object to check against.
    /// - Returns: True if the specification is satisfied by the object, false otherwise.
    func isSatisfied(by object: Object) -> Bool

}

// MARK: - Composite Specification specific methods
public extension Specification {

    /// Returns a concatenated specification between the current specification and the passed-in specification,
    /// that will only be satisfied when both specifications are satisifed.
    ///
    /// - Parameter spec: The specification to 'and' with.
    /// - Returns: Concatenated specification that and's both specifications.
    func and<Spec: Specification>(_ spec: Spec) -> AnySpecification<Object> where Spec.Object == Object {
        return AnySpecification(AndSpecification(self, spec))
    }

    /// Returns a concatenated specification between the current specification and the passed-in specification,
    /// that will be satisfied when either specification is satisfied.
    ///
    /// - Parameter spec: The specification to 'or' with.
    /// - Returns: Concatentated specification that or's both specifications.
    func or<Spec: Specification>(_ spec: Spec) -> AnySpecification<Object> where Spec.Object == Object {
        return AnySpecification(OrSpecification(self, spec))
    }

    /// Returns a not'ed specification that just returns the opposite result of the original specification.
    var not: AnySpecification<Object> {
        return AnySpecification(NotSpecification(self))
    }

}
