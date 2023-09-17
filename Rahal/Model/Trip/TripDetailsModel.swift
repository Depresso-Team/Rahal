//
//  TripDetailsModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation
struct TripListModel: Codable {
    let count: Int
    let results: [DetaildTrip]
}

struct DetaildTrip: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let price: Int
    let state_id: String
    let company_name: String
    let duration: Int
    let location: String
    let rate: Double
    let saved: Bool
    let photo: String?
    let guide: Int?
    let reviews: [Review]
}

