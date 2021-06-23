//
//  ContentView.swift
//  ArtKeyboard
//
//  Created by Günter on 22.06.21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var deviceColorScheme: ColorScheme
    @State private var selectedTab = 1
    let numTabs = 2
    let minDragTranslationForSwipe: CGFloat = 50
//    init() {
//        UITabBar.appearance().isHidden = true
//    }
    var body: some View {
        TabView(selection: $selectedTab) {
            SetKeyboardView()
                .ignoresSafeArea()
                .tabItem { Image(systemName: "keyboard") }.tag(0)
            ThemesView()
                .ignoresSafeArea()
                .tabItem { Image(systemName: "square.grid.2x2") }.tag(1)
        }
        .ignoresSafeArea()
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
        .colorScheme(.dark)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        .animation(.easeInOut)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
