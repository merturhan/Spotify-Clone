//
//  Spotify_CloneApp.swift
//  Spotify-Clone
//
//  Created by Mert Urhan on 19.12.2023.
//

import SwiftUI

@main
struct Spotify_CloneApp: App {
    @State var launchScreenActive: Bool = true
    var body: some Scene {
        WindowGroup {
            if launchScreenActive {
                LaunchScreen()
                    .onAppear {
                        DispatchQueue.global().asyncAfter(deadline: .now() + 1, execute: {
                            launchScreenActive = false
                        })
                    }
            } else {
                HomeView()
            }
        }
    }
}
