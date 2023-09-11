//
//  HomeEndPoint.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

enum HomeEndpoint {
    case fetchData // You can add any required parameters if needed
}

extension HomeEndpoint: EndPoint {

    var path: String {
        return "/api/home"
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
