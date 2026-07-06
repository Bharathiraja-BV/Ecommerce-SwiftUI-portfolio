//
//  RootView.swift
//  ShopEase
//
//  Created by bharathiraj on 04/07/2026.
//

import SwiftUI

struct RootView: View {

    @State private var viewModel = RootViewModel()

    var body: some View {

        switch viewModel.currentRoute {

        case .splash:
            SplashView(rootViewModel: viewModel)

        case .onboarding:
            OnboardingView(rootViewModel: viewModel)

        case .login:
            Text("Login")

        case .home:
            Text("Home")
        }
    }
}

#Preview {
    RootView()
}
