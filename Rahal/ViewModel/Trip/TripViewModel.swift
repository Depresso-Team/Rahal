//
//  TripViewModel.swift
//  Rahal
//
//  Created by Abdalazem Saleh on 2023-09-15.
//

import Foundation

class TripViewModel: ObservableObject {
    static let shared = TripViewModel()
    private var services: TripServicable!
    
    @Published var tripDetails: [DetaildTrip] = []
    
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    private init() {
        services = TripServices()
        Task {
            try await fetchTrips()
        }
    }
    
    @MainActor
    func fetchTrips() async throws {
        do {
            let trips = try await services.fetchTripDetails()
            tripDetails = trips.results
        } catch {
            showErrorAlert(error: error)
        }
    }
    
    private func showErrorAlert(error: Error) {
        alertMessage = error.localizedDescription
        showAlert = true
    }
}
