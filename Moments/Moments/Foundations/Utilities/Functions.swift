//
//  Functions.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

@discardableResult
public func configure<T: AnyObject>(_ object: T, closure: (T) -> Void) -> T {
    closure(object)
    return object
}
