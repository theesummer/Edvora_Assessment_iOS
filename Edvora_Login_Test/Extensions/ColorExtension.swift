//
//  UIColorExtension.swift
//  Edvora_Login_Test
//
//  Created by Swaroop Kurra on 18/11/21.
//

import Foundation
import UIKit
import SwiftUI

extension Color {
    public init(hex: String) {
            let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
            var int: UInt64 = 0
            Scanner(string: hex).scanHexInt64(&int)
            let a, r, g, b: UInt64
            switch hex.count {
            case 3: // RGB (12-bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (1, 1, 1, 0)
            }

            self.init(
                .sRGB,
                red: Double(r) / 255,
                green: Double(g) / 255,
                blue:  Double(b) / 255,
                opacity: Double(a) / 255
            )
        }
}

//MARK: Colors
extension Color {
    static let textFieldBG = Color(hex: "#f9f9f9")
    
    static let lightPurple = Color(hex: "#BF9B9B")
    
    static let purple = Color(hex: "#733D47")
    
    static let darkText = Color(hex: "#272727")
    
    static let lightText = Color(hex: "#B0B0B0")
}

