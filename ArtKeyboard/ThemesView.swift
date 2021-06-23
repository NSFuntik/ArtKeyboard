//
//  ThemesView.swift
//  ArtKeyboard
//
//  Created by Günter on 22.06.21.
//

import SwiftUI

struct ThemesView: View {
    @State var showDetailThemeView = false
    @State var currentTheme: Int = 0
    var body: some View {
        ScrollView {
            HStack {
                Button(action: {showDetailThemeView = true; currentTheme = 1}, label: {
                    Image("Theme1").resizable().frame(width: 200, height: 400, alignment: .center).cornerRadius(10)
                })
                Button(action: {showDetailThemeView = true; currentTheme = 2}, label: {
                    Image("Theme2").resizable().frame(width: 200, height: 300, alignment: .center).cornerRadius(10)
                })
                .sheet(isPresented: $showDetailThemeView, content: {
                    ThemeDetailView(currentTheme: 2)
                })

            }
        }
    }
}

struct ThemesView_Previews: PreviewProvider {
    static var previews: some View {
        ThemesView()
    }
}
