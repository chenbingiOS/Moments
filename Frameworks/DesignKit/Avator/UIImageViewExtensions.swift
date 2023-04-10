//
//  UIImageViewExtensions.swift
//  DesignKit
//
//  Created by ChenBing on 2023/4/10.
//

import UIKit

public extension UIImageView {
    func asAvatar() {
        clipsToBounds = true
        layer.cornerRadius = 2
    }
}
