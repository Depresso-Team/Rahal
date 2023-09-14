//
//  TopTripsModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation
struct TopTripsModel: Codable {
    
    let id: Int
    let name: String
    let location: String
    let company_name: String
    let state_id: String
    let rate: Int
 
}

/*
 {
   "id": 0,
   "name": "string",
   "location": "string",
   "company_name": "string",
   "state_id": "1",
   "rate": 0
 }
 */
