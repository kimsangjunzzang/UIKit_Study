//
//  TableViewCell.swift
//  CodebaseUikit
//
//  Created by 김상준 on 7/18/24.
//

import Foundation
import UIKit

class TableViewCell : UITableViewCell {
    
    private let img: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "별이 빛나는 밤이다"
        label.textColor = .red
        return label
    }()
    
    private func setConstraint() {
        contentView.addSubview(img)
        contentView.addSubview(label)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            img.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 16),
            img.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            img.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            img.widthAnchor.constraint(equalToConstant: 20),
            img.heightAnchor.constraint(equalToConstant: 20),
            
            label.leadingAnchor.constraint(equalTo: img.trailingAnchor, constant: 15),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 16),
            label.centerYAnchor.constraint(equalTo: img.centerYAnchor)
        ])
    }
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraint()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
