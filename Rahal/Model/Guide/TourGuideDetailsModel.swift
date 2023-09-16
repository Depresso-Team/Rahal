//
//  TourGuideDetailsModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

struct GuideDetailsModel: Identifiable, Codable {
    let id: Int
    let username: String
    let personal_photo: String
    let age: Int
    let license: Int
    let address: String
    let rate: String
    let review: [Review]
    let tour_list: [GuideToursModel]
}

struct Review: Codable {
    let review: String
}

struct GuideToursModel: Identifiable, Codable {
    let id: Int
    let name: String
    let price: Int
    let state_id: String
    let location: String
    let duration: Int
}
