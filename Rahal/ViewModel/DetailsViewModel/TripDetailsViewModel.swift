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
    
    @Published var tripDetails: TripDetailsModel? // Change the type to represent a single TripDetailsModel
    
    var responseHandler: ((_ result: Result<TripDetailsModel, Error>) -> Void)? // Update the result type
    
    private init() {
        services = TripDetailsServices()
    }
    
    @MainActor
    func fetchTripDetails(tripID: Int) {
        Task {
            do {
                let tripDetailsData = try await services.fetchTripDetails(tripID: tripID)
                tripDetails = tripDetailsData // Assign the fetched data to tripDetails
                responseHandler?(.success(tripDetailsData)) // Use the .success result type
            } catch {
                tripDetails = nil // Handle errors by setting tripDetails to nil
                responseHandler?(.failure(error)) // Use the .failure result type
            }
        }
    }
}
