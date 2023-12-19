//
//  Color.swift
//  Spotify-Clone
//
//  Created by Mert Urhan on 19.12.2023.
//

import Foundation
import SwiftUI

extension Color {
    
    init(hex: UInt, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0,
            opacity: alpha
        )
    }

    
    static let spotifyGreen = Color(hex: 0x1db954)
    static let spotifyBlack = Color(hex: 0x191414)
    static let spotifyBlack2 = Color(hex: 0x212121)
    static let spotifyGray = Color(hex: 0x535353)
}
