//
//  WelcomeView.swift
//  Kuchi
//
//  Created by PH on 2021/4/9.
//

import SwiftUI

struct WelcomeView: View {
  var body: some View {
    ZStack {
      WelcomeBackgroundImage()
      VStack {
         WelcomeMessageView()
      }
    }
  }
}

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}
