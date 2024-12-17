//
//  InfoViewController.swift
//  UIKitTutorial_1
//
//  Created by 김상준 on 12/17/24.
//

import UIKit

class InfoViewController: UIViewController {

    var myInfoView = InfoView()
    var playerData: Player?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myInfoView
        view.backgroundColor = .white
        self.title = "선수 정보"

        guard let player = playerData else { return }

        myInfoView.nameLabel.text = playerData?.name
        myInfoView.ageLabel.text = String(describing: player.formattedAge)
        myInfoView.nationalityLabel.text = player.nationality
        myInfoView.assistLabel.text = String(describing: player.assist)
        myInfoView.assistLabel.text = String(describing: player.goal)
        myInfoView.positionLabel.text = player.position
        myInfoView.photoImageView.image = UIImage(named: player.image)
    }
}
