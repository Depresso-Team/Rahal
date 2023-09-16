//
//  GuideListServices.swift
//  Rahal
//
//  Created by Abdalazem Saleh on 2023-09-16.
//

import Foundation

protocol GuideListServicable {
    func fetchGuidesList() async throws -> [GuidesListModel]
}

struct GuideListServices: GuideListServicable, NetworkServices {
    func fetchGuidesList() async throws -> [GuidesListModel] {
        let data = try await request(endPoint: GuidesListEndPoint.fetchGuides, imagesData: nil)
        do {
            let guide = try JSONDecoder().decode([GuidesListModel].self, from: data)
            return guide
        } catch {
            throw error
        }
    }
}
