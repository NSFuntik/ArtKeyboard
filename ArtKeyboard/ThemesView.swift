//
//  ThemesView.swift
//  ArtKeyboard
//
//  Created by Günter on 22.06.21.
//

import SwiftUI

struct ThemesView: View {
    @State var showDetailThemeView = false
    @State var currentTheme: Int
    var body: some View {
        ScrollView {
            
                LazyVGrid(columns: [GridItem(GridItem.Size.fixed(CGFloat(300)), spacing: CGFloat(10), alignment: Alignment.center)]) {
                    
                    ForEach((0...12), id: \.self) { i in
                        if ((i%2) != 0) {
                            HStack{
                                Button(action: {$currentTheme.wrappedValue = i; showDetailThemeView = true
                                }, label: {
                                    Image("Theme\(i)").resizable().frame(width: 200, height: 300, alignment: .center).cornerRadius(10)
                                })
                                Button(action: {$currentTheme.wrappedValue = i+1; showDetailThemeView = true
                                }, label: {
                                    Image("Theme\(i+1)").resizable().frame(width: 200, height: 300, alignment: .center).cornerRadius(10)
                                })

                            }
                            
                        }
                    }
                }
            
        }
        .sheet(isPresented: $showDetailThemeView, content: {
            ThemeDetailView(currentTheme: $currentTheme.wrappedValue)
        })
        .navigationTitle("Themes")
    }
}

struct ThemesView_Previews: PreviewProvider {
    static var previews: some View {
        ThemesView(currentTheme: 1)
    }
}
//            HStack {
//
//                Button(action: {$currentTheme.wrappedValue = 1; DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                    showDetailThemeView = true
//                }  }, label: {
//                    Image("Theme1").resizable().frame(width: 200, height: 400, alignment: .center).cornerRadius(10)
//                })
//
//            }
//            HStack {
//                Button(action: {$currentTheme.wrappedValue = 2; DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                    showDetailThemeView = true
//                }  }, label: {
//                    Image("Theme2").resizable().frame(width: 200, height: 300, alignment: .center).cornerRadius(10)
//                })
//                Button(action: {$currentTheme.wrappedValue = 3; DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                    showDetailThemeView = true
//                } }, label: {
//                    Image("Theme3").resizable().frame(width: 200, height: 430, alignment: .center).cornerRadius(10)
//                })
//            }
//            Button(action: {$currentTheme.wrappedValue = 4; DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                showDetailThemeView = true
//            } }, label: {
//                Image("Theme4").resizable().frame(width: 200, height: 430, alignment: .center).cornerRadius(10)
//            })
