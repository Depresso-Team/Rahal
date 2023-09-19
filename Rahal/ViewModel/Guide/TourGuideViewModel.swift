//
//  TourGuideViewModel.swift
//  Rahal
//
//  Created by Abdalazem Saleh on 2023-09-16.
//

import Foundation

class TourGuideViewModel: ObservableObject {
    static let shared = TourGuideViewModel()
    private var services: GuideListServicable!
    
    @Published var guides: [GuidesListModel] = []
    
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    private init() {
        services = GuideListServices()
        Task {
            try await fetchGuides()
        }
    }
    
    @MainActor
    func fetchGuides() async throws {
        do {
            let guides = try await services.fetchGuidesList()
            self.guides = guides
        } catch {
            showErrorAlert(error: error)
        }
    }
    
    private func showErrorAlert(error: Error) {
        alertMessage = error.localizedDescription
        showAlert = true
    }
}
