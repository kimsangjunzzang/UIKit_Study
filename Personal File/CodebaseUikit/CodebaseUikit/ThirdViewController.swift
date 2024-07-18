//
//  ThirdViewController.swift
//  CodebaseUikit
//
//  Created by 김상준 on 7/18/24.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    
    lazy var FirstButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 20
        button.backgroundColor = .white
        button.setTitle("First", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        
        return button
    }()
    
    lazy var SecondButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = . red
        button.setTitle("SecondView", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = button.layer.frame.height / 2
        button.addTarget(self, action: #selector(onClickSecondButton), for: .touchDown)
        
        return button
    }()
    
    override func viewDidLoad() {
        self.view.backgroundColor = .black
        
        setupConstraint()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        SecondButton.layer.cornerRadius = min(SecondButton.frame.width, SecondButton.frame.height) / 2
       
    }
    
    private func setupConstraint() {
        view.addSubview(FirstButton)
        view.addSubview(SecondButton)
        FirstButton.translatesAutoresizingMaskIntoConstraints = false
        SecondButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            FirstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FirstButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            FirstButton.widthAnchor.constraint(equalToConstant: 100),
            FirstButton.heightAnchor.constraint(equalToConstant: 100),
            
            SecondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SecondButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            SecondButton.widthAnchor.constraint(equalToConstant: 200),
            SecondButton.heightAnchor.constraint(equalToConstant: 200),
        ])
        
    }
    
    @objc func onClickButton() {
        self.navigationController?.pushViewController(FirstViewController(), animated: true)
    }
    
    @objc func onClickSecondButton() {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }
}
