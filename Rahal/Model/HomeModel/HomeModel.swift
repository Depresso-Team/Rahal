//
//  HomeModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

// We could use these

struct Location {
    let latitude: Double
    let longitude: Double
}
struct Media {
    let imageUrl: URL
    let description: String
}
struct Rating {
    let averageRating: Double
    let numberOfReviews: Int
}
struct OpeningHours {
    let openTime: String
    let closeTime: String
}
struct ContactInfo {
    let phoneNumber: String
    let emailAddress: String
    let websiteUrl: URL
}
struct Availability {
    let isAvailable: Bool
    let price: Double
}
struct UserFavorites {
    let isFavorite: Bool
}
struct TourCategory {
    let name: String
}
struct LocalizedContent {
    let languageCode: String
    let translatedTitle: String
    let translatedDescription: String
}
