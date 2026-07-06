//
//  ShopEaseApp.swift
//  ShopEase
//
//  Created by bharathiraj on 04/07/2026.
//

import SwiftUI

@main
struct ShopEaseApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
