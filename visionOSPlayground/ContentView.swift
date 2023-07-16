//
//  ContentView.swift
//  visionOSPlayground
//
//  Created by Yoshihiro Tanaka on 2023/07/16.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Section {
                NavigationLink(destination: WebViewPage()) {
                    Text("WebView")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
