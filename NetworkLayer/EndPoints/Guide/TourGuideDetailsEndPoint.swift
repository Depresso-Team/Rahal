//
//  TourGuideDetailsEndPoint.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation
enum TourGuideDetailsEndpoint {
    case fetchTourGuideDetails(userID: Int) // You can add any required parameters if needed
}

extension TourGuideDetailsEndpoint: EndPoint {
    var path: String {
        switch self {
        case .fetchTourGuideDetails(_):
            return "waiting backend as wel l"
        }
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var header: [String : String]? {
        return [:]
    }
    
    var body: [String: Any]? {
        return nil
    }
}
