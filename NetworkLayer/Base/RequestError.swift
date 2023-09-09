//
//  RequestError.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//


import Foundation

#warning("Change error base on back-end")
enum RequestError: Error {
    case decode
    case invalidURL
    case noResponse
    case unauthorized
    case unexpectedStatusCode
    case unknown
    
    var customMessage: String {
        switch self {
        case .decode:
            return "Decode error"
        case .unauthorized:
            return "Session expired"
        default:
            return "Unknown error"
        }
    }
}
