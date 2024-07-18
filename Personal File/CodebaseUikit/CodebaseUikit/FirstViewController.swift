//
//  ViewController.swift
//  CodebaseUikit
//
//  Created by 김상준 on 7/16/24.
//
import UIKit
import Foundation


class MyCircleView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        print(self);
        self.layer.cornerRadius = self.frame.height / 2
    }
}


class FirstViewController: UIViewController {
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
    
    let myFirstView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
    let mySecondView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
    let myThirdView : MyCircleView = {
            let circleView = MyCircleView()
            circleView.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
            circleView.translatesAutoresizingMaskIntoConstraints = false
            return circleView
        }()
    
    let myFourthView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 20
        view.layer.borderWidth = 5
        view.layer.borderColor = .init(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.8)
        view.alpha = 0.3
        
        
        return view
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .purple
        self.view.addSubview(titleLabel)
        self.view.addSubview(descriptionLabel)
        self.view.addSubview(myFirstView)
        self.view.addSubview(mySecondView)
        self.view.addSubview(myThirdView)
        self.view.addSubview(myFourthView)
        
        // Bind constraints
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 24),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 24),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 10),
            
            myFirstView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            myFirstView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            myFirstView.widthAnchor.constraint(equalToConstant: 200),
            myFirstView.heightAnchor.constraint(equalToConstant: 200),
            
            mySecondView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 24),
            mySecondView.topAnchor.constraint(equalTo: self.myFirstView.bottomAnchor,constant: 40),
            mySecondView.widthAnchor.constraint(equalToConstant: 200),
            mySecondView.heightAnchor.constraint(equalToConstant: 200),
            
            myThirdView.leadingAnchor.constraint(equalTo: mySecondView.trailingAnchor,constant: 30),
            myThirdView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            myThirdView.widthAnchor.constraint(equalToConstant: 120),
            myThirdView.heightAnchor.constraint(equalToConstant: 120),
            
            myFourthView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 100),
            myFourthView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 100),
            myFourthView.widthAnchor.constraint(equalToConstant: 120),
            myFourthView.heightAnchor.constraint(equalToConstant: 120),
        ])
    }
}


