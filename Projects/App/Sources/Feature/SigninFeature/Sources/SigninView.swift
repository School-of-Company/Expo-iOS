//
//  SigninView.swift
//  Expo-iOS
//
//  Created by 서지완 on 10/24/24.
//  Copyright © 2024 SchoolofCompany. All rights reserved.
//

import SwiftUI

struct SigninView: View {
    @State private var emailTextField: String = ""
    @State private var passwordTextField: String = ""
    @State private var showError: Bool = false
    @State private var isActive = false
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                ExpoIOSAsset.Assets.expoLogo.swiftUIImage
                    .resizable()
                    .frame(width: 196, height: 60)
                    .padding(.top, 110)

                Text("관리자 로그인")
                    .expoFont(.title2B)
                    .padding(.top, 4)

                ExpoTextField(
                    "이메일을 입력해주세요",
                    text: $emailTextField,
                    title: "이메일",
                    errorText: "이메일을 잘못 입력했습니다.",
                    isError: showError,
                    onSubmit: {
                        if emailTextField.isEmpty {
                            showError = true
                        } else {
                            showError = false
                        }
                    }
                )
                .padding(.top, 40)

                ExpoTextField(
                    "비밀번호를 입력해주세요.",
                    text: $passwordTextField,
                    title: "비밀번호",
                    errorText: "비밀번호를 잘못 입력했습니다.",
                    isError: showError,
                    onSubmit: {
                        if passwordTextField.isEmpty {
                            showError = true
                        } else {
                            showError = false
                        }
                    }
                )
                .padding(.top, 20)

                HStack(spacing: 0) {
                    Text("아직 관리자 로그인을 안 하셨나요?")
                        .expoFont(.caption2R)
                        .expoColor(ExpoColor.gray300)

                    Text("ㅣ")
                        .padding(.horizontal, 5)
                        .expoFont(.caption2R)
                        .expoColor(ExpoColor.gray500)

                    Text("회원가입")
                        .expoFont(.caption2R)
                        .expoColor(ExpoColor.gray500)


                }
                .padding(.top, 24)

                ExpoButton(
                    text: "로그인",
                    horizontalPadding: 160,
                    verticalPadding: 14
                ){
                    self.isActive.toggle()
                }
                .navigationDestination(isPresented: $isActive) {
                    SignupView()
                }
                .padding(.top, 152)

                Spacer()
            }
        }
    }
}

#Preview {
    SigninView()
}
