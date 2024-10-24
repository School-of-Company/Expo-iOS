//
//  TabBarView.swift
//  Expo-iOS
//
//  Created by 서지완 on 10/24/24.
//  Copyright © 2024 SchoolofCompany. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 1

    var body: some View {
        TabView(selection: $selectedTab) {
            MainView()
                .tabItem {
                    Image(selectedTab == 1 ? "onHome" : "offHome")
                    Text("홈")
                }
                .tag(1)

            MainView()
                .tabItem {
                    Image(selectedTab == 2 ? "onProgram" : "offProgram")
                    Text("프로그램")
                }
                .tag(2)

            MainView()
                .tabItem {
                    Image(selectedTab == 3 ? "onCheck" : "offCheck")
                    Text("명단 관리")
                }
                .tag(3)

            MainView()
                .tabItem {
                    Image(selectedTab == 4 ? "onExpo" : "offExpo")
                    Text("박람회생성")
                }
                .tag(4)

            MainView()
                .tabItem {
                    Image(selectedTab == 5 ? "onUser" : "offUser")
                    Text("프로필")
                }
                .tag(5)
        }
        .accentColor(ExpoIOSAsset.Color.main.swiftUIColor)
    }
}

#Preview {
    TabBarView()
}
