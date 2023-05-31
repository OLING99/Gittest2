//
//  NC1App.swift
//  NC1
//
//  Created by OLING on 2023/05/31.
//

import SwiftUI

@main
struct NC1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
