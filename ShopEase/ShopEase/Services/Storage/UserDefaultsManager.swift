//
//  UserDefaultsManager.swift
//  ShopEase
//
//  Created by bharathiraj on 06/07/2026.
//


import Foundation

final class UserDefaultsManager {

    static let shared = UserDefaultsManager()

    private init() { }

    func saveOnboardingStatus() {
        UserDefaults.standard.set(true, forKey: AppConstants.hasSeenOnboarding)
    }

    func hasSeenOnboarding() -> Bool {
        UserDefaults.standard.bool(forKey: AppConstants.hasSeenOnboarding)
    }
}