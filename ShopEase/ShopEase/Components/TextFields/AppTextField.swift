//
//  AppTextField.swift
//  ShopEase
//
//  Created by bharathiraj on 06/07/2026.
//

import SwiftUI

struct AppTextField: View {

    let title: String
    @Binding var text: String

    var body: some View {

        TextField(title, text: $text)
            .padding()
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(AppColors.border, lineWidth: 1)
            )
            .cornerRadius(12)
    }
}

#Preview {
    AppTextField(title: "Email", text: .constant(""))
        .padding()
}
