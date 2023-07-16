//
//  ModelPage.swift
//  visionOSPlayground
//
//  Created by Yoshihiro Tanaka on 2023/07/16.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ModelPage: View {
  var body: some View {
    VStack(alignment: .center) {
      // Packages/RealityKitContent/Sources/RealityKitContent/RealityKitContent.rkassets/woolly-mammoth-150k.usdz
      Model3D(named: "woolly-mammoth-150k", bundle: realityKitContentBundle) { model in
        model
          .resizable()
          .aspectRatio(contentMode: .fit)
          .rotation3DEffect(.degrees(-50), axis: .y)
      } placeholder: {
        ProgressView()
      }.containerRelativeFrame(.vertical, count: 2, span: 1, spacing: 0)
      Link(
        "From Smithsonian 3D",
        destination: URL(
          string:
            "https://3d.si.edu/object/3d/mammuthus-primigenius-blumbach:341c96cd-f967-4540-8ed1-d3fc56d31f12"
        )!
      )
      .padding(.all, 32)
      .containerRelativeFrame(.horizontal, alignment: .trailing)
    }.navigationTitle("Mammuthus primigenius")
  }
}

#Preview {
  ModelPage()
}
