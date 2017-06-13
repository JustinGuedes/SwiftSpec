//
//  Operators.swift
//  SwiftSpec
//
//  Created by Justin Guedes on 2017/06/13.
//

public func ==<Spec: Specification>(_ first: Spec, _ second: Spec.Object) -> Bool {
    return first.isSatisfied(by: second)
}

public func &&<FirstSpec, SecondSpec>(_ first: FirstSpec, _ second: SecondSpec) -> AnySpecification<AndSpecification<FirstSpec, SecondSpec>> {
    return AnySpecification(AndSpecification(first, second))
}

public func ||<FirstSpec, SecondSpec>(_ first: FirstSpec, _ second: SecondSpec) -> AnySpecification<OrSpecification<FirstSpec, SecondSpec>> {
    return AnySpecification(OrSpecification(first, second))
}

public prefix func !<FirstSpec>(_ first: FirstSpec) -> AnySpecification<NotSpecification<FirstSpec>> {
    return AnySpecification(NotSpecification(first))
}
