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
    
    @State private var tabSelection = 0
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $tabSelection) {
                CalendarView()
                    .tabItem {
                        Label("Calendar", systemImage: "calendar")
                    }
                    .tag(0)
                StreakView()
                    .tabItem {
                        Label("Streak", systemImage: "swift")
                    }
                    .tag(1)
            }
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
            .onOpenURL { url in
                print(url)
            }
        }
    }
}
