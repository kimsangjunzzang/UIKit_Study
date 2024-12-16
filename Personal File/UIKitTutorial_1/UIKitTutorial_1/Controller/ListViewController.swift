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

    // 선택된 셀의 IndexPath를 추적
    var selectedIndexPath: IndexPath?

    override func loadView() {
        self.view = myTableView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        setupTableView()
    }

    private func setupTableView() {
        myTableView.tableView.delegate = self
        myTableView.tableView.dataSource = self
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let player = cellData[indexPath.row]
        cell.textLabel?.text = player.name
        cell.backgroundColor = .white // 초기화된 배경색
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 이전에 선택된 셀의 배경색 초기화
        if let previousIndexPath = selectedIndexPath {
            let previousCell = tableView.cellForRow(at: previousIndexPath)
            previousCell?.backgroundColor = .white
        }

        // 현재 선택된 셀의 배경색 변경
        let selectedCell = tableView.cellForRow(at: indexPath)
        selectedCell?.backgroundColor = .red

        // 선택된 IndexPath 업데이트
        selectedIndexPath = indexPath
    }
}
