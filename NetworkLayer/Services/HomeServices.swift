//
//  HomeServices.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

protocol HomeServicable {
    func fetchHomePageData() async throws -> UserModel
}

struct HomeServices: HomeServicable, NetworkServices {
    func fetchHomePageData() async throws -> UserModel {
        let data = try await request(endPoint: HomeEndpoint.fetchData, imagesData: nil)
        do {
            let homePageData = try JSONDecoder().decode(UserModel.self, from: data)
            return homePageData
        } catch {
            throw error
        }
    }
}
