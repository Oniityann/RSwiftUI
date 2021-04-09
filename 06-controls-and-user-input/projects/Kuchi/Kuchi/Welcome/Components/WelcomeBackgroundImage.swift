//
//  WelcomeBackgroundImage.swift
//  Kuchi
//
//  Created by PH on 2021/4/9.
//

import SwiftUI

struct WelcomeBackgroundImage: View {
    var body: some View {
      Image("welcome-background")
        .resizable()
        .scaledToFit()
        .aspectRatio(1, contentMode: .fill)
        .saturation(0.5)
        .blur(radius: 5)
        .opacity(0.08)
    }
}

struct WelcomeBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackgroundImage()
    }
}
