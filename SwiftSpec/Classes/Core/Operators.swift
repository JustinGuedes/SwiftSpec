//
//  Operators.swift
//  SwiftSpec
//
//  Created by Justin Guedes on 2017/06/13.
//

public func ==<Spec: Specification>(_ first: Spec, _ second: Spec.Object) -> Bool {
    return first.isSatisfied(by: second)
}

public func &&<FirstSpec: Specification, SecondSpec: Specification>
        (_ first: FirstSpec, _ second: SecondSpec) -> AnySpecification<FirstSpec.Object>
        where FirstSpec.Object == SecondSpec.Object {
    return AnySpecification(AndSpecification(first, second))
}

public func ||<FirstSpec: Specification, SecondSpec: Specification>
        (_ first: FirstSpec, _ second: SecondSpec) -> AnySpecification<FirstSpec.Object>
        where FirstSpec.Object == SecondSpec.Object {
    return AnySpecification(OrSpecification(first, second))
}

public prefix func !<FirstSpec: Specification>(_ first: FirstSpec) -> AnySpecification<FirstSpec.Object> {
    return AnySpecification(NotSpecification(first))
}
