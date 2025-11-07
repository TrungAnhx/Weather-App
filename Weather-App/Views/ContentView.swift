//  ContentView.swift
//  Weather-App
//
//  Created by TrungAnhx on 7/11/25.


import SwiftUI
internal import _LocationEssentials

struct ContentView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Your coordinate are: \(location.latitude), \(location.longitude)")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
            
        }
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
        .environmentObject(LocationManager())
}
