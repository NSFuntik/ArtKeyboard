//
//  ThemeDetailView.swift
//  ArtKeyboard
//
//  Created by Günter on 22.06.21.
//

import SwiftUI
import UIKit
import WebKit
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
                showWebView = true
                text = """
                    <!DOCTYPE html>
                    <html>
                    <head>
                        <meta name="apple-mobile-web-app-capable" content="yes">
                        <meta name="apple-mobile-web-app-status-bar-style" content="default">
                        <meta content="text/html charset=UTF-8" http-equiv="Content-Type" />
                        <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no" />
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
                                background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAA2CAYAAACx1wu7AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAKqADAAQAAAABAAAANgAAAABxCt+IAAAEOUlEQVRoBe1ZS4gVVxA99XTGTyS4EByzUPG30ggaEAUN6E5BlICMIi7C7EQjiaK8mWEe6hN1ITohiiIkqGhwYxbqSsGN4MKAn4UwJoqoQRRB/JH5vfLcftO3u1+/f1+dEd+FS9etqlt1uu63q4FG+RwikNGpyOhcl1BTLo15tjp1I/rQw3oX7XrAlX1xZcizk9Y2CI5DEQ7AMWSxGSKaxJc7oB26BTkcIZi4TcHvaEIbMpKrF2zcaD2W0rqD3Q6W7So4R7CbCHagrF4JYXiISqhUYKe1ixoBSMGzUI8XpAe9tmI9+nGei6w5JK+aTAa0Q/fTUybk7TfSZ21bcI90G2t+firWEuwFgh1rdaok6gea1sOckzutnxROcdFsYXu85QFfYZ/8wVm7zfIUK7kjXCTYsJ4VlyLqA9quZtH8FDL6F77Fj97KlgjQPJisdBOsmSJ+WUGwl3Fcm3xGpWftQDP6NQdyqzUsuIIWtGKd+HNxlJUpAjoruwn2kJUB3+MploXaZcnagXbhDR3e8KwKrmEi1mCr9Jb14gv3Yjv7Hh1q/oexuOOLKj1rB2o27iYsRTNm8rkCO+RdJSdWbvpmhZs/pmMSZiEtZleoqoyuSqtQKb8XPihkV93OyqOqdYcUa49orR4c6VeOaFYn438OVY4DXVia8JwnTU8hu2w7rVM49DOL6Jjj9Sm9PC521BYH2qmLCcxs5gvwDhOKGM2z+nGaxKaS8mICwQ/cNX4tJvJ4fejlrauH15p92CN/+nrxoU9rNw+96zS2jLU0SN+C++cY+p1HDOcI+Kp/ikWBpnUV/ZrTxc1lJelLKJZjALuMmcKh747YFtxn+yTrv6x9EZlppPAkxqvEEFyiSnzVi3c4TGM017EusWZyBJrREwHQjLYQygyrILiNyVhU9WZuO1Yg9spDaphavCinXjvOULhhSGEMLzILg6EfxOxIzxQXU7UnTqRjwoY5FJoj9wJjcHYANBeKZt6XuaINVzGHSXAsK2YEQIXvES6juDENV8l/sry37oktAGq5I5NoAHU9Lo2INiLqOgKu7X3RczS8UQd0whC7j2iK2TzgJWs/a/jzOBFU90D3yN88jFtYJ/KL03wBOCnBNc+JuSEj+a/UurJ2pWC4j2gpTwn5DaAJAxjr3ohoLCQJGY2IJgxgrPtnGdHoBj2IcbHX+lQMVWGuJvCvGAhHNJoUyGHOp8IV89OBqcyWhP+cPAyAqpe+Cff5mamUQB6WfHzayzdZNyncD5JhJtztXi7pG6sguMkhOMq3K557sooOiBRzTzkvkq20ttpaFKbJgFkBUCPp1FYv3We1RgBh/qRk5Zfo0JrEqflnOVKK4BYz0N7/qShQAzArGwh2NavJPemwYDb/U1P8lzUf3zFN/tZgiA59IapDOg6vmW8fwHRCjufwC/WTtf0c/j8E9yqZqWHs/QHwrvH84SqV1wAAAABJRU5ErkJggg==');
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
                    
                        <a class="hidden" id="targetAppLink" href="\(currentIcon.description == "appStore" ? "itms-apps" : currentIcon.description)://"></a>
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
