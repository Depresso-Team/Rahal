//
//  LoginViewModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    static let shared = LoginViewModel()
    private var services: LoginServicable!
    
    var responseHandler: ((_ error: Result<String, Error>) -> Void)?

    @Published var username: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    

    
    private init() {
        services = LoginServices()
    }
    
    func login() {
        
        Task {
            let parms = ["username": email, "password": password]
            do {
                let _ = try await services.login(parms: parms)
                
                responseHandler?(.success("Login successfully "))
            } catch {
                responseHandler?(.failure(error))
            }
        }
    }
}
