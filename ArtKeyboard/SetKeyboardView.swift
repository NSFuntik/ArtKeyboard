//
//  ContentView.swift
//  ArtKeyboard
//
//  Created by Günter on 21.06.21.
//

import SwiftUI
//import GiphyUISDK

struct SetKeyboardView: View {
    @State private var isShowingGifPicker = true
//    @State var giphyImage: GiphyYYImage?
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("How to enable Art Keyboard").font(.title).bold()
            VStack(alignment: .leading, spacing: 10) {
                Text("1.  Go to  Settings -> General -> Keyboard -> Keyboards.")
                Text("2.  Tap to 'Add New Keyboard...' button.")
                HStack {
                    Spacer()
                    Image("ANK").resizable().frame(width: 310, height: 50, alignment: .center)
                    Spacer()
                }
                Text("3.  Choose Art Keyboard.")
                HStack {
                    Spacer()
                    Image("CAK").resizable().frame(width: 310, height: 105, alignment: .center)
                    Spacer()
                }
                Text("4.  Toggle On Allow Full Access.")
                HStack {
                    Spacer()
                    Image("AFA").resizable().frame(width: 310, height: 50, alignment: .center)
                    Spacer()
                }
//                VStack(alignment: .center, spacing: 5) {
//                    Spacer()
                    Text("5.  You're successfully added Art Keyboard to your iPhone.")
                HStack {
                    Spacer()
                    Text("🎊 Congratulations!!! 🎊").font(.title2)
                    Spacer()
                }
//                    Spacer()
//                }
//                Image("settings").resizable().frame(width: 30, height: 30, alignment: .center)
            }.padding()
            HStack {
                
//                Spacer()
            }
//            Image(uiImage: UIImage(cgImage: (giphyImage?.cgImage ?? UIImage(named: "Apple")?.cgImage)!))
//            Button(action: {
//                isShowingGifPicker.toggle()
//            }, label: {
//                Text("Button")
//
//            })
            
//            if self.isShowingGifPicker {
//                ZStack {
//                    VStack(spacing: 0) {
//                        // Most of the screen's background becomes a partially transparent
//                        // black view. Tapping anywhere on it dismisses the Giphy view.
//                        Rectangle()
//                            .fill(Color.init(white: 0.0, opacity: 0.5))
//                            .onTapGesture {
//                                withAnimation {
//                                    self.isShowingGifPicker = false
//                                }
//
//                                // This little bit covers the bottom area between the GiphyVC and
//                                // the remaining sliver near the screen's bottom safe area
//                                Rectangle()
//                                    .fill(Color.init(white: (38.0/255.0)))
//                                    .frame(height: 100)
//                            }
//
//                        GiphyVCRepresentable(onSelectedGif: { _giphyYYImage, width, height in
//                            giphyImage = _giphyYYImage
//                            // TODO: do something with _giphyYYImage for your app
//                            withAnimation {
//                                self.isShowingGifPicker = false
//                            }
//                        }, onShouldDismissGifPicker: {
//                            withAnimation {
//                                self.isShowingGifPicker = false
//                            }
//                        })
//                        .padding(.bottom, 20.0)
//                        .padding(.top, 90.0)
//                        .transition(.move(edge: .bottom))
//                    }
//
//                }
//
//            }
        }
        
    }
}

struct SetKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        SetKeyboardView()
            .preferredColorScheme(.dark)
    }
}
