//
//  HTTPMethod.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//


import Foundation

enum HTTPMethod {
    case get
    case post
    case delete
    var method: String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
        case .delete:
            return "DELETE"
        }
    }
}
