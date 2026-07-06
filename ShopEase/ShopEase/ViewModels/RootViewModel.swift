//
//  RootViewModel.swift
//  ShopEase
//
//  Created by bharathiraj on 04/07/2026.
//

import Foundation
import Observation

@Observable
final class RootViewModel {

    var currentRoute: AppRoute = .splash

    func showOnboarding() {
        currentRoute = .onboarding
    }

    func showLogin() {
        currentRoute = .login
    }

    func showHome() {
        currentRoute = .home
    }
    func decideInitialRoute() {

        if UserDefaultsManager.shared.hasSeenOnboarding() {
            currentRoute = .login
        } else {
            currentRoute = .onboarding
        }
    }
}
