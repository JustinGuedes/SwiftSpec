//
//  RangeSpecification.swift
//  SwiftSpec
//
//  Created by Justin Guedes on 2017/06/16.
//

/// Specification that allows for range (excludes upper bound value) checking.
public struct RangeSpecification<ComparableType: Comparable>: Specification {

    private let range: Range<ComparableType>

    public init(_ range: Range<ComparableType>) {
        self.range = range
    }

    public func isSatisfied(by comparable: ComparableType) -> Bool {
        return range.contains(comparable)
    }

}
