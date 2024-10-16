//
//  FontModifier.swift
//  Expo-iOS
//
//  Created by 서지완 on 10/14/24.
//  Copyright © 2024 SchoolofCompany. All rights reserved.
//

import Foundation
import SwiftUI

typealias ExpoFont = ExpoIOSFontFamily.Pretendard
typealias ExpoColor = ExpoIOSAsset.Color

extension View {
    func expoFont(_ font: ExpoIOSFontConvertible, size: CGFloat) -> some View {
        self.font(font.swiftUIFont(size: size))
    }
    // .expoFont(ExpoFont.폰트명, size: 크기)
    
    func expoColor(_ color: ExpoIOSColors) -> some View {
            self.foregroundColor(color.swiftUIColor)
    }
    // .expoColor(ExpoColor.컬러명)
    
    // 다른 Assets 사용 예시코드
    // ExpoIOSAsset.Assets명.이미지명.swiftUIImage
}
