//
//  TripDetailsModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation
struct TripDetailsModel: Codable {
    // we will add depends on the api
    let id: Int
    let title: String
    let description: String
    let duration: String
    let price: Double
}
