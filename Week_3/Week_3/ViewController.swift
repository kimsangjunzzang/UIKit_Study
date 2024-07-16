//
//  ViewController.swift
//  Week_3
//
//  Created by 김상준 on 7/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int
    ) -> Int {
        return landmarks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: String(describing: LandmarkTableViewCell.self),
            for:indexPath) as! LandmarkTableViewCell
        
        let target = landmarks[indexPath.row]
        cell.LandmarkImage.image = target.iconImage
        cell.LandmarkName.text = target.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath
    ) -> CGFloat {
        return 60
    }
}

