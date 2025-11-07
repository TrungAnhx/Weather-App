//
//  Weather_AppApp.swift
//  Weather-App
//
//  Created by TrungAnhx on 7/11/25.
//

import SwiftUI

@main
struct Weather_AppApp: App {
    @StateObject private var locationManager = LocationManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(locationManager)
        }
    }
}
