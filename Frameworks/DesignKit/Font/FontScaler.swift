//
//  FontScaler.swift
//  DesignKit
//
//  Created by ChenBing on 2023/4/5.
//

import Foundation

public class FontScaler {
    /// 基本字体
    private var baseFont: UIFont
    /// 文字风格
    private var style: UIFont.TextStyle
    /// 最大点大小
    var maximunPointSize: CGFloat?

    public init(with baseFont: UIFont, following style: UIFont.TextStyle) {
        self.baseFont = baseFont
        self.style = style
    }

    public convenience init(with baseFont: UIFont, following style: UIFont.TextStyle, maximunPointSize: CGFloat) {
        self.init(with: baseFont, following: style)
        self.maximunPointSize = maximunPointSize
    }

    public convenience init(constrained baseFont: UIFont, following style: UIFont.TextStyle = .body, maximumFactor: CGFloat = 1.5) {
        self.init(with: baseFont, following: style, maximunPointSize: baseFont.pointSize * maximumFactor)
    }

    public var font: UIFont {
        guard let maximunPointSize = maximunPointSize else {
            return baseFont.scaled(following: style)
        }
        return baseFont.scaled(following: style, maximumPointSize: maximunPointSize)
    }
}

private extension UIFont {
    func scaled(following style: UIFont.TextStyle) -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: style)
        return fontMetrics.scaledFont(for: self)
    }

    func scaled(following style: UIFont.TextStyle, maximumPointSize: CGFloat) -> UIFont {
        let fontMetrics = UIFontMetrics(forTextStyle: style)
        return fontMetrics.scaledFont(for: self, maximumPointSize: maximumPointSize)
    }
}
