//
//  EndPoint.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//


import Foundation

protocol EndPoint {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var header: [String: String]? { get }
    var body: [String: Any]? { get }
}

extension EndPoint {
    var scheme: String {
        return "https"
    }
    
    var host: String {
        return "rahal-app-efe3e7eff0b7.herokuapp.com"
    }
}
