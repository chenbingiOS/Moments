//
//  InternalMenuViewController.swift
//  Moments
//
//  Created by ChenBing on 2023/4/5.
//

import UIKit
import SnapKit

class InternalMenuViewController: BaseViewController {

    var viewModel: InternalMenuViewModelType!

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

        setupLayout()
    }

    func setupLayout() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    func setupBindings() {

    }    

    @objc
    func dismissModel() {
        dismiss(animated: true, completion: nil)
    }

}
