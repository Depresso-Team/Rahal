//
//  TripDetailsViewModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

class TripDetailsViewModel {
    static let shared = TripDetailsViewModel()
    private var services: TripDetailsServices!
    
    var responseHandler: ((_ result: Result<[TripDetailsModel], Error>) -> Void)?
    
    private init() {
        services = TripDetailsServices()
    }
    @MainActor
    func fetchTripDetails(tripID: Int) {
        Task {
            do {
                let _ = try await services.fetchTripDetails(tripID: tripID)
//                responseHandler?(true)
            } catch {
//                responseHandler?(false)
            }
        }
    }
}
