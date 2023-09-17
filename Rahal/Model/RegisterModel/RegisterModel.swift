//
//  SignUpModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

/// User model is the model that hold json data.
struct UserModel: Codable {
    let id: Int
    let username: String
    let email: String
    let phone: Int?
    let address: String
    let country_code: Int?
    let photo_url: String
    let languages: String
    let is_guide: Bool
    let session_message: String
}

struct RegisterParms {
    let username: String
    let email: String
    let password: String
    let phone: Int
    let address: String
    let country_code: Int
    let photo_url: String
    let languages: String
    let is_guide: Bool
}
