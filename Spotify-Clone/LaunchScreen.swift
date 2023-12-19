//
//  LaunchScreen.swift
//  Spotify-Clone
//
//  Created by Mert Urhan on 19.12.2023.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            Image("spotify_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128, alignment: .center)
        }
    }
}

#Preview {
    LaunchScreen()
}
