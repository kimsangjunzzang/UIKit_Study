//
//  Item.swift
//  Week_4
//
//  Created by 김상준 on 7/19/24.
//

import Foundation
import UIKit

struct Item {
    var title: String
    var hashtag: String
    var image: String
    var iconImage: UIImage?
    
    init(title: String,
         hashtag: String,
         image: String
    ) {
        self.title = title
        self.hashtag = hashtag
        self.image = image
        self.iconImage = UIImage(named: image)
    }
}

var Items: [Item] = [
    Item(title: "차박하기 좋은 계정 전국 차박 명소는?", hashtag: "#가정의달 #캠핑", image: "camping"),
    Item(title: "초보 골퍼를 위한 라운딩 필수 준비물", hashtag: "#가정의달 #캠핑", image: "golf"),
    Item(title: "자동차 회사는 AI를 어떻게 활용할까?", hashtag: "#가정의달 #캠핑", image: "mobility"),
    Item(title: "봄맞이 떠나기 좋은 국내 여행지", hashtag: "#가정의달 #캠핑", image: "drive"),
    Item(title: "해외 유학 어떻게 준비하지?", hashtag: "#가정의달 #캠핑", image: "languagetraining"),
    Item(title: "자동차의 똑똑한 진화 텔레매틱스", hashtag: "#가정의달 #캠핑", image: "automobile"),
    Item(title: "엔테크 지금 해도 될까?", hashtag: "#가정의달 #캠핑", image: "yenfund"),
    Item(title: "온가족 나들이, 어디로 가야 할까?", hashtag: "#가정의달 #캠핑", image: "picnic")
]
