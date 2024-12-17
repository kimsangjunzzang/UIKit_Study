//
//  InfoView.swift
//  UIKitTutorial_1
//
//  Created by 김상준 on 12/17/24.
//

import UIKit

class InfoView: UIView {

    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()

    lazy var positionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()

    lazy var goalLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()

    lazy var assistLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()

    lazy var nationalityLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()

    lazy var ageLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()

    lazy var photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
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

        [nameLabel,ageLabel,nameLabel,nationalityLabel,assistLabel,goalLabel,positionLabel,photoImageView].forEach { addSubview($0)}
    }

    func setConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        nationalityLabel.translatesAutoresizingMaskIntoConstraints = false
        assistLabel.translatesAutoresizingMaskIntoConstraints = false
        goalLabel.translatesAutoresizingMaskIntoConstraints = false
        positionLabel.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            ageLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            nationalityLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nationalityLabel.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 8),
            assistLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            assistLabel.topAnchor.constraint(equalTo: nationalityLabel.bottomAnchor, constant: 8),
            goalLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            goalLabel.topAnchor.constraint(equalTo: assistLabel.bottomAnchor, constant: 8),
            positionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            positionLabel.topAnchor.constraint(equalTo: goalLabel.bottomAnchor, constant: 8),

            photoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            photoImageView.topAnchor.constraint(equalTo: positionLabel.bottomAnchor, constant: 20),
            photoImageView.widthAnchor.constraint(equalToConstant: 300),
            photoImageView.heightAnchor.constraint(equalToConstant: 300),
        ])
    }
}
