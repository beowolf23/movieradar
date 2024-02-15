//
//  movieradarApp.swift
//  movieradar
//
//  Created by beowolf23 on 18.01.2024.
//

import SwiftUI
import FirebaseCore

@main
struct movieRadarApp: App {
    
    init() {
        FirebaseApp.configure()
        print("Firebase configured")
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
