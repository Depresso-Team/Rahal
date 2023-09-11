//
//  RegisterServices.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

protocol RegisterServicable {
    func register(parms: [String: Any]) async throws -> UserModel
}

struct RegisterServices: RegisterServicable, NetworkServices {
    func register(parms: [String : Any]) async throws -> UserModel {
        let data = try await request(endPoint: RegisterEndPoint.register(parms), imagesData: nil)
        do {
            let user = try JSONDecoder().decode(UserModel.self, from: data)
            return user
        } catch {
            throw error
        }
    }
}
