//
//  Functions.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import UIKit

// 类似尾随闭包，方便对象初始化，模仿系统懒加载
@discardableResult
public func configure<T: AnyObject>(_ object: T, closure: (T) -> Void) -> T {
    closure(object)
    return object
}

// 获取 KeyWindow Root VC
var rootViewController: UIViewController? {
    let keyWindow = UIApplication.shared.connectedScenes
            .filter({ $0.activationState == .foregroundActive })
            .map({ $0 as? UIWindowScene })
            .compactMap({ $0 })
            .first?.windows
            .filter({ $0.isKeyWindow }).first
    return keyWindow?.rootViewController
}
