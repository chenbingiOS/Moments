//
//  UIFont+Typography.swift
//  DesignKit
//
//  Created by ChenBing on 2023/4/5.
//

import UIKit

public extension UIFont {
    static let designKit = DesignKitTypography()

    struct DesignKitTypography {
        public var display1: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 42, weight: .semibold), following: .largeTitle).font
        }

        public var display2: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 36, weight: .semibold), following: .largeTitle).font
        }

        public var title1: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 24, weight: .semibold), following: .title1).font
        }

        public var title2: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 20, weight: .semibold), following: .title2).font
        }

        public var title3: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 18, weight: .semibold), following: .title3).font
        }

        public var title4: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 14, weight: .regular), following: .headline).font
        }

        public var title5: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 12, weight: .regular), following: .subheadline).font
        }

        public var bodyBold: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 16, weight: .semibold), following: .body).font
        }

        public var body: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 16, weight: .light), following: .body).font
        }

        public var captionBold: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 14, weight: .semibold), following: .caption1).font
        }

        public var caption: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 14, weight: .light), following: .caption1).font
        }

        public var small: UIFont {
            FontScaler(constrained: .systemFont(ofSize: 12, weight: .light), following: .footnote).font
        }
    }
}

public extension UILabel {
    // 设置动态字体
    func setDynamicFont(_ dynamicFont: UIFont) {
        // 调整内容大小类别的字体
        adjustsFontForContentSizeCategory = true
        font = dynamicFont
    }
}

public extension UITextView {
    func setDynamicFont(_ dynamicFont: UIFont) {
        adjustsFontForContentSizeCategory = true
        font = dynamicFont
    }
}

public extension UIButton {
    func setDynamicFont(_ dynamicFont: UIFont) {
        titleLabel?.adjustsFontForContentSizeCategory = true
        titleLabel?.font = dynamicFont
    }
}
