//
//  LoginViewModel.swift
//  LoginScreen
//
//  Created by Iraniya Naynesh on 16/04/25.
//

import Foundation

final class LoginViewModel {
    
}

//MARK: - Login validator 
extension LoginViewModel: ValidatorService {
    func validateValue(_ email: String?, _ password: String?) -> ValidatorType {
        return ValidatorManager().validateValue(email, password)
    }
}
