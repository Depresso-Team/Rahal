//
//  TopGuidesModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

struct GuidesModel: Codable {
    let status: Bool
    let message: String
    let guides: [Guide]
}

struct Guide: Identifiable, Hashable, Codable {
    let id: Int
    let username: String
    let personal_photo: String
    let rate: Double
}

struct GuidesListModel: Identifiable, Codable {
    let id: Int
    let age: Int
    let license: Int
    let address: String
    let rate: Double
    let reviews: String
    let personal_photo: String
    let Identity: String
}
