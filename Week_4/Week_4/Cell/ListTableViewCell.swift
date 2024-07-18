//
//  ListTableViewCell.swift
//  Week_4
//
//  Created by 김상준 on 7/18/24.
//

import Foundation
import UIKit

class ListTableViewCell: UITableViewCell {
    
    private var img: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "automobile")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "차박하기 좋은 계절 전국 차박 명소는?"
        return label
    }()
    
    private var hashTag: UILabel = {
        let label = UILabel()
        label.text = "# 가정의 달 # 캠핑"
        return label
    }()
    
    private var stack: UIStackView = {
        let stackView = UIStackView()
        return stackView
    }()
    
    private func setupConstraint() {
        contentView.addSubview(img)
        contentView.addSubview(titleLabel)
        contentView.addSubview(hashTag)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        hashTag.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            img.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            img.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            img.widthAnchor.constraint(equalToConstant: 74),
            img.heightAnchor.constraint(equalToConstant: 74),
            
            titleLabel.leadingAnchor.constraint(equalTo: img.trailingAnchor,constant: 10),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            
            hashTag.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            hashTag.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10)
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
