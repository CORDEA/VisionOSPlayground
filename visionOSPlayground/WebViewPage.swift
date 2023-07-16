//
//  WebViewPage.swift
//  visionOSPlayground
//
//  Created by Yoshihiro Tanaka on 2023/07/16.
//

import SwiftUI
import WebKit

struct WebViewPage: View {
    var body: some View {
        return WebView().navigationTitle("WebView")
    }
}

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: "https://cordea.jp")!))
    }
    
    typealias UIViewType = WKWebView
}

#Preview {
    WebViewPage()
}
