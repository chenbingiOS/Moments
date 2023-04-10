//
//  InternalMenuRouter.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import UIKit

protocol InternalMenuRouting {
    func showDesignKit()
}

struct InternalMenuRouter: InternalMenuRouting {

    weak var fromContronller: UIViewController?

    init(fromContronller: UIViewController?) {
        self.fromContronller = fromContronller
    }

    func showDesignKit() {
        fromContronller?.show(DesignKitDemoViewController(), sender: fromContronller)
    }
}
