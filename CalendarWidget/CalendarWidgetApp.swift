//
//  CalendarWidgetApp.swift
//  CalendarWidget
//
//  Created by Karina gurachevskaya on 21.11.22.
//

import SwiftUI

@main
struct CalendarWidgetApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
