//
//  RegisterViewModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

class SignupViewModel {
    static let shared = SignupViewModel()
    private var services: RegisterServices!
    
    var responseHandler: ((_ error: Result<String, Error>) -> Void)?

    private init() {
        services = RegisterServices()
    }
    
    @MainActor
    func register(parms: RegisterParms) {
        Task {
            let body = [
                "username": parms.username,
                "email": parms.email,
                "password": parms.password,
                "phone": parms.phone,
                "address": parms.address,
                "country_code": parms.country_code,
                "photo_url": "https://pbs.twimg.com/profile_images/881713129285185536/wzBq1O-8_400x400.jpg",
                "languages": "en",
                "is_guide": parms.is_guide,
                "session_message": ""
            ] as [String : Any]
            
            do {
                let user = try await services.register(parms: body)
                responseHandler?(.success("User creat successfuly"))
            } catch {
                responseHandler?(.failure(error))
            }
        }
    }
}
