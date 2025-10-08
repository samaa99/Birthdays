//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by Samaa Soltan on 08/10/2025.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: Friend.self)
    }
}
