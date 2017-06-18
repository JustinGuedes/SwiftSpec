//
//  ClosedRangeSpecification.swift
//  SwiftSpec
//
//  Created by Justin Guedes on 2017/06/16.
//

/// Specification that allows for closed range (includes upper bound value) checking.
public struct ClosedRangeSpecification<ComparableType: Comparable>: Specification {

    private let range: ClosedRange<ComparableType>

    public init(_ range: ClosedRange<ComparableType>) {
        self.range = range
    }

    public func isSatisfied(by comparable: ComparableType) -> Bool {
        return range.contains(comparable)
    }

}
