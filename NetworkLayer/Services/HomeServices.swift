//
//  HomeServices.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation


protocol HomeServicable {
    func fetchHomeSliderData() async throws -> [SliderModel]
    func fetchTopTripsData() async throws -> [TripsModel]
    func fetchTopGuidesData() async throws -> GuidesModel
}

struct HomeServices: HomeServicable, NetworkServices {
    func fetchHomeSliderData() async throws -> [SliderModel] {
        let data = try await request(endPoint: HomeEndpoint.fetchHomeSlider, imagesData: nil)
        do {
            let homeSliderData = try JSONDecoder().decode([SliderModel].self, from: data)
            return homeSliderData
        } catch {
            throw error
        }
    }

    func fetchTopTripsData() async throws -> [TripsModel] {
        let data = try await request(endPoint: HomeEndpoint.fetchTopTrips, imagesData: nil)
        do {
            let topTripsData = try JSONDecoder().decode([TripsModel].self, from: data)
            print("data is \(topTripsData)")
            return topTripsData
        } catch {
            throw error
        }
    }

    func fetchTopGuidesData() async throws -> GuidesModel {
        let data = try await request(endPoint: HomeEndpoint.fetchTopGuides, imagesData: nil)
        do {
            let topGuidesData = try JSONDecoder().decode(GuidesModel.self, from: data)
            return topGuidesData
        } catch {
            throw error
        }
    }
}
