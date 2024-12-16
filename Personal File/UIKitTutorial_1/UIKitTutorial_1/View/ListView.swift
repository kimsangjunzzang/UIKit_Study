//
//  ReminderListViewController.swift
//  UIKitTutorial_1
//
//  Created by 김상준 on 12/16/24.
//

import UIKit

class ListView: UIView {

    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .yellow
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        tableView.rowHeight = 50
        tableView.separatorStyle = .singleLine
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setViewHierarchy()
        setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setViewHierarchy() {
        addSubview(tableView)
    }

    func setConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
