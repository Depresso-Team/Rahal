//
//  RegisterViewModel.swift
//  Rahal
//
//  Created by ElAmir Mansour on 09/09/2023.
//

import Foundation

class SignupViewModel: ObservableObject {
    static let shared = SignupViewModel()
    private var services: RegisterServices!
    
    var responseHandler: ((_ error: Result<String, Error>) -> Void)?

    // MARK: - Variables
    @Published var fullName: String = ""
    @Published var email: String = ""
    @Published var phoneNumber: String = ""
    @Published var country: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var language: String = ""
    @Published var countryCity: String = ""
    @Published var area: String = ""
    @Published var streetNumber: String = ""
    @Published var addressLabel: String = ""

    // MARK: - Initilizer
    private init() {
        services = RegisterServices()
    }
    
    @MainActor
    func register() {
        Task {
            let body = [
                "username": fullName,
                "email": email,
                "password": password,
                "phone": phoneNumber,
                "address": "address",
                "country_code": 1,
                "photo_url": "https://pbs.twimg.com/profile_images/881713129285185536/wzBq1O-8_400x400.jpg",
                "languages": "en",
                "is_guide": false,
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
