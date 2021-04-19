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
  @EnvironmentObject var userManager: UserManager
  @ObservedObject var keyboardHandler: KeyboardFollower
  
  init(keyboardHandler: KeyboardFollower) {
    self.keyboardHandler = keyboardHandler
  }
  
  var body: some View {
    VStack {
      Spacer()
      
      WelcomeMessageView()
      
      TextField("Type your name...", text: $userManager.profile.name)
        .bordered()
      
      HStack {
        Spacer()
        
        Text("\(userManager.profile.name.count)")
          .font(.caption)
          .foregroundColor(
            userManager.isUserNameValid() ? .green : .red)
          .padding(.trailing)
      }
      .padding(.bottom)

      HStack {
        Spacer()
        
        Toggle(isOn: $userManager.settings.rememberUser) {
          Text("Remember me")
            .font(.subheadline)
            .foregroundColor(.gray)
        }
        .fixedSize()
      }
      
      Button(action: registerUser) {
        HStack {
          Image(systemName: "checkmark")
            .resizable()
            .frame(width: 16, height: 16, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
          
          Text("OK")
            .font(.body)
            .bold()
        }
      }
      .bordered()
      .disabled(!userManager.isUserNameValid())
      
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
    userManager.persistProfile()
  }
}

struct RegisterView_Previews: PreviewProvider {
  static let user = UserManager(name: "Ray")
  
  static var previews: some View {
    RegisterView(keyboardHandler: KeyboardFollower())
      .environmentObject(user)
  }
}
