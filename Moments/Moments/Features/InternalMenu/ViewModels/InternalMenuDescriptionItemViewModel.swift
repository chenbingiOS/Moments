//
//  InternalMenuDescriptionItemViewModel.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

struct InternalMenuDescriptionItemViewModel: InternalMenuItemViewModel {
    let title: String

    var type: InternalMenuItemType {
        return .description
    }

    func select() {
    }
}
