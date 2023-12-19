//
//  ContentView.swift
//  Spotify-Clone
//
//  Created by Mert Urhan on 19.12.2023.
//

import SwiftUI

enum SelectedTitle {
    case all
    case music
    case podcasts
    case wrapped
    case profile
}

struct HomeView: View {
    
    @State var selectedTitle: SelectedTitle = .all
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.spotifyBlack.ignoresSafeArea()
                VStack {
                    TitleView(selectedTitle: $selectedTitle)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
