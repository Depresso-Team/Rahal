//
//  SignUpModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

struct User: Codable {
    let name: String
    let email: String
}

struct RegisterParms {
    let fullName: String
    let email: String
    let phoneNumber: String
    let country: String
    let password: String
    let language: String
    let address: String
}
