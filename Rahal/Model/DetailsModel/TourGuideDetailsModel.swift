//
//  TourGuideDetailsModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation
struct TourGuideDetailsModel: Codable {
    // we will add more depends on the api 
    let id: Int
    let name: String
    let bio: String
    let imageUrl: String 
}
