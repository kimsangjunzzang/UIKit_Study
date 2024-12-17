//
//  CellView.swift
//  UIKitTutorial_1
//
//  Created by 김상준 on 12/17/24.
//

import Foundation
import UIKit

class PlayerCellView: UITableViewCell {

    lazy var playerImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.masksToBounds = true
        image.layer.borderColor = UIColor.red.cgColor
        image.layer.borderWidth = 3
        return image
    }()

    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setViewHierarchy()
        setupConstraints()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        playerImageView.layer.cornerRadius = playerImageView.frame.width / 2
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setViewHierarchy() {
        [playerImageView, nameLabel].forEach {
            contentView.addSubview($0)
        }
    }

    private func setupConstraints() {
        playerImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            playerImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            playerImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            playerImageView.widthAnchor.constraint(equalToConstant: 70),
            playerImageView.heightAnchor.constraint(equalToConstant: 70),

            nameLabel.centerYAnchor.constraint(equalTo: playerImageView.centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: playerImageView.trailingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -10)
        ])
    }
}
