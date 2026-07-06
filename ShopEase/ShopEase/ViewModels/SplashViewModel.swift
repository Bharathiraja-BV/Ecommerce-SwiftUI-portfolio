//
//  SplashViewModel.swift
//  ShopEase
//
//  Created by bharathiraj on 04/07/2026.
//

import Foundation
import Observation
@Observable
final class SplashViewModel {

    var scale: CGFloat = 0.7
    var opacity: Double = 0

        func loadApp() async {
               try? await Task.sleep(for: .seconds(2))
           }
}
