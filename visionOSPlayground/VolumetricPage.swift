//
//  VolumetricPage.swift
//  visionOSPlayground
//
//  Created by Yoshihiro Tanaka on 2023/07/17.
//

import SwiftUI

struct VolumetricPage: View {
  static let id = "Volumetric"

  var body: some View {
    VStack {
      Text("Hello, World!")
        .font(.largeTitle)
        .padding(.bottom, 32)
      Button(
        action: {
        },
        label: {
          Text("Button")
        })
    }.padding(.all, 120)
      .glassBackgroundEffect()
  }
}

#Preview {
  VolumetricPage()
}
