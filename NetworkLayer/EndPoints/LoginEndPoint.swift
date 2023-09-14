//
//  LoginEndPoint.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

enum LoginEndPoint {
    case login([String: Any])
}

extension LoginEndPoint: EndPoint {
    var path: String {
        return "/users/login/"
    }
    var method: HTTPMethod {
        return .post
    }
    var header: [String: String]? {
        return nil
    }
    
    var body: [String: Any]? {
        switch self {
        case .login(let body):
            return body
        }
    }
}
