//
//  LoginModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation


struct UserModel: Codable {
    let name: String
    let email: String
}
struct LoginParms {
    let email: String
    let password: String
}
