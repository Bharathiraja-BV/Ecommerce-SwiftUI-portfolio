//
//  OnboardingView.swift
//  ShopEase
//
//  Created by bharathiraj on 05/07/2026.
//


import SwiftUI

struct OnboardingView: View {

    let rootViewModel: RootViewModel

    @State private var viewModel = OnboardingViewModel()
    @State private var currentPage = 0

    var body: some View {

        VStack {

            TabView(selection: $currentPage) {

                ForEach(Array(viewModel.items.enumerated()), id: \.element.id) { index, item in

                    OnboardingCard(item: item)
                        .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            PageIndicator(
                currentPage: currentPage,
                totalPages: viewModel.items.count
            )
            .padding(.bottom, 30)
            
        }
        HStack {

            Button("Skip") {
                rootViewModel.showLogin()
            }
            .foregroundStyle(AppColors.textSecondary)

            Spacer()

            if viewModel.isLastPage(currentPage: currentPage) {

                PrimaryButton(title: "Get Started") {

                    UserDefaultsManager.shared.saveOnboardingStatus()
                    rootViewModel.showLogin()
                }
                .frame(width: 180)

            } else {

                PrimaryButton(title: "Next") {

                    withAnimation {

                        currentPage = viewModel.nextPage(currentPage: currentPage)
                    }

                }
                .frame(width: 150)
            }
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 30)
    }
}

//#Preview {
//    OnboardingView(rootViewModel: RootViewModel())
//}
