//
//  Functions.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import UIKit

// 类似尾随闭包，方便对象初始化，模仿系统懒加载
@discardableResult
func configure<T: AnyObject>(_ object: T, closure: (T) -> Void) -> T {
    closure(object)
    return object
}
