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
    
    var responseHandler: ((_ error: Bool) -> Void)?
    
    private init() {
        services = TourGuideDetailsServices()
    }
    @MainActor
    func fetchTourGuideDetails(userID: Int) {
        Task {
            do {
                let _ = try await services.fetchTourGuideDetails(userID: userID)
                responseHandler?(true)
            } catch {
                responseHandler?(false)
            }
        }
    }
}
