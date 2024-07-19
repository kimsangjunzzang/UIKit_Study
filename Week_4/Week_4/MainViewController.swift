//
//  MainViewController.swift
//  Week_4
//
//  Created by 김상준 on 7/19/24.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    private lazy var startButton : UIButton = {
        let button = UIButton()
        button.setTitle("Go to list", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(onClickButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .yellow
        setupConstraint()
    }
    
    @objc func onClickButton() {
        self.navigationController?.pushViewController(ListViewController(), animated: true)
    }
    
    private func setupConstraint() {
        view.addSubview(startButton)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            startButton.widthAnchor.constraint(equalToConstant: 200),
            startButton.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}
