//
//  TripDetailsServices.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

protocol TripDetailsServicable {
    func fetchTripDetails(tripID: Int) async throws -> TripDetailsModel
}

struct TripDetailsServices: TripDetailsServicable, NetworkServices {
    func fetchTripDetails(tripID: Int) async throws -> TripDetailsModel {
        let data = try await request(endPoint: TripDetailsEndpoint.fetchTripDetails(id: tripID), imagesData: nil)
        do {
            let tripDetailsData = try JSONDecoder().decode(TripDetailsModel.self, from: data)
            return tripDetailsData
        } catch {
            throw error
        }
    }
}
