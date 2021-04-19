//
//  KuchiApp.swift
//  Kuchi
//
//  Created by PH on 2021/4/9.
//

import SwiftUI

@main
struct KuchiApp: App {
  let userManager = UserManager()
  
  init() {
    userManager.load()
  }
  var body: some Scene {
    WindowGroup {
      RegisterView(keyboardHandler: KeyboardFollower())
          .environmentObject(userManager)
    }
  }
}

struct KuchiApp_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView(keyboardHandler: KeyboardFollower())
  }
}
