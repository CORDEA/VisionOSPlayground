//
//  ImmersiveSpacePage.swift
//  visionOSPlayground
//
//  Created by Yoshihiro Tanaka on 2023/07/17.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ImmersiveSpacePage: View {
  static let id = "ImmersiveSpace"

  var body: some View {
    RealityView { content in
      if let mammoth = try? await ModelEntity(
        named: "woolly-mammoth-150k", in: realityKitContentBundle)
      {
        mammoth.transform = Transform(
          scale: SIMD3(repeating: 0.003),
          translation: .init(x: 2, y: 2, z: -2)
        )
        content.add(mammoth)
      }

    }
  }
}

#Preview {
  ImmersiveSpacePage()
}
