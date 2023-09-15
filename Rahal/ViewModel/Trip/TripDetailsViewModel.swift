//
//  TripDetailsViewModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

class TripDetailsViewModel {
    static let shared = TripDetailsViewModel()
//    private var services: TripDetailsServices!
    
    @Published var tripId: Int = 0
    
//    @Published var tripDetails: [DetaildTrip] = []
    
    @Published var showAlert = false
    @Published var alertMessage = ""
    
//    private init() {
//        services = TripDetailsServices()
//        Task {
////            try await fetchTripDetails(tripID: tripId)
//        }
//    }
    
//    @MainActor
//    func fetchTripDetails(tripID: Int) async throws {
//        do {
//            let tripDetailsData = try await services.fetchTripDetails(tripID: tripID)
//            tripDetails = tripDetailsData.results
//        } catch {
//            showErrorAlert(error: error)
//        }
//    }
    
    private func showErrorAlert(error: Error) {
        alertMessage = error.localizedDescription
        showAlert = true
    }
}
