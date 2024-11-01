////
////  GiphyPicker.swift
////  ArtKeyboard
////
////  Created by Günter on 21.06.21.
////
//import Foundation
//import SwiftUI
//import UIKit
////import GiphyUISDK
//
//struct GiphyVCRepresentable : UIViewControllerRepresentable {
//    public typealias UIViewControllerType = GiphyViewController
//    
//    // gif, width, height
//    var onSelectedGif: (GiphyYYImage, CGFloat, CGFloat) -> Void
//    var onShouldDismissGifPicker: () -> Void
//    
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//    
//    public func makeUIViewController(context: UIViewControllerRepresentableContext<GiphyVCRepresentable>) -> GiphyViewController {
//        let gvc = GiphyViewController()
//        gvc.delegate = context.coordinator
//        //gvc.mediaTypeConfig = [] // TODO: can filter by media type
//        gvc.theme = CustomGiphyTheme()
//        GiphyViewController.trayHeightMultiplier = 1.5 // This causes the tray to start at the screen's full height
//        return gvc
//    }
//    
//    public func updateUIViewController(_ giphyViewController: GiphyViewController, context: UIViewControllerRepresentableContext<GiphyVCRepresentable>) {
//        // TODO:
//    }
//    
//    class Coordinator: NSObject, GiphyDelegate {
//        let parent: GiphyVCRepresentable
//        init(_ parent: GiphyVCRepresentable) {
//            self.parent = parent
//        }
//        
//        func didSearch(for term: String) {
//            print("GiphyDelegate: the user made searched for: ", term)
//        }
//        
//        func didSelectMedia(giphyViewController: GiphyViewController, media: GPHMedia) {
//            giphyViewController.dismiss(animated: true, completion: { [weak self] in
//                let url = media.url(rendition: giphyViewController.renditionType, fileType: .webp) ?? ""
//                GPHCache.shared.downloadAsset(url) { (image, error) in
//                    DispatchQueue.main.async {
//                        //let imageView = GiphyYYAnimatedImageView()
//                        let width = CGFloat(media.images?.fixedWidth?.width ?? 0)
//                        let height = CGFloat(media.images?.fixedWidth?.height ?? 0)
//                        if let _giphyYYImage = image, let _coordinator = self {
//                            _coordinator.parent.onSelectedGif(_giphyYYImage, width, height)
//                        }
//                    }
//                }
//            })
//        }
//        
//        func didDismiss(controller: GiphyViewController?) {
//            self.parent.onShouldDismissGifPicker()
//        }
//    }
//}
//
//public class CustomGiphyTheme: GPHTheme {
//    public override init() {
//        super.init()
//        self.type = .darkBlur
//    }
//    
//    public override var textFieldFont: UIFont? {
//        return UIFont(name: "Futura-Medium", size: 15)
//    }
//
//    public override var textColor: UIColor {
//        return .white
//    }
//}
//
//// Here's a usage example excerpted from the middle of a SwiftUI View, where the ZStack below is placed inside of another ZStack from that containing view, and sits on top of the other view's content in that ZStack.
//
//// ... inside some SwiftUI View ...
//
