//
//  SplashView.swift
//  ShopEase
//
//  Created by bharathiraj on 04/07/2026.
//

import SwiftUI

struct SplashView: View {
    let rootViewModel: RootViewModel
    @State private var viewModel = SplashViewModel()

       @State private var scale: CGFloat = 0.7
       @State private var opacity: Double = 0.0
    var body: some View {
        
        ZStack {
            
            AppColors.background
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                Image("AppImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .foregroundColor(AppColors.primary)
                
                Text("Eshop")
                    .font(AppFonts.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(AppColors.textPrimary)
                PrimaryButton(title: "Continue") {
                    
                }
                
            }
            .scaleEffect(scale)
            .opacity(opacity)
        }
        .task {

            withAnimation(.easeInOut(duration: 1.2)) {
                            scale = 1.0
                            opacity = 1.0
                        }

                        await viewModel.loadApp()
            rootViewModel.decideInitialRoute()
               }
    }
}

//#Preview {
//    SplashView()
//}
