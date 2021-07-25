//
//  WebView.swift
//  HackerNews
//
//  Created by Binaya on 25/07/2021.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
 
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let url = urlString {
            if let url = URL(string: url) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
