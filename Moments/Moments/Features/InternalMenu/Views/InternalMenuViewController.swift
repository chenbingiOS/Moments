//
//  InternalMenuViewController.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import UIKit

class InternalMenuViewController: BaseViewController {

    let viewModel: InternalMenuViewModelType

    init(viewModel: InternalMenuViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var tableView: UITableView = configure(UITableView(frame: CGRect.zero, style: .grouped)) {
        $0.rowHeight = UITableView.automaticDimension
        $0.estimatedRowHeight = 44
        $0.register(InternalMenuDescriptionCell.self, forCellReuseIdentifier: InternalMenuItemType.description.rawValue)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = viewModel.title
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done,
                                                            target: self,
                                                            action: #selector(dismissModel))
    }

    @objc
    func dismissModel() {
        dismiss(animated: true, completion: nil)
    }

}
