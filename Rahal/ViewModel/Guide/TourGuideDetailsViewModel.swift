//
//  TourGuideDetailsViewModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

class TourGuideDetailsViewModel: ObservableObject {
    
    static let shared = TourGuideDetailsViewModel()
    private var services: TourGuideDetailsServices!
        
    @Published var guide: GuideDetailsModel?
    
    private init() {
        services = TourGuideDetailsServices()
        Task {
            try await fetchTourGuideDetails(userID: 2)
        }
    }
    
    @MainActor
    func fetchTourGuideDetails(userID: Int) async throws {
        do {
            let guide = try await services.fetchTourGuideDetails(userID: userID)
            self.guide = guide
            print(guide)
        } catch {
            print( error)
        }
    }
}
