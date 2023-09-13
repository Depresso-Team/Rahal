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

/*
 case 2002
 {
     "id": 41,
     "username": "Abdalazemm",
     "email": "abdalazem.saleh2002@gmail.com",
     "phone": 1062690292,
     "address": "Egypt",
     "country_code": 1,
     "photo_url": "https://pbs.twimg.com/profile_images/881713129285185536/wzBq1O-8_400x400.jpg",
     "languages": "en",
     "is_guide": false,
     "session_message": "New user 'Abdalazemm' has been created! Welcome aboard!"
 }
 */


/*
 case 406
 {
     "username": [
         "This field is required."
     ],
     "email": [
         "user with this email already exists."
     ],
     "phone": [
         "user with this phone already exists."
     ]
 }
 */

