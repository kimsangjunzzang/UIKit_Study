//
//  CellView.swift
//  UIKitTutorial_1
//
//  Created by 김상준 on 12/17/24.
//

import Foundation
import UIKit

class PlayerCell: UITableViewCell {

    lazy var playerImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 25 // 동그랗게 만들기
        return imageView
    }()

    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .black
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setViewHierarchy()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setViewHierarchy() {
        [playerImage, nameLabel].forEach {
            contentView.addSubview($0)
        }
    }

    private func setupConstraints() {
        playerImage.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            playerImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            playerImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            playerImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            playerImage.widthAnchor.constraint(equalToConstant: 50),
            playerImage.heightAnchor.constraint(equalTo: playerImage.widthAnchor), // 정사각형 비율

            nameLabel.centerYAnchor.constraint(equalTo: playerImage.centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: playerImage.trailingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -10)
        ])
    }
}
