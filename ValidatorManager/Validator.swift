//
//  Validator.swift
//  LoginScreen
//
//  Created by Iraniya Naynesh on 16/04/25.
//

import Foundation

enum ValidatorType: String {
    case emailEmpty = "Email cannot be empty"
    case passwordEmpty = "Password cannot be empty"
    case passwordLength = "Password must be more than 8 charactes"
    case success = "Success"
}
