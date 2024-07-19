//
//  ListTableViewCell.swift
//  Week_4
//
//  Created by 김상준 on 7/18/24.
//

import Foundation
import UIKit

class ListTableViewCell: UITableViewCell {
    
    var img: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 8
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        return imageView
    }()
    var stack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .leading
        stackView.spacing = 2
        return stackView
    }()
    var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17)
        return label
    }()
    var hashTag: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray2
        label.font = .systemFont(ofSize: 13)
        return label
    }()
    
    private func setupConstraint() {
        contentView.addSubview(img)
        contentView.addSubview(stack)
        
        stack.addArrangedSubview(titleLabel)
        stack.addArrangedSubview(hashTag)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            img.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 16),
            img.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            img.widthAnchor.constraint(equalToConstant: 74),
            img.heightAnchor.constraint(equalToConstant: 74),
            
            stack.leadingAnchor.constraint(equalTo: img.trailingAnchor,constant: 16),
            stack.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ])
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraint()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
