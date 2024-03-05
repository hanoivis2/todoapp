//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Gia Huy on 05/03/2024.
//

import SwiftUI

@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataStore())
        }
    }
}
