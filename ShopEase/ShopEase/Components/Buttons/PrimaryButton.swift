//
//  PrimaryButton.swift
//  ShopEase
//
//  Created by bharathiraj on 04/07/2026.
//

import SwiftUI

struct PrimaryButton: View {

    let title: String
    let action: () -> Void

    var body: some View {

        Button(action: action) {

            Text(title)
                .font(AppFonts.button)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(AppColors.button)
                .cornerRadius(12)
        }
    }
}

#Preview {
    PrimaryButton(title: "Continue") {

    }
    .padding()
}
