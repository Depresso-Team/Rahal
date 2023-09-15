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
    let username: String
    let personal_photo: String
    let rate: Double
    let review: [String]
    let tour_ids: Int
}

/*
 {
     "id": 9,
     "username": "ali",
     "personal_photo": "https://rahal-app-efe3e7eff0b7.herokuapp.com/media/tours/default_photo.jpg",
     "rate": "0.00",
     "review": [],
     "tour_ids": [
         10
     ]
 }
 */
