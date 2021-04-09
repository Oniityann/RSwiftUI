//
//  LogoImage.swift
//  Kuchi
//
//  Created by PH on 2021/4/10.
//

import SwiftUI

struct LogoImage: View {
  var body: some View {
    Image(systemName: "table")
      .resizable()
      .frame(width: 30, height: 30)
      .cornerRadius(15.0)
      .overlay(
        Circle()
          .stroke(Color.red, lineWidth: 4.0)
      )
      .background(Color(white: 0.9))
      .clipShape(Circle())
      .foregroundColor(.red)
  }
}

struct LogoImage_Previews: PreviewProvider {
  static var previews: some View {
    LogoImage()
  }
}
