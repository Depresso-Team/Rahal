//
//  RegisterEndPoint.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

enum RegisterEndPoint {
    case register([String: Any])
}

extension RegisterEndPoint: EndPoint {
    var path: String {
        return "/api/register"
    }
    
    var method: HTTPMethod {
        return .post
    }
    
    var header: [String : String]? {
        return nil
    }
    
    var body: [String : Any]? {
        switch self {
        case .register(let parms):
            return parms
        }
    }
}
