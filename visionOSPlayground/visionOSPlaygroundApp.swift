//
//  visionOSPlaygroundApp.swift
//  visionOSPlayground
//
//  Created by Yoshihiro Tanaka on 2023/07/16.
//

import SwiftUI

@main
struct visionOSPlaygroundApp: App {
  var body: some Scene {
    WindowGroup(id: "View") {
      ContentView()
    }.windowStyle(.plain)
    WindowGroup(id: VolumetricPage.id) {
      VolumetricPage()
    }
    .windowStyle(.volumetric)
  }
}
