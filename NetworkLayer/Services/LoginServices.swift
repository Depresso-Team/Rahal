//
//  LoginServices.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation
protocol LoginServicable {
    func login(parms: [String: Any]) async throws -> UserModel
}

struct LoginServices: LoginServicable, NetworkServices {
    func login(parms: [String: Any]) async throws -> UserModel {
        let data = try await request(endPoint: LoginEndPoint.login(parms), imagesData: nil)
        do {
            let user = try JSONDecoder().decode(UserModel.self, from: data)
            return user
        } catch {
            throw error
        }
    }
}
