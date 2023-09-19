//
//  TripDetailsViewModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

class TripDetailsViewModel: ObservableObject {
    static let shared = TripDetailsViewModel()
    private var services: TripDetailsServices!
    
    @Published var trip: DetaildTrip?
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    private init() {
        services = TripDetailsServices()
    }
    
    @MainActor
    func fetchTripDetails(tripID: Int) async throws {
        do {
            let trip = try await services.fetchTripDetails(tripID: tripID)
            self.trip = trip
        } catch {
            showErrorAlert(error: error)
        }
    }
    
    private func showErrorAlert(error: Error) {
        alertMessage = error.localizedDescription
        showAlert = true
    }
}
