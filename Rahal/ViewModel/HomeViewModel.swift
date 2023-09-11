//
//  HomeViewModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

class HomeViewModel {
    static let shared = HomeViewModel()
    private var services: HomeServices!
    
    var responseHandler: ((_ error: Bool) -> Void)?
    
    private init() {
        services = HomeServices()
    }
    
    @MainActor
    func fetchHomePageData() {
        Task {
            do {
                let homePageData = try await services.fetchHomePageData()
                // Process the home page data as needed
                responseHandler?(true)
            } catch {
                responseHandler?(false)
            }
        }
    }
}
