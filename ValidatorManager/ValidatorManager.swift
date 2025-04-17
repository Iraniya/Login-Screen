//
//  ValidatorManager.swift
//  LoginScreen
//
//  Created by Iraniya Naynesh on 16/04/25.
//

import Foundation

protocol ValidatorService {
    func validateValue(_ email: String?, _ password: String?) -> ValidatorType
}

final class ValidatorManager: ValidatorService {
    
    //MARK: - Email validator
    func validateEmail(_ email: String?) -> ValidatorType {
        guard let email, !email.isEmpty else { return .emailEmpty }
        return .success
    }
    
    //MARK: - Password Validator
    func validatePassword(_ password: String?) -> ValidatorType {
        guard let password, !password.isEmpty else { return .passwordEmpty }
        guard password.count > 8 else { return .passwordLength }
        return .success
    }
    
    
    //MARK: - email password validator
    func validateValue(_ email: String?, _ password: String?) -> ValidatorType {
        //check for email
        let emailValidator = validateEmail(email)
        
        //check for password
        let passwordValidator = validatePassword(password)
        
        if emailValidator != .success {
            return emailValidator
        } else if passwordValidator != .success {
            return passwordValidator
        }
        //both sucsess return true
        return .success
    }
}
