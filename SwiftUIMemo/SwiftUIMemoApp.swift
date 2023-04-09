//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by 손옥무 on 2023/04/09.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
