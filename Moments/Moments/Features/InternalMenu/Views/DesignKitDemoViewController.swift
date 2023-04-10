//
//  DesignKitDemoViewController.swift
//  Moments
//
//  Created by ChenBing on 2023/4/10.
//

import UIKit
import DesignKit
import SnapKit
import Kingfisher

class DesignKitDemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
}

private extension DesignKitDemoViewController {
    // 配置UI
    func setupViews() {
        view.backgroundColor = .systemBackground

        let scrollView = configure(UIScrollView()) {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide.snp.topMargin)
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottomMargin)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
        }

        let rootStackView = configure(UIStackView(arrangedSubviews: [
            buildTypography(),
            buildColors(),
            buildAvatars()
        ])) {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.axis = .vertical
            $0.alignment = .leading
            $0.isLayoutMarginsRelativeArrangement = true
            $0.layoutMargins = UIEdgeInsets(top: 32, left: 16, bottom: 32, right: 16)
            $0.spacing = 16
        }
        scrollView.addSubview(rootStackView)
        rootStackView.snp.makeConstraints {
            $0.top.bottom.leading.trailing.equalToSuperview()
            $0.width.equalTo(scrollView.snp.width)
        }
    }
    // 增加字体字号演示
    func buildTypography() -> UIView {
        let item = [
            ("dispaly1",    UIFont.designKit.display1),
            ("display2",    UIFont.designKit.display2),
            ("title1",      UIFont.designKit.title1),
            ("title2",      UIFont.designKit.title2),
            ("title3",      UIFont.designKit.title3),
            ("title4",      UIFont.designKit.title4),
            ("title5",      UIFont.designKit.title5),
            ("bodyBold",    UIFont.designKit.bodyBold),
            ("body",        UIFont.designKit.body),
            ("captionBold", UIFont.designKit.captionBold),
            ("caption",     UIFont.designKit.caption),
            ("small",       UIFont.designKit.small)
        ]

        let title = configure(UILabel()) {
            $0.text = "# Typography"
            $0.font = UIFont.designKit.title1
        }
        let stack = configure(UIStackView(arrangedSubviews: [title])) {
            $0.axis = .vertical
            $0.spacing = 8
        }
        item.forEach {
            let item = $0
            let label = configure(UILabel()) {
                $0.text = item.0
                $0.setDynamicFont(item.1) // 调整内容大小类别的字体
            }
            stack.addArrangedSubview(label)
        }
        return stack
    }
    // 增加颜色样式
    func buildColors() -> UIView {
        let item = [
            ("primary",             UIColor.designKit.primary),
            ("background",          UIColor.designKit.background),
            ("secondaryBackground", UIColor.designKit.secondaryBackground),
            ("tertiaryBackground",  UIColor.designKit.tertiaryBackground),
            ("line",                UIColor.designKit.line),
            ("primaryText",         UIColor.designKit.primaryText),
            ("secondaryText",       UIColor.designKit.secondaryText),
            ("tertiaryText",        UIColor.designKit.tertiaryText),
            ("quaternaryText",      UIColor.designKit.quaternaryText)
        ]

        let title = configure(UILabel()) {
            $0.text = "# Colors"
            $0.font = UIFont.designKit.title1
        }
        let stackView = configure(UIStackView(arrangedSubviews: [title])) {
            $0.axis = .vertical
            $0.spacing = 8
        }
        item.forEach {
            let item = $0
            let label = configure(UILabel()) {
                $0.text = item.0
                $0.textColor = UIColor.designKit.primaryText
            }
            let colorView = configure(UIView()) {
                $0.backgroundColor = item.1
            }
            let length = 32
            colorView.snp.makeConstraints {
                $0.width.height.equalTo(length)
            }
            let innerStackView = configure(UIStackView(arrangedSubviews: [label, colorView])) {
                $0.spacing = 8
                $0.distribution = .equalSpacing
            }
            stackView.addArrangedSubview(innerStackView)
        }
        return stackView
    }
    // 配置头像
    func buildAvatars() -> UIView {
        let item = [
            URL(string: "https://images.generated.photos/SZ43KV-Oo26-wpPUM7zDLo19CpGFH0eBnjegQFtvaUc/rs:fit:512:512/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zLzA4/NTUzMzguanBn.jpg"),
            URL(string: "https://randomuser.me/api/portraits/women/68.jpg"),
            URL(string: "https://uifaces.co/our-content/donated/Si9Qv42B.jpg"),
            URL(string: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEzNjAzMTgzMV5BMl5BanBnXkFtZTcwNjU2NjA2NQ@@._V1_UY256_CR11,0,172,256_AL_.jpg"),
            URL(string: "https://uifaces.co/our-content/donated/fID5-1BV.jpg")
        ]

        let title = configure(UILabel()) {
            $0.text = "# Avatars"
            $0.font = UIFont.designKit.title1
        }
        let stackView = configure(UIStackView(arrangedSubviews: [title])) {
            $0.axis = .vertical
            $0.spacing = 8
        }
        item.forEach {
            let item = $0
            let imageView = configure(UIImageView()) {
                $0.asAvatar(cornerRadius: 12)
                $0.contentMode = .scaleAspectFill
                $0.accessibilityIgnoresInvertColors = true // 辅助功能忽略反转颜色
                $0.kf.setImage(with: item)
            }
            let length: CGFloat = 128
            imageView.snp.makeConstraints {
                $0.width.equalTo(length)
                $0.height.equalTo(length)
            }
            stackView.addArrangedSubview(imageView)
        }
        return stackView
    }
}
