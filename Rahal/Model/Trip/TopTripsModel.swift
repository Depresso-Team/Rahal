//
//  TopTripsModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

struct TripsModel: Identifiable, Codable {
    var id: Int
    let state_name: String
    let name: String
    let photo: String
    let description: String
    let price: Int
    let duration: Int
    let company_name: String
    let location: String
    let state_id: String
    let rate: Double
}
