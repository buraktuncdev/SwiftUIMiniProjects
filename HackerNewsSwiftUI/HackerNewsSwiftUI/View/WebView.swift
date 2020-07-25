//
//  WebView.swift
//  HackerNewsSwiftUI
//
//  Created by Burak Tunc on 25.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let safeUrl = URL(string: safeString){
                let request = URLRequest(url: safeUrl)
                uiView.load(request)
            }
        }
    }
    
}
