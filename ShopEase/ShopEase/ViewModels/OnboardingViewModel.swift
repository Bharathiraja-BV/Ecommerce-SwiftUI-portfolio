//
//  OnboardingViewModel.swift
//  ShopEase
//
//  Created by bharathiraj on 05/07/2026.
//


import Foundation
import Observation

@Observable
final class OnboardingViewModel {

    let items: [OnboardingItem] = [

        OnboardingItem(
            image: "shop_smarter",
            title: "Shop Smarter",
            subtitle: "Discover thousands of amazing products at the best price."
        ),

        OnboardingItem(
            image: "fast_delivery",
            title: "Fast Delivery",
            subtitle: "Track your order in real time."
        ),

        OnboardingItem(
            image: "payment_Img",
            title: "Secure Payment",
            subtitle: "Safe and secure checkout."
        )
    ]
    
    func nextPage(currentPage: Int) -> Int {
        return min(currentPage + 1, items.count - 1)
    }

    func isLastPage(currentPage: Int) -> Bool {
        return currentPage == items.count - 1
    }
}
