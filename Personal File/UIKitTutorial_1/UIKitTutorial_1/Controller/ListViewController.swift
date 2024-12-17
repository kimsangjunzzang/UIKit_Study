//
//  ReminderDataSource.swift
//  UIKitTutorial_1
//
//  Created by 김상준 on 12/16/24.
//

import UIKit

class ListViewController: UIViewController {

    var myTableView = ListView()
    let cellData = Player.SampleData

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myTableView
        setupTableView()
    }

    private func setupTableView() {
        myTableView.tableView.delegate = self
        myTableView.tableView.dataSource = self
        myTableView.tableView.register(PlayerCell.self, forCellReuseIdentifier: "Cell")
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? PlayerCell else { return UITableViewCell() }

        let player = cellData[indexPath.row]
        cell.nameLabel.text = player.name
        cell.playerImage.image = UIImage(named: player.image)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // InfoViewController로 화면 전환
        let infoVC = InfoViewController()
        infoVC.playerData = cellData[indexPath.row]

        // 화면 전환 (navigationController 사용)
        self.navigationController?.pushViewController(infoVC, animated: true)
    }
}

