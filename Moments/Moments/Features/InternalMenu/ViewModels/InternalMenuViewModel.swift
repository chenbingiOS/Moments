//
//  InternalViewModel.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import RxSwift
import RxDataSources

protocol InternalMenuViewModelType {
    var title: String { get }
    var sections: Observable<[InternalMenuSection]> { get }
}

class InternalMenuViewModel: InternalMenuViewModelType {
    let title: String = "Area 51"
    let sections: Observable<[InternalMenuSection]>

    init(router: InternalMenuRouter) {
        let vserion = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersionShort") as? String ?? "1.0.0"
        let build = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? "1"
        let appVersion = "Vserion \(vserion) (Build \(build)) "

        let infoSection = InternalMenuSection(
            title: "General Info",
            items: [InternalMenuDescriptionItemViewModel(title: appVersion)]
        )

        sections = .just([
            infoSection
        ])
    }
}
