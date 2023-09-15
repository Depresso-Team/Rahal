//
//  TripServices.swift
//  Rahal
//
//  Created by Abdalazem Saleh on 2023-09-15.
//

import Foundation

protocol TripServicable {
    func fetchTripDetails() async throws -> TripListModel
}

struct TripServices: TripServicable, NetworkServices {
    func fetchTripDetails() async throws -> TripListModel {
        let data = try await request(endPoint: TripEndPoint.fetchTrips, imagesData: nil)
        do {
            let tripDetailsData = try JSONDecoder().decode(TripListModel.self, from: data)
            return tripDetailsData
        } catch {
            throw error
        }
    }
}
