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
      Image("welcome-background")
        .resizable()
        .scaledToFit()
        .aspectRatio(1, contentMode: .fill)
        .saturation(0.5)
        .blur(radius: 5)
        .opacity(0.5)
      
      VStack(alignment: .leading) {
        HStack(alignment: .center) {
          Image(systemName: "table")
            .resizable()
            .frame(width: 30, height: 30)
            .cornerRadius(15.0)
            .overlay(
              Circle()
                .stroke(Color.gray, lineWidth: 3.0)
            )
            .background(Color(white: 0.9))
            .clipShape(Circle())
            .foregroundColor(.red)
          
          VStack(alignment: .leading) {
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
        }
        
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
            Image(systemName: "table")
              .resizable()
              .frame(width: 30, height: 30)
              .cornerRadius(15.0)
              .overlay(
                Circle()
                  .stroke(Color.gray, lineWidth: 3.0)
              )
              .background(Color(white: 0.9))
              .clipShape(Circle())
              .foregroundColor(.red)
          }
        )
        .labelStyle(HorizontallyAlignedLabelStyle())
      }
    }
  }
}

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}
