//
//  WelcomeMessageView.swift
//  Kuchi
//
//  Created by PH on 2021/4/10.
//

import SwiftUI

struct WelcomeMessageView: View {
  var body: some View {
    VStack(alignment: .leading) {
      Label(
        title: {
          VStack {
            Text("Welcome to")
              .font(.headline)
              .bold()
            
            Text("Kuchi")
              .font(.largeTitle)
              .bold()
          }
          .foregroundColor(.red)
          .lineLimit(2)
          .multilineTextAlignment(.leading)
          .padding(.horizontal)
        },
        icon: {
          LogoImage()
        }
      )
      .labelStyle(HorizontallyAlignedLabelStyle())
    }
  }
}

struct WelcomeMessageView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      WelcomeMessageView()
        .previewLayout(.sizeThatFits)
    }
  }
}
