//
//  UIImageViewExtensions.swift
//  DesignKit
//
//  Created by ChenBing on 2023/4/10.
//

import UIKit

public extension UIImageView {
    func asAvatar(cornerRadius: CGFloat = 4) {
        clipsToBounds = true
        layer.cornerRadius = cornerRadius
    }
}
