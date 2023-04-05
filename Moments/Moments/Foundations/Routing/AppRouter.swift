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
    static var instance: AppRouter = {
        return AppRouter()
    }()

    private init() {}

    func presentInternalMenu(from viewController: UIViewController?) {
        guard let fromVC = viewController else { return }

        let viewModel = InternalMenuViewModel(appRouter: self)
        let internalMenuVC = InternalMenuViewController(viewModel: viewModel)
        let naviC = UINavigationController(rootViewController: internalMenuVC)
        fromVC.present(naviC, animated: true)
    }
}
