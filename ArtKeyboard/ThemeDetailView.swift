//
//  ThemeDetailView.swift
//  ArtKeyboard
//
//  Created by Günter on 22.06.21.
//

import SwiftUI
import UIKit
import WebKit
import Swifter
struct ThemeDetailView: View {
    @State var currentTheme: Int
    
    var body: some View {
        Form {
            
            HStack {
                Image("Theme\(currentTheme)WallIcon").resizable().frame(width: 30, height: 30, alignment: .center).cornerRadius(10.0)
                Text("Wallpaper").padding()
                Spacer()
                Button(action: {
                    //                         inputImage = inputImage
                    guard let  image = UIImage(named: "Theme\(currentTheme)Wall") else { return }
                    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
                }, label: {
                    Text("SAVE").foregroundColor(.white).padding(.horizontal,15).padding(.vertical,3).background(Rectangle().cornerRadius(20, antialiased: true))
                })
            }
            Section(header: Text("ICONS")) {
                ThemeIconView(currentTheme: currentTheme, currentIcon: .appStore)
                ThemeIconView(currentTheme: currentTheme, currentIcon: .music)
                ThemeIconView(currentTheme: currentTheme, currentIcon: .safari)
                ThemeIconView(currentTheme: currentTheme, currentIcon: .settings)
                ThemeIconView(currentTheme: currentTheme, currentIcon: .youTube)
                ThemeIconView(currentTheme: currentTheme, currentIcon: .photos)
                ThemeIconView(currentTheme: currentTheme, currentIcon: .instagram)
                ThemeIconView(currentTheme: currentTheme, currentIcon: .camera)
                ThemeIconView(currentTheme: currentTheme, currentIcon: .clock)
                ThemeIconView(currentTheme: currentTheme, currentIcon: .notes)
            }
            ThemeIconView(currentTheme: currentTheme, currentIcon: .telegram)
            ThemeIconView(currentTheme: currentTheme, currentIcon: .weather)
            ThemeIconView(currentTheme: currentTheme, currentIcon: .maps)
            ThemeIconView(currentTheme: currentTheme, currentIcon: .phone)
            ThemeIconView(currentTheme: currentTheme, currentIcon: .twitter)
            ThemeIconView(currentTheme: currentTheme, currentIcon: .findMy)
            ThemeIconView(currentTheme: currentTheme, currentIcon: .calculator)
        }
    }
}

enum Application {
    case instagram
    case whatsApp
    case tinder
    case photos
    case maps
    case clock
    case discord
    case youTube
    case calendar
    case camera
    case notes
    case telegram
    case phone
    case twitter
    case findMy
    case weather
    case settings
    case safari
    case music
    case appStore
    case calculator
    case messages
    
    var description : String {
        switch self {
        case .instagram: return "instagram"
        case .whatsApp: return "whatsApp"
        case .clock: return "clock"
        case .photos: return "photos"
        case .tinder: return "tinder"
        case .maps: return "maps"
        case .discord: return "discord"
        case .youTube: return "youTube"
        case .calendar: return "calendar"
        case .camera: return "camera"
        case .notes: return "notes"
        case .telegram: return "telegram"
        case .phone: return "phone"
        case .twitter: return "twitter"
        case .findMy: return "findMy"
        case .weather: return "weather"
        case .settings: return "settings"
        case .safari: return "safari"
        case .music: return "music"
        case .appStore: return "appStore"
        case .calculator: return "calculator"
        case .messages: return "messages"

        }
    }
    var shortcuts : String {
        switch self {
        case .instagram: return "instagram"
        case .whatsApp: return "whatsapp"
        case .clock: return "shortcuts://x-callback-url/run-shortcut?x-error=clock-wordclock"
        case .photos: return "photos-redirect"
        case .tinder: return "tinder"
        case .maps: return "map"
        case .discord: return "discord"
        case .youTube: return "youtube"
        case .calendar: return "calshow"
        case .camera: return "shortcuts://x-callback-url/run-shortcut?x-error=camera"
        case .notes: return "mobilenotes"
        case .telegram: return "telegram"
        case .phone: return "shortcuts://x-callback-url/run-shortcut?x-error=mobilephone"
        case .twitter: return "twitter"
        case .findMy: return "fmip1"
        case .weather: return "shortcuts://x-callback-url/run-shortcut?x-error=weather"
        case .settings: return "com.apple.preferences"
        case .safari: return "shortcuts://x-callback-url/run-shortcut?x-error=x-web-search"
        case .music: return "music"
        case .appStore: return "itms-apps"
        case .calculator: return "shortcuts://x-callback-url/run-shortcut?x-error=calc"
        case .messages: return "sms"

        }
    }
    
}


struct ThemeIconView: View {
    @State var currentTheme: Int
    @State var currentIcon: Application
    @State var text: String = ""
    @State var showWebView = false
    var myWebView: WKWebView = WKWebView(frame: UIScreen.main.bounds)
    var body: some View {
        HStack {
            Image("Theme\(currentTheme)\(currentIcon.description)Icon").resizable().frame(width: 50, height: 50, alignment: .center).cornerRadius(10.0)
            Text("\(currentIcon.description.localizedCapitalized)").padding()
            Spacer()
            
            Button(action: {

                text = """
                    <!DOCTYPE html>
                    <html>
                    <head>
                        <meta name="apple-mobile-web-app-capable" content="yes">
                        <meta name="apple-mobile-web-app-status-bar-style" content="default">
                        <meta content="text/html charset=UTF-8" http-equiv="Content-Type" />
                        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no" />
                            <link rel="apple-touch-icon-precomposed" href="data:image/jpeg;base64,\(((UIImage(named: "Theme\(currentTheme)\(currentIcon.description)Icon")!).jpegData(compressionQuality: 1)?.base64EncodedString())!)"/>

                        <link rel="apple-touch-icon" href="data:image/png;base64,\(((UIImage(named: "Theme\(currentTheme)\(currentIcon.description)Icon")!).jpegData(compressionQuality: 1)?.base64EncodedString())!)=">
                        <link rel="apple-touch-startup-image" href="data:image/png;base64,\(((UIImage(named: "Theme\(currentTheme)\(currentIcon.description)Icon")!).jpegData(compressionQuality: 1)?.base64EncodedString())!)">
                            
                        <title>Instagram</title>
                    
                        <style>
                            *|* {
                                    padding: 0; margin: 0; box-sizing: border-box;
                                    margin-block-start: 0; margin-block-end: 0; margin-inline-start: 0; margin-inline-end: 0;
                                    padding-inline-start: 0; padding-inline-end: 0;
                                    -webkit-margin-before: 0; -webkit-margin-after: 0; -webkit-margin-start: 0; -webkit-margin-end: 0;
                                    -webkit-padding-start: 0; -webkit-padding-end: 0;
                                    -webkit-tap-highlight-color: transparent;
                            }
                    
                            html, body {margin:0; padding:0; color: #000; text-align: center; font-weight: 400; font-family: -apple-system, BlinkMacSystemFont, Helvetica, sans-serif; background: #fff; overflow: hidden;}
                    
                            html {font-size: 1.8vh; width: 100vw;}
                            body {
                                    -webkit-touch-callout: none;
                                    -webkit-user-select: none;
                                    user-select: none;
                                    -webkit-font-smoothing: antialiased;
                                    -webkit-overflow-scrolling: auto;
                                    height: 100vh; width: 100vw;
                            }
                            ul {list-style: none;}
                            a {text-decoration: none; color: inherit;}
                            strong {font-weight: 600;}
                    
                            .hidden {display: none;}
                        .unvisible {pointer-events: none; visibility: hidden; opacity: 0;}
                    
                            #main-container {
                                width: 100%; height: 100vh; max-width: 375px; margin: auto;
                                padding-top: 49px;
                            }
                    
                            header {font-size: 15px; line-height: 1.1; font-weight: 400;}
                            header p {padding-top: 1.3vh;}
                            .icon {
                                width: 60px; height: 60px;
                                margin: auto;
                                border-radius: 13.3px;
                                background-image: none;
                                background-color: #fff;
                                background-position: 50%; background-size: contain; background-repeat: no-repeat;
                                border: 0.5px solid rgba(229,229,229,1);
                            }
                    
                            article {
                                width: 95%; margin: auto; padding-top: 6.3vh;
                                font-size: 15px; font-weight: 400; line-height: 1.2; text-align: start; letter-spacing: -0.045em;
                            }
                            article h1 {
                                padding-bottom: 2.5vh;
                                font-size: 18px; font-weight: 700; line-height: 1.1; text-align: center;
                            }
                            article p {padding-left: 11.5%;}
                            article p:not(:first-of-type) {padding-top: 2vh;}
                            article img {
                                display: block;
                                width: 85%; height: auto;
                                margin: auto; margin-top: 3.5vh;
                            }
                            #share {
                                display: inline-block;
                                width: 17px; height: 19.5px;
                                background-image: url('data:image/png;base64,\(UIImage(systemName: "square.and.arrow.up")?.jpegData(compressionQuality: 1)?.base64EncodedString())');
                                /*background-color: #fff;*/ background-size: contain; background-repeat: no-repeat; vertical-align: sub;
                            }
                            @media (prefers-color-scheme: light) {
                            body {
                            background-color: white;
                            color: black;
                            }
                            }
                            /* Dark mode */
                            @media (prefers-color-scheme: dark) {
                            body {
                            background-color: rgba(0,0,0,1.0);
                            color: white;
                            }
                            }
                        </style>
                    </head>
                    <body>
                        <div id="main-container" class="hidden">
                                <header>
                                        <div class="icon" style="background-image: url('data:image/png;base64,\(((UIImage(named: "Theme\(currentTheme)\(currentIcon.description)Icon")!).jpegData(compressionQuality: 1)?.base64EncodedString())!)=');"></div>
                                        <p>\(currentIcon.description.capitalized)</p>
                                </header>
                                
                                <article>
                                        <h1>To Add Icon to Home Screen</h1>
                                        <p>Tap <span id="share"></span> at the bottom of the screen</p>
                                        <p>Select "Add to Home Screen" from the drop-down menu</p>
                                        <img src="data:image/jpeg;base64,\(((UIImage(named: "ATHS")!).jpegData(compressionQuality: 1)?.base64EncodedString())!)" alt="Iillustration">
                                </article>
                        </div>
                    
                        <a class="hidden" id="targetAppLink" href="\(currentIcon.shortcuts)://"></a>
                        <script>
                        
                        if (window.navigator.standalone == true) {
                            document.getElementById("targetAppLink").click()
                        } else {
                            document.getElementById("main-container").style.display = "block";
                        }
                    
                    </script>
                        
                    </body>
                    </html>
                    
                    """
                guard let base64 = text.data(using: .utf8)?.base64EncodedString() else {return}
            let path: String = "Theme\(currentTheme)/\(currentIcon.description)"
            let server = HttpServer()
            server[path] = { reqest in
                return.movedPermanently("data:text/html;base64,\(base64)")
            }
                try? server.start()
                UIApplication.shared.open(URL(string: "http://localhost:8080/\(path)")!)
            }, label: {
                
                Text("INSTALL").foregroundColor(.white).padding(.horizontal,15).padding(.vertical,3).background(Rectangle().cornerRadius(20, antialiased: true))
            }).sheet(isPresented: $showWebView, content: {
                WebView(text: $text)
            })
        }
        
    }
    
}

struct ThemeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeDetailView(currentTheme: 1)
    }
}
