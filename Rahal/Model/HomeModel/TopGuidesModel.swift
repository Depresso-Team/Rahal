//
//  TopGuidesModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation
struct TopGuidesModel: Codable {
    let id: Int
    let username: String
    let personal_photo: String
    let background_URL: String
    let rating : Int // the backend is working on it 
}

/*
 {
            "id": 1,
            "username": "string",
            "personal_photo": "https://wall.alphacoders.com/by_category.php?id=32&name=Video+Game+Wallpapers&filter=4K+Ultra+HD",
            "background_URL": "https://wall.alphacoders.com/by_category.php?id=32&name=Video+Game+Wallpapers&filter=4K+Ultra+HD"
        }
 */
