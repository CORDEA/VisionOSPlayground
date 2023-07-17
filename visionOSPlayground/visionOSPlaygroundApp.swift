//
//  visionOSPlaygroundApp.swift
//  visionOSPlayground
//
//  Created by Yoshihiro Tanaka on 2023/07/16.
//

import SwiftUI

@main
struct visionOSPlaygroundApp: App {
  @State private var immersionStyle: ImmersionStyle = .mixed

  var body: some Scene {
    WindowGroup(id: "View") {
      ContentView()
    }.windowStyle(.plain)
    WindowGroup(id: VolumetricPage.id) {
      VolumetricPage()
    }
    .windowStyle(.volumetric)
    ImmersiveSpace(id: ImmersiveSpacePage.id) {
      ImmersiveSpacePage()
    }.immersionStyle(selection: $immersionStyle, in: .mixed)
  }
}
