//
//  ExpoButton.swift
//  Expo-iOS
//
//  Created by 서지완 on 10/25/24.
//  Copyright © 2024 SchoolofCompany. All rights reserved.
//

import SwiftUI

public struct ExpoButton: View {
    var text: String
    var horizontalPadding: CGFloat
    var verticalPadding: CGFloat
    var action: () -> Void

    @State private var isPressed = false

    public init(
        text: String,
        horizontalPadding: CGFloat = 16,
        verticalPadding: CGFloat = 8,
        action: @escaping () -> Void = {}
    ) {
        self.text = text
        self.horizontalPadding = horizontalPadding
        self.verticalPadding = verticalPadding
        self.action = action
    }

    public var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(text)
                .expoFont(.body2B)
                .expoColor(ExpoColor.white)
                .padding(.horizontal, horizontalPadding)
                .padding(.vertical, verticalPadding)
                .background(
                    RoundedRectangle(cornerRadius: 6)
                        .fill(isPressed ? ExpoColor.main300.swiftUIColor : ExpoColor.main.swiftUIColor)
                )
                .scaleEffect(isPressed ? 0.9 : 1.0)
        }
        .buttonStyle(PlainButtonStyle())
        .gesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in self.isPressed = true }
                .onEnded { _ in
                    self.isPressed = false
                    self.action()
                }
        )
    }
}
