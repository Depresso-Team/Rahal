//
//  TourGuideDetailsViewModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

class TourGuideDetailsViewModel {
    static let shared = TourGuideDetailsViewModel()
    private var services: TourGuideDetailsServices!
    
    @Published var tourGuideDetails: TourGuideDetailsModel?
    
    var responseHandler: ((_ result: Result<TourGuideDetailsModel, Error>) -> Void)?
    
    private init() {
        services = TourGuideDetailsServices()
    }
    
    @MainActor
    func fetchTourGuideDetails(userID: Int) {
        Task {
            do {
                let tourGuideDetailsData = try await services.fetchTourGuideDetails(userID: userID)
                tourGuideDetails = tourGuideDetailsData
                responseHandler?(.success(tourGuideDetailsData))
            } catch {
                tourGuideDetails = nil
                responseHandler?(.failure(error))
            }
        }
    }
}
