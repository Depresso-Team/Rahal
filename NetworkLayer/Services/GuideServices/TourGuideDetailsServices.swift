//
//  TourGuideDetailsServices.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

protocol TourGuideDetailsServicable {
    func fetchTourGuideDetails(userID: Int) async throws -> GuideDetailsModel
}

struct TourGuideDetailsServices: TourGuideDetailsServicable, NetworkServices {
    func fetchTourGuideDetails(userID: Int) async throws -> GuideDetailsModel {
        let data = try await request(endPoint: TourGuideDetailsEndpoint.fetchTourGuideDetails(userID: userID), imagesData: nil)
        do {
            let tourGuideDetailsData = try JSONDecoder().decode(GuideDetailsModel.self, from: data)
            return tourGuideDetailsData
        } catch {
            throw error
        }
    }
}
