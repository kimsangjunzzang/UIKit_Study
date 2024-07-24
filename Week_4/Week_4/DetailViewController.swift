//
//  DetailViewController.swift
//  Week_4
//
//  Created by 김상준 on 7/23/24.
//

import Foundation
import UIKit

class DetailViewController : UIViewController {
    var item: Item?
    
    private var hashTag : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private var titleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 34, weight: .heavy)
        label.numberOfLines = 3
       
        return label
    }()
    
    private let imageView : UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        hashTag.text = item?.hashtag
        titleLabel.text = item?.title
        imageView.image = item?.iconImage
        constraintSetup()
    }
    
    func constraintSetup() {
        view.addSubview(hashTag)
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        
        hashTag.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hashTag.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            hashTag.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 43),
            
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 51),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 51),
            titleLabel.topAnchor.constraint(equalTo: hashTag.bottomAnchor, constant: 32),
            
            imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 100),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 221),
            imageView.widthAnchor.constraint(equalToConstant: 393),
        ])
    }
}
