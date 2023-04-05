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
    var section: Observable<[InternalMenuSection]> { get }
}

class InternalMenuViewModel: InternalMenuViewModelType {
    let title: String = "Area 51"
    let section: Observable<[InternalMenuSection]>

    init(appRouter: AppRouting) {
        let vserion = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? "1.0.0"
        let appVersion = "Vserion \(vserion)"

        let infoSection = InternalMenuSection(
            title: "General Info",
            items: [InternalMenuDescriptionItemViewModel(title: appVersion)]
        )

        section = .just([
            infoSection
        ])
    }
}
