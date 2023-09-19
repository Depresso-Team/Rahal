//
//  GuidesListEndPoint.swift
//  Rahal
//
//  Created by Abdalazem Saleh on 2023-09-16.
//

import Foundation

enum GuidesListEndPoint {
    case fetchGuides
}

extension GuidesListEndPoint: EndPoint {
    var path: String {
        return "/users/guides/"
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
