//
//  ContentView.swift
//  visionOSPlayground
//
//  Created by Yoshihiro Tanaka on 2023/07/16.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ContentView: View {
  @State private var isWindowOpened: Bool = false
  @Environment(\.openWindow) private var openWindow
  @Environment(\.dismissWindow) private var dismissWindow

  var body: some View {
    NavigationStack {
      VStack(alignment: .center) {
        Text("Pages").font(.title).padding(.bottom, 24)
        NavigationLink(destination: WebViewPage()) {
          Text("WebView")
        }
        NavigationLink(destination: ModelPage()) {
          Text("3DModelView")
        }
      }.padding(.bottom, 64)
      VStack(alignment: .center) {
        Text("Windows").font(.title).padding(.bottom, 24)
        Text("Show Volumetric").font(.headline).padding(.bottom, 4)
        Toggle(isOn: $isWindowOpened) {}.labelsHidden()
          .onChange(of: isWindowOpened) { _, isShowing in
            if isShowing {
              openWindow(id: VolumetricPage.id)
            } else {
              dismissWindow(id: VolumetricPage.id)
            }
          }
      }
    }
  }
}

#Preview {
  ContentView()
}
