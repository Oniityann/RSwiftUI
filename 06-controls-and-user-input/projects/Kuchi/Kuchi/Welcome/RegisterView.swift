//
//  RegisterView.swift
//  Kuchi
//
//  Created by PH on 2021/4/10.
//

import SwiftUI

struct KuchiTextStyle: TextFieldStyle {
  public func _body(
    configuration: TextField<Self._Label>) -> some View {
      return configuration
        .padding(EdgeInsets(top: 8, leading: 16,
                            bottom: 8, trailing: 16))
        .background(Color.white)
        .overlay(
          RoundedRectangle(cornerRadius: 8)
            .stroke(lineWidth: 2)
            .foregroundColor(.blue)
        )
        .shadow(color: Color.gray.opacity(0.4),
                radius: 3, x: 1, y: 2)
        .cornerRadius(8)
  }
}

struct RegisterView: View {
  @State var name = ""
  @ObservedObject var keyboardHandler: KeyboardFollower
  
  init(keyboardHandler: KeyboardFollower) {
    self.keyboardHandler = keyboardHandler
  }
  
  var body: some View {
    VStack {
      Spacer()
      
      WelcomeMessageView()
      
      TextField("Type your name...", text: $name)
        .bordered()
      Button(action: registerUser) {
        Text("OK")
      }
      
      Spacer()
    }
    .padding(.bottom, keyboardHandler.keyboardHeight)
    .edgesIgnoringSafeArea(keyboardHandler.isVisible ? .bottom : [])
    .padding()
    .background(WelcomeBackgroundImage())
  }
}

extension RegisterView {
  func registerUser() {
    print("Button Triggered")
  }
}

struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView(keyboardHandler: KeyboardFollower())
  }
}
