//
//  WebView.swift
//  ArtKeyboard
//
//  Created by Günter on 22.06.21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
  @Binding var text: String
   
  func makeUIView(context: Context) -> WKWebView {
    let wk = WKWebView()
    wk.allowsLinkPreview = true
    
    return WKWebView()
  }
   
  func updateUIView(_ uiView: WKWebView, context: Context) {
    uiView.loadHTMLString(text, baseURL: nil)
    
  }
    
    func makeCoordinator() -> Coordinator {
        
    }
}
//struct WebView_Previews: PreviewProvider {
//  static var previews: some View {
//    WebView(text: text)
//  }
//}


