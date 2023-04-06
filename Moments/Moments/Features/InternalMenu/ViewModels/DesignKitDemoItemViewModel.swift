//
//  DesignKitDemoItemViewModel.swift
//  Moments
//
//  Created by ChenBing on 2023/4/6.
//

import UIKit

class DesignKitDemoItemViewModel: InternalMenuActionTriggerItemViewModel {

    private let router:InternalMenuRouting

    init(router: InternalMenuRouting) {
        self.router = router
    }

    override var title: String {
        return "DesignKit Demo"
    }

    override func select() {
        router.showDesignKit()
    }
}
