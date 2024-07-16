//
//  ItemTableViewCell.swift
//  Week_3
//
//  Created by 김상준 on 7/3/24.
//

import UIKit

class LandmarkTableViewCell: UITableViewCell {

    @IBOutlet weak var LandmarkImage: UIImageView!
    
    @IBOutlet weak var LandmarkName: UILabel!
    
    @IBOutlet weak var LandmarkFavorite: UIButton!
    
    @IBOutlet weak var LandmarkDetail: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool
    ) {
        super.setSelected(selected, animated: animated)

    }

}
