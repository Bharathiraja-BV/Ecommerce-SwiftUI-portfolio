//
//  LoginViewModel.swift
//  ShopEase
//
//  Created by bharathiraj on 06/07/2026.
//

import Foundation
import Observation

@Observable
final class LoginViewModel {

    var email = ""
    var password = ""

    var isPasswordVisible = false
    var rememberMe = false
    var isLoading = false

    var emailError = ""
    var passwordError = ""

    func validate() -> Bool {

        emailError = ""
        passwordError = ""

        if email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            emailError = "Email is required."
        }

        if password.isEmpty {
            passwordError = "Password is required."
        }

        return emailError.isEmpty && passwordError.isEmpty
    }
}
