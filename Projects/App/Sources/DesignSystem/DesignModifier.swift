//
//  FontModifier.swift
//  Expo-iOS
//
//  Created by 서지완 on 10/14/24.
//  Copyright © 2024 SchoolofCompany. All rights reserved.
//

import SwiftUI

typealias ExpoFont = ExpoIOSFontFamily.Pretendard
typealias ExpoColor = ExpoIOSAsset.Color

enum ExpoFontStyle {
    case title1M, title2B, title2R, title3B, title3R
    case body1B, body1R, body2B, body2R
    case caption1B, caption1R, caption2B, caption2R

    var fontConfig: (size: CGFloat, weight: UIFont.Weight, lineHeight: CGFloat) {
        switch self {
        case .title1M: return (30, .medium, 1.2)
        case .title2B: return (24, .semibold, 1.1)
        case .title2R: return (24, .regular, 1.1)
        case .title3B: return (20, .semibold, 1.2)
        case .title3R: return (20, .regular, 1.2)
        case .body1B: return (18, .semibold, 1.2)
        case .body1R: return (18, .regular, 1.2)
        case .body2B: return (16, .semibold, 1.4)
        case .body2R: return (16, .regular, 1.4)
        case .caption1B: return (14, .semibold, 1.4)
        case .caption1R: return (14, .regular, 1.4)
        case .caption2B: return (12, .semibold, 1.5)
        case .caption2R: return (12, .regular, 1.5)
        }
    }

    var uiFont: UIFont {
        let config = fontConfig
        return UIFont.systemFont(ofSize: config.size, weight: config.weight)
    }

    var font: Font {
        Font(uiFont)
    }

    var lineHeight: CGFloat {
        let config = fontConfig
        return config.size * config.lineHeight
    }
}

extension View {
    func expoFont(_ style: ExpoFontStyle) -> some View {
        let lineSpacing = style.lineHeight - style.fontConfig.size
        return self
            .font(style.font)
            .lineSpacing(lineSpacing)
            .padding(.vertical, lineSpacing / 2)
    }

    func expoColor(_ color: ExpoIOSColors) -> some View {
        self.foregroundColor(color.swiftUIColor)
    }

    func expoBackground(_ color: ExpoIOSColors) -> some View {
            self.background(color.swiftUIColor)
    }
}
