//
//  ViewController.swift
//  CodebaseUikit
//
//  Created by 김상준 on 7/16/24.
//

import UIKit

class AutoLayoutView: UIView {
    
    // UI요소들 정의
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "AutoLayout 만들기"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "설명이 여기에 들어갈껀데용?"
        label.textColor = .red
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .purple
        self.addSubview(titleLabel)
        self.addSubview(descriptionLabel)
        
        // Bind constraints
        self.titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24).isActive = true
        self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        
        self.descriptionLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor).isActive = true
        self.descriptionLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: UIViewController {
    
    private lazy var autoLayoutView = AutoLayoutView(frame: self.view.frame)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = autoLayoutView
    }
}


