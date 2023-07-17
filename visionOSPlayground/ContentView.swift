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
  @State private var isImmersiveSpaceOpened: Bool = false
  @Environment(\.openWindow) private var openWindow
  @Environment(\.dismissWindow) private var dismissWindow
  @Environment(\.openImmersiveSpace) private var openImmersiveSpace
  @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace

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
          }.padding(.bottom, 16)
        Text("Show in an immersive space").font(.headline).padding(.bottom, 4)
        Toggle(isOn: $isImmersiveSpaceOpened) {}.labelsHidden()
          .onChange(of: isImmersiveSpaceOpened) { _, isShowing in
            Task {
              if isShowing {
                await openImmersiveSpace(id: ImmersiveSpacePage.id)
              } else {
                await dismissImmersiveSpace()
              }
            }
          }
      }
    }
  }
}

#Preview {
  ContentView()
}
