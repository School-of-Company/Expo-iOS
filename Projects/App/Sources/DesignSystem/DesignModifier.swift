//
//  FontModifier.swift
//  Expo-iOS
//
//  Created by 서지완 on 10/14/24.
//  Copyright © 2024 SchoolofCompany. All rights reserved.
//

import Foundation
import SwiftUI

typealias Font = ExpoIOSFontFamily.Pretendard
typealias Color = ExpoIOSAsset.Color

extension View {
    func expoFont(_ font: ExpoIOSFontConvertible, size: CGFloat) -> some View {
        self.font(font.swiftUIFont(size: size))
    }
    
    func expoColor(_ color: ExpoIOSColors) -> some View {
            self.foregroundColor(color.swiftUIColor)
    }
}
