//
//  HomeEndPoint.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

//enum HomeSection {
//    case homeSlider
//    case topTrips
//    case topGuides
//
//    var endpoint: HomeEndpoint {
//        switch self {
//        case .homeSlider:
//            return .fetchHomeSlider
//        case .topTrips:
//            return .fetchTopTrips
//        case .topGuides:
//            return .fetchTopGuides
//        }
//    }
//}

enum HomeEndpoint {
    case fetchHomeSlider
    case fetchTopTrips
    case fetchTopGuides
}

extension HomeEndpoint: EndPoint {
    var path: String {
        switch self {
        case .fetchHomeSlider:
            return "/home/banner/"
        case .fetchTopTrips:
            return "/best_tours/"
        case .fetchTopGuides:
            return "/users/highest_rated_guide/"
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
