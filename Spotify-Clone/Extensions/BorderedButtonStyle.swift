//
//  ButtonStyle+.swift
//  Spotify-Clone
//
//  Created by Mert Urhan on 19.12.2023.
//

import Foundation
import SwiftUI

struct BorderedButtonStyle: ButtonStyle {
    var backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(12)
            .background(backgroundColor)
            .cornerRadius(24)
            .frame(height: 20)
    }
}
