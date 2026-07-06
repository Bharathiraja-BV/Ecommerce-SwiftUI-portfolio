//
//  SecureTextField.swift
//  ShopEase
//
//  Created by bharathiraj on 06/07/2026.
//

import SwiftUI

struct SecureTextField: View {

    let title: String

    @Binding var text: String

    @Binding var isSecure: Bool

    var body: some View {

        HStack {

            if isSecure {

                SecureField(title, text: $text)

            } else {

                TextField(title, text: $text)
            }

            Button {

                isSecure.toggle()

            } label: {

                Image(systemName: isSecure ? "eye.slash" : "eye")
            }
        }
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
    SecureTextField(
        title: "Password",
        text: .constant(""),
        isSecure: .constant(true)
    )
    .padding()
}
