//
//  NotSpecification.swift
//  SwiftSpec
//
//  Created by Justin Guedes on 2017/06/13.
//

public struct NotSpecification<Spec: Specification>: Specification {
    
    private let spec: Spec
    
    public init(_ spec: Spec) {
        self.spec = spec
    }
    
    public func isSatisfied(by object: Spec.Object) -> Bool {
        return !spec.isSatisfied(by: object)
    }
    
}
