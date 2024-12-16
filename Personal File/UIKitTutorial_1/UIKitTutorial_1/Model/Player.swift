//
//  Reminder.swift
//  UIKitTutorial_1
//
//  Created by 김상준 on 12/16/24.
//

import Foundation

struct Player {
    let name: String
    let position: String
    let goal : Int
    let assist : Int
    let nationality : String
    let Age : Date
}

extension Player {
    static var SampleData = [
        Player( name: "Rashford", position: "LW", goal: 7, assist: 7, nationality: "England", Age:   Date().addingTimeInterval(800.0)),
        Player( name: "Rashford", position: "LW", goal: 7, assist: 7, nationality: "England", Age:   Date().addingTimeInterval(800.0)),
        Player( name: "Rashford", position: "LW", goal: 7, assist: 7, nationality: "England", Age:   Date().addingTimeInterval(800.0)),
        Player( name: "Rashford", position: "LW", goal: 7, assist: 7, nationality: "England", Age:   Date().addingTimeInterval(800.0)),
    ]
}
