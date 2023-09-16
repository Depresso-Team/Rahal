//
//  TopTripsModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

struct TripsModel: Codable {
    let status: Bool
    let message: String
    let tours: [Trip]
}

struct Trip: Identifiable, Hashable, Codable {
    var id: Int
    let name: String
    let company_name: String
    let state_name: String
    let highest_location: String
    let highest_rate: Double
    let state_id: String
}
