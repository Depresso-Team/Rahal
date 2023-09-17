//
//  TripDetailsEndPoint.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation

enum TripDetailsEndpoint {
    case fetchTripDetails(id: Int)
}

extension TripDetailsEndpoint: EndPoint {
    var path: String {
        switch self {
        case .fetchTripDetails(let id):
            return "/tours/\(id)/"
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
