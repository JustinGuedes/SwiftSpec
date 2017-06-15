//
//  ComparableSpecification.swift
//  SwiftSpec
//
//  Created by Justin Guedes on 2017/06/15.
//

/// Specification that allows for comparing Comparable types.
public struct ComparableSpecification<ComparableType: Comparable>: Specification {
    
    private let comparable: ComparableType
    private let operation: (ComparableType, ComparableType) -> Bool
    
    public init(comparable: ComparableType, operation: @escaping (ComparableType, ComparableType) -> Bool) {
        self.comparable = comparable
        self.operation = operation
    }
    
    public func isSatisfied(by otherNumber: ComparableType) -> Bool {
        return operation(comparable, otherNumber)
    }
    
}

// MARK: - Public static methods
public extension ComparableSpecification {
    
    /// Returns a comparable specification that will be satisfied when the value compared
    /// is greater than the initial value passed in.
    ///
    /// - Parameter value: The value to be compared against.
    /// - Returns: Greater than comparable specification.
    public static func greaterThan(_ value: ComparableType) -> ComparableSpecification {
        return ComparableSpecification(comparable: value, operation: <)
    }
    
    /// Returns a comparable specification that will be satisfied when the value compared
    /// is less than the initial value passed in.
    ///
    /// - Parameter value: The value to be compared against.
    /// - Returns: Less than comparable specification.
    public static func lessThan(_ value: ComparableType) -> ComparableSpecification {
        return ComparableSpecification(comparable: value, operation: >)
    }
    
    /// Returns a comparable specification that will be satisfied when the value compared
    /// is equal to the initial value passed in.
    ///
    /// - Parameter value: The value to be compared against.
    /// - Returns: Equal to comparable specification.
    public static func equalTo(_ value: ComparableType) -> ComparableSpecification {
        return ComparableSpecification(comparable: value, operation: ==)
    }
    
    /// Returns a comparable specification that will be satisfied when the value compared
    /// is greater than or equal to the initial value passed in.
    ///
    /// - Parameter value: The value to be compared against.
    /// - Returns: Greater than or equal to comparable specification.
    public static func greaterThanOrEqualTo(_ value: ComparableType) -> ComparableSpecification {
        return ComparableSpecification(comparable: value, operation: <=)
    }
    
    /// Returns a comparable specification that will be satisfied when the value compared
    /// is less than or equal to the initial value passed in.
    ///
    /// - Parameter value: The value to be compared against.
    /// - Returns: Less than or equal to comparable specification.
    public static func lessThanOrEqualTo(_ value: ComparableType) -> ComparableSpecification {
        return ComparableSpecification(comparable: value, operation: >=)
    }
    
}
