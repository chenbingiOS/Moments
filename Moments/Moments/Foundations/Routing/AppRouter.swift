//
//  AppRouter.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import UIKit

// 导航展示方法
enum NavigationAction {
    case present
    case push
}
// 路由协议
protocol AppRouting {
    func presentInternalMenu(from viewController: UIViewController?)
}

struct AppRouter: AppRouting {
    func presentInternalMenu(from viewController: UIViewController?) {
        guard let fromVC = viewController else { return }

        let router = InternalMenuRouter(fromContronller: viewController)
        let viewModel = InternalMenuViewModel(router: router)
        let internalMenuVC = InternalMenuViewController()
        internalMenuVC.viewModel = viewModel
        let naviC = UINavigationController(rootViewController: internalMenuVC)
        fromVC.present(naviC, animated: true)
    }
}
