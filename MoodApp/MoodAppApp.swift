//
//  MoodAppApp.swift
//  MoodApp
//
//  Created by ROTSEVENKOV, MATVEY V. on 4/21/25.
//

import SwiftUI

@main
struct MoodAppApp: App {
    @StateObject private var moodModel = MoodModel()

    var body: some Scene {
        WindowGroup {
            Dashboard()
                .environmentObject(moodModel)
        }
    }
}
