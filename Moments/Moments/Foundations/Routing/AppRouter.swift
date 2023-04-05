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
    func routeToInternalMenu(_ action: NavigationAction, from: UIViewController?)
}

struct AppRouter: AppRouting {
    static var instance: AppRouter = {
        return AppRouter()
    }()

    private init() {}

    func routeToInternalMenu(_ action: NavigationAction, from: UIViewController?) {
        guard let rootVC = rootViewController else { return }

        let viewModel = InternalMenuViewModel(appRouter: self)
        let internalMenuVC = InternalMenuViewController(viewModel: viewModel)
        let navc = UINavigationController(rootViewController: internalMenuVC)
        rootVC.present(navc, animated: true)

    }
}
