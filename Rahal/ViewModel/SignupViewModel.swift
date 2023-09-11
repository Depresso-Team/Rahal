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
    
    var responseHandler: ((_ error: Bool) -> Void)?

    private init() {
        services = RegisterServices()
    }
    
    @MainActor
    func register(parms: RegisterParms) {
        Task {
            let parms = [
                "name": parms.fullName,
                "email": parms.email,
                "phone": parms.phoneNumber,
                "coutnry": parms.country,
                "password": parms.password,
                "language": parms.language,
                "address": parms.address
            ]
            
            do {
                let _ = try await services.register(parms: parms)
                responseHandler?(true)
            } catch {
                responseHandler?(false)
            }
        }
    }
}
