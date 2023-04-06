//
//  InternalMenuCell.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import UIKit

protocol InternalMenuItemViewing {
    func update(with item: InternalMenuItemViewModel)
}

class InternalMenuCell<T: InternalMenuItemViewModel>: UITableViewCell, InternalMenuItemViewing {
    func update(with item: InternalMenuItemViewModel) {
        (item as? T).map { update($0) }
    }

    func update(_ item: T) {
        fatalError("Subclass has to implement this function")
    }
}
