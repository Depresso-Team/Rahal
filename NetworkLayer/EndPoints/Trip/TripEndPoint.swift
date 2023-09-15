//
//  TripEndPoint.swift
//  Rahal
//
//  Created by Abdalazem Saleh on 2023-09-15.
//

import Foundation

enum TripEndPoint {
    case fetchTrips
}

extension TripEndPoint: EndPoint {
    var path: String {
        return "/tours/list/"
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
