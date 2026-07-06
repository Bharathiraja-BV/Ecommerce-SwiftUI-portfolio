//
//  OnboardingView.swift
//  ShopEase
//
//  Created by bharathiraj on 04/07/2026.
//


import SwiftUI

struct OnboardingViewV: View {

    let rootViewModel: RootViewModel

    var body: some View {

        Text("Welcome to Eshop")
            .font(AppFonts.title)
    }
}

#Preview {
    OnboardingViewV(rootViewModel: RootViewModel())
}
