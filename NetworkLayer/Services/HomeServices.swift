//
//  HomeServices.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation


protocol HomeServicable {
    func fetchHomeSliderData() async throws -> HomeSliderModel
    func fetchTopTripsData() async throws -> TopTripsModel
    func fetchTopGuidesData() async throws -> TopGuidesModel
}

struct HomeServices: HomeServicable, NetworkServices {
    func fetchHomeSliderData() async throws -> HomeSliderModel {
        let data = try await request(endPoint: HomeEndpoint.fetchHomeSlider, imagesData: nil)
        do {
            let homeSliderData = try JSONDecoder().decode(HomeSliderModel.self, from: data)
            return homeSliderData
        } catch {
            throw error
        }
    }

    func fetchTopTripsData() async throws -> TopTripsModel {
        let data = try await request(endPoint: HomeEndpoint.fetchTopTrips, imagesData: nil)
        do {
            let topTripsData = try JSONDecoder().decode(TopTripsModel.self, from: data)
            return topTripsData
        } catch {
            throw error
        }
    }

    func fetchTopGuidesData() async throws -> TopGuidesModel {
        let data = try await request(endPoint: HomeEndpoint.fetchTopGuides, imagesData: nil)
        do {
            let topGuidesData = try JSONDecoder().decode(TopGuidesModel.self, from: data)
            return topGuidesData
        } catch {
            throw error
        }
    }
}
