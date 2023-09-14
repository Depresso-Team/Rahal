//
//  TourGuideDetailsServices.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

protocol TourGuideDetailsServicable {
    func fetchTourGuideDetails(userID: Int) async throws -> TourGuideDetailsModel
}

struct TourGuideDetailsServices: TourGuideDetailsServicable, NetworkServices {
    func fetchTourGuideDetails(userID: Int) async throws -> TourGuideDetailsModel {
        let data = try await request(endPoint: TourGuideDetailsEndpoint.fetchTourGuideDetails(userID: userID), imagesData: nil)
        do {
            let tourGuideDetailsData = try JSONDecoder().decode(TourGuideDetailsModel.self, from: data)
            return tourGuideDetailsData
        } catch {
            throw error
        }
    }
}
