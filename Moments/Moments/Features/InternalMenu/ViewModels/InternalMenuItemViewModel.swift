//
//  InternalMenuItemViewModel.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import Foundation

enum InternalMenuItemType: String {
    case description
    case featureToggle
    case actionTrigger
}

protocol InternalMenuItemViewModel {
    var type: InternalMenuItemType { get }

    func select()
}
