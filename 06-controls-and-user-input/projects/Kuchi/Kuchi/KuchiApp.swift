//
//  KuchiApp.swift
//  Kuchi
//
//  Created by PH on 2021/4/9.
//

import SwiftUI

@main
struct KuchiApp: App {
  var body: some Scene {
    WindowGroup {
      WelcomeView()
    }
  }
}

struct KuchiApp_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}
