//
//  LoginViewModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

class LoginViewModel {
    static let shared = LoginViewModel()
    private var services: LoginServicable!
    
    var responseHandler: ((_ error: Bool) -> Void)?
    
    private init() {
        services = LoginServices()
    }
    
    @MainActor
    func login (parms:LoginParms) {
        Task {
            
            let parms = ["email" : parms.email,
                         "password" : parms.password]
            do{
                let _ = try await services.login(parms: parms)
                return responseHandler?(true)
            }catch{
                responseHandler?(false)
            }
        }
    }
 
}
