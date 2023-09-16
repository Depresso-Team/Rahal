//
//  TourGuideDetailsEndPoint.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

enum TourGuideDetailsEndpoint {
    case fetchTourGuideDetails(userID: Int)
}

extension TourGuideDetailsEndpoint: EndPoint {
    var path: String {
        switch self {
        case .fetchTourGuideDetails(let id):
            return "/users/guides/\(id)/"
        }
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var header: [String : String]? {
        return nil
    }
    
    var body: [String: Any]? {
        return nil
    }
}
