//
//  readerCornerApp.swift
//  readerCorner
//
//  Created by Apprenant 16 on 02/01/2023.
//

import SwiftUI

@main
struct readerCornerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
