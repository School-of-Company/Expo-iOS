//
//  FontModifier.swift
//  Expo-iOS
//
//  Created by 서지완 on 10/14/24.
//  Copyright © 2024 SchoolofCompany. All rights reserved.
//

import Foundation
import SwiftUI

typealias Expo = ExpoIOSFontFamily.Pretendard

extension View {
    func expoFont(_ font: ExpoIOSFontConvertible, size: CGFloat) -> some View {
        self.font(font.swiftUIFont(size: size))
    }
}
