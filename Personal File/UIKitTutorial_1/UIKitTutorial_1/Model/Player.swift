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
    let age : Date
    let image : String

    var formattedAge: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: age)
    }
}

extension Player {
    static var SampleData = [
        Player(name: "Lionel Messi", position: "RW", goal: 20, assist: 15, nationality: "Argentina", age: Date().addingTimeInterval(-31_536_000 * 36),image: "SJ.png"), // 36살
        Player(name: "Cristiano Ronaldo", position: "ST", goal: 23, assist: 12, nationality: "Portugal", age: Date().addingTimeInterval(-31_536_000 * 38), image: "SJ.png"), // 38살
        Player(name: "Kylian Mbappe", position: "LW", goal: 18, assist: 10, nationality: "France", age: Date().addingTimeInterval(-31_536_000 * 24), image: "SJ.png"), // 24살
        Player(name: "Erling Haaland", position: "ST", goal: 25, assist: 5, nationality: "Norway", age: Date().addingTimeInterval(-31_536_000 * 23), image: "SJ.png"), // 23살
        Player(name: "Kevin De Bruyne", position: "CM", goal: 10, assist: 20, nationality: "Belgium", age: Date().addingTimeInterval(-31_536_000 * 32), image: "SJ.png"), // 32살
        Player(name: "Robert Lewandowski", position: "ST", goal: 27, assist: 8, nationality: "Poland", age: Date().addingTimeInterval(-31_536_000 * 35), image: "SJ.png"), // 35살
        Player(name: "Neymar Jr.", position: "LW", goal: 15, assist: 12, nationality: "Brazil", age: Date().addingTimeInterval(-31_536_000 * 31), image: "SJ.png"), // 31살
        Player(name: "Luka Modric", position: "CM", goal: 5, assist: 10, nationality: "Croatia", age: Date().addingTimeInterval(-31_536_000 * 38), image: "SJ.png"), // 38살
        Player(name: "Harry Kane", position: "ST", goal: 22, assist: 9, nationality: "England", age: Date().addingTimeInterval(-31_536_000 * 30), image: "SJ.png"), // 30살
        Player(name: "Vinicius Jr.", position: "LW", goal: 13, assist: 12, nationality: "Brazil", age: Date().addingTimeInterval(-31_536_000 * 23), image: "SJ.png"), // 23살
        Player(name: "Mohamed Salah", position: "RW", goal: 20, assist: 10, nationality: "Egypt", age: Date().addingTimeInterval(-31_536_000 * 31), image: "SJ.png"), // 31살
        Player(name: "Virgil van Dijk", position: "CB", goal: 4, assist: 2, nationality: "Netherlands", age: Date().addingTimeInterval(-31_536_000 * 32), image: "SJ.png"), // 32살
        Player(name: "Casemiro", position: "CDM", goal: 6, assist: 4, nationality: "Brazil", age: Date().addingTimeInterval(-31_536_000 * 31), image: "SJ.png"), // 31살
        Player(name: "Alisson Becker", position: "GK", goal: 0, assist: 1, nationality: "Brazil", age: Date().addingTimeInterval(-31_536_000 * 30), image: "SJ.png"), // 30살
        Player(name: "Marc-André ter Stegen", position: "GK", goal: 0, assist: 0, nationality: "Germany", age: Date().addingTimeInterval(-31_536_000 * 31), image: "SJ.png"), // 31살
        Player(name: "Phil Foden", position: "CAM", goal: 10, assist: 8, nationality: "England", age: Date().addingTimeInterval(-31_536_000 * 23), image: "SJ.png"), // 23살
        Player(name: "Jude Bellingham", position: "CM", goal: 8, assist: 10, nationality: "England", age: Date().addingTimeInterval(-31_536_000 * 20), image: "SJ.png"), // 20살
        Player(name: "Antoine Griezmann", position: "CF", goal: 15, assist: 10, nationality: "France", age: Date().addingTimeInterval(-31_536_000 * 32), image: "SJ.png"), // 32살
        Player(name: "Son Heung-min", position: "LW", goal: 18, assist: 7, nationality: "South Korea", age: Date().addingTimeInterval(-31_536_000 * 31), image: "SJ.png"), // 31살
        Player(name: "João Cancelo", position: "RB", goal: 3, assist: 8, nationality: "Portugal", age: Date().addingTimeInterval(-31_536_000 * 29), image: "SJ.png") // 29살
    ]

}
