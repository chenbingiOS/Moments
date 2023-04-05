//
//  InternalMenuDescriptionCell.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import UIKit

class InternalMenuDescriptionCell: InternalMenuCell<InternalMenuDescriptionItemViewModel> {
    override func update(_ item: InternalMenuDescriptionItemViewModel) {
        textLabel?.text = item.title
    }
}
