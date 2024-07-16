//
//  Landmark.swift
//  Week_3
//
//  Created by 김상준 on 7/3/24.
//

import UIKit
import Foundation

struct Landmark {
    
    let name: String
    let image: String
    let iconImage: UIImage?
    var isFavorite: Bool
    
    init(
        name: String,
        image: String,
        isFavorite: Bool
    ) {
        self.name =  name
        self.image = image
        self.isFavorite = isFavorite
        iconImage = UIImage(named: image)
    }
    
}

var landmarks = [
    Landmark(
        name: "charleyrivers",
        image: "charleyrivers",
        isFavorite: true
    ),
    Landmark(
        name: "chilkoottrail",
        image: "chilkoottrail",
        isFavorite: true
    ),
    Landmark(
        name: "chincoteague",
        image: "chincoteague",
        isFavorite: true
    ),
    Landmark(
        name: "hiddenlake",
        image: "hiddenlake",
        isFavorite: true
    ),
    Landmark(
        name: "icybay",
        image: "icybay",
        isFavorite: true
    ),
    Landmark(
        name: "lakemcdonald",
        image: "lakemcdonald",
        isFavorite: true
    ),
    Landmark(
        name: "rainbowlake",
        image: "rainbowlake",
        isFavorite: true
    ),
    Landmark(
        name: "twinlake",
        image: "twinlake",
        isFavorite: true
    ),
    Landmark(
        name: "umbagog",
        image: "umbagog",
        isFavorite: true
    ),
    Landmark(
        name: "charleyrivers",
        image: "charleyrivers",
        isFavorite: true
    ),
    Landmark(
        name: "chilkoottrail",
        image: "chilkoottrail",
        isFavorite: true
    ),
    Landmark(
        name: "chincoteague",
        image: "chincoteague",
        isFavorite: true
    )
    
]

