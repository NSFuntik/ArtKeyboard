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
                Button(action: {currentTheme = 1;showDetailThemeView = true }, label: {
                    Image("Theme1").resizable().frame(width: 200, height: 400, alignment: .center).cornerRadius(10)
                })
                Button(action: {currentTheme = 2;showDetailThemeView = true}, label: {
                    Image("Theme2").resizable().frame(width: 200, height: 300, alignment: .center).cornerRadius(10)
                })
                .sheet(isPresented: $showDetailThemeView, content: {
                    ThemeDetailView(currentTheme: currentTheme)
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
