//
//  PageIndicator.swift
//  ShopEase
//
//  Created by bharathiraj on 05/07/2026.
//


import SwiftUI

struct PageIndicator: View {

    let currentPage: Int
    let totalPages: Int

    var body: some View {

        HStack(spacing: 8) {

            ForEach(0..<totalPages, id: \.self) { index in

                Capsule()
                    .fill(index == currentPage ? AppColors.primary : .gray.opacity(0.3))
                    .frame(width: index == currentPage ? 24 : 8,
                           height: 8)
                    .animation(.easeInOut, value: currentPage)
            }
        }
    }
}

#Preview {
    PageIndicator(currentPage: 1, totalPages: 3)
}