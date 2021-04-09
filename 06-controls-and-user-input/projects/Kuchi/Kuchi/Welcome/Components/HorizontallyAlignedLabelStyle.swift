//
//  HorizontallyAlignedLabelStyle.swift
//  Kuchi
//
//  Created by PH on 2021/4/9.
//

import SwiftUI

struct HorizontallyAlignedLabelStyle: LabelStyle {
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      configuration.icon
      configuration.title
    }
  }
}
