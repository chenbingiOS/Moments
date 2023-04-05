//
//  UIApplicationExtension.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import UIKit

extension UIApplication {
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
}
