//
//  OnboardingCard.swift
//  ShopEase
//
//  Created by bharathiraj on 05/07/2026.
//


import SwiftUI

struct OnboardingCard: View {

    let item: OnboardingItem

    var body: some View {

        VStack(spacing: 35) {

            Image(item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 280, height: 280)
                .foregroundStyle(AppColors.primary)

            Text(item.title)
                .font(AppFonts.title)
                .foregroundStyle(AppColors.textPrimary)
                .multilineTextAlignment(.center)

            Text(item.subtitle)
                .font(AppFonts.body)
                .foregroundStyle(AppColors.textSecondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 30)
                .lineSpacing(4)
        }
    }
}

#Preview {
    OnboardingCard(
        item: OnboardingItem(
            image: "",
            title: "Shop Smarter",
            subtitle: "Discover products easily."
        )
    )
}
