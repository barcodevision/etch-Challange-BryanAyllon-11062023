//
//  Fetch_Challange_BryanAyllon_11062023App.swift
//  Fetch-Challange-BryanAyllon-11062023
//
//  Created by bryan on 11/16/23.
//

import SwiftUI

@main
struct Fetch_Challange_BryanAyllon_11062023App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
