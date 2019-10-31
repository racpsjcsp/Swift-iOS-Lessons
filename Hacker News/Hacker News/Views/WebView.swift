//
//  WebView.swift
//  Hacker News
//
//  Created by Rafael Plinio on 31/10/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

//Webview component
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
