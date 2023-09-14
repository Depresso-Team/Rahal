//
//  TripDetailsEndPoint.swift
//  Rahal
//
//  Created by ElAmir Mansour on 14/09/2023.
//

import Foundation
enum TripDetailsEndpoint {
    case fetchTripDetails(id: Int) // You can add any required parameters if needed
}

extension TripDetailsEndpoint: EndPoint {
    var path: String {
        switch self {
        case .fetchTripDetails(_):
            return "the link when the back makes it"
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
