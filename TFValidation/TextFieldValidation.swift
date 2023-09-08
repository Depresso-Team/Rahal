//
//  TextFieldValidation.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 08/09/2023.
//

import UIKit

// MARK: - Validator factory
protocol ValidationRule {
    func validate(_ textField: UITextField) -> Bool
    var errorMessage: String { get }
}

struct PresenceValidationRule: ValidationRule {
    var errorMessage: String
    func validate(_ textField: UITextField) -> Bool {
        guard let text = textField.text, !text.isEmpty else {
            return false
        }
        return true
    }
}

// MARK: - Factory
class ValidatorFactory {
    static func makeFullNameValidator() -> ValidationRule {
        return PresenceValidationRule(errorMessage: "Check your full name")
    }
    
    static func makeEmailValidator() -> ValidationRule {
        return PresenceValidationRule(errorMessage: "Check your email")
    }
    
    static func makePhoneNumbereValidator() -> ValidationRule {
        return PresenceValidationRule(errorMessage: "Check your phone number")
    }
    
    static func makeNationalityValidator() -> ValidationRule {
        return PresenceValidationRule(errorMessage: "Check your Nationality")
    }

    static func makeCountryValidator() -> ValidationRule {
        return PresenceValidationRule(errorMessage: "Check your country")
    }

    static func makeCityValidator() -> ValidationRule {
        return PresenceValidationRule(errorMessage: "Check your city")
    }
    
    static func makeDestnationValidator() -> ValidationRule {
        return PresenceValidationRule(errorMessage: "Check your destnation")
    }
    
    static func makePasswordValidator() -> ValidationRule {
        return PresenceValidationRule(errorMessage: "Check your password")
    }
}

