//
//  ViewController.swift
//  Week_4
//
//  Created by 김상준 on 7/18/24.
//
import UIKit

class ListViewController: UIViewController, UITextFieldDelegate{
    
    private var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "캐롯 Pick"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 17)
        return label
    }()
    private let divisionLine: UIView = {
        var line = UIView()
        line.backgroundColor =  .systemGray5
        return line
    }()
    private let hStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        
        var imageView = UIImageView()
        let img = UIImage(systemName: "magnifyingglass")
        imageView.image = img
        
        var blockView = UIView()
        view.addArrangedSubview(imageView)
        view.addArrangedSubview(blockView)
        
        return view
    }()
    private lazy var textField: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "내용을 입력해 보세요"
        textfield.borderStyle = .roundedRect
        textfield.layer.cornerRadius = 8
        textfield.backgroundColor = .systemGray6
        textfield.clearButtonMode = .always
        textfield.rightView = hStack
        textfield.rightView?.tintColor = .black
        textfield.rightViewMode = .unlessEditing
        
        return textfield
    }()
    private lazy var tableView: UITableView = {
        let tableview = UITableView()
        return tableview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        view.backgroundColor = .white
        tableView.register(ListTableViewCell.self, forCellReuseIdentifier: "ListTableViewCell")
        setConstraint()
    }
    
    func setConstraint() {
        view.addSubview(titleLabel)
        view.addSubview(divisionLine)
        view.addSubview(textField)
        view.addSubview(tableView)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        divisionLine.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            divisionLine.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 16),
            divisionLine.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            divisionLine.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            divisionLine.heightAnchor.constraint(equalToConstant: 1),
            
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.topAnchor.constraint(equalTo: divisionLine.bottomAnchor, constant: 16),
            textField.widthAnchor.constraint(equalToConstant: 353),
            textField.heightAnchor.constraint(equalToConstant: 54),
            
            hStack.heightAnchor.constraint(equalToConstant: 20),
            hStack.widthAnchor.constraint(equalToConstant: 25),
            
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: textField.bottomAnchor,constant: 16),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: String(describing: ListTableViewCell.self),
            for:indexPath) as! ListTableViewCell
        
        let target = Items[indexPath.row]
        cell.img.image = target.iconImage
        cell.titleLabel.text = target.title
        cell.hashTag.text = target.hashtag
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(MainViewController(), animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}

