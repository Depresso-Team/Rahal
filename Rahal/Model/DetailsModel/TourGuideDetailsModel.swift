//
//  TourGuideDetailsModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation
struct TourGuideDetailsModel: Codable {
    let id: Int
    let username: String
    let personal_photo: String
    let rate: Double
    let review: [String]
    let tour_ids: Int
}
