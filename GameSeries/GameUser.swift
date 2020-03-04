//
//  GameUser.swift
//  GameSeries
//
//  Created by sravan on 3/2/20.
//  Copyright © 2020 sravan. All rights reserved.
//

import Foundation
struct Amiibo: Decodable {
    let amiibo: [Player]
}
struct Player: Decodable {
    var name : String?
    var gameSeries : String?
    var head : String?
    var image : String?
    var character : String?
    var amiiboSeries:String?
    
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case gameSeries = "gameSeries"
        case head = "head"
        case image = "image"
        case character = "character"
        case amiiboSeries = "amiiboSeries"
    }
}

