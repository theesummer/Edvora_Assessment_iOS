//
//  CustomTextField.swift
//  Edvora_Login_Test
//
//  Created by Swaroop Kurra on 18/11/21.
//

import Foundation
import SwiftUI

struct RightIconTextField: View {
    var textField: TextField<Text>
    var imageName: String
    var title: String
    var body: some View {
        ZStack(alignment: .topLeading) {
            HStack {
                Image(uiImage: UIImage(named: imageName)!)
                textField
            }
            .padding()
            .background(Color.textFieldBG)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke( lineWidth: 1).foregroundColor(.lightPurple))
            Text(title.capitalized).font(.system(size: 12)).foregroundColor(.lightText).background(.white).padding(.top, -8.5).padding(.leading, 19)
        }
    }
}

struct PasswordTextField: View {
    
    @Binding private var text: String
    @State private var isSecured: Bool = true
    private var title: String
    
    init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
        HStack {
            Image(uiImage: UIImage(named: "password")!)
            if isSecured {
                SecureField(title, text: $text)
            } else {
                TextField(title, text: $text)
            }
            Button(action: {
                isSecured.toggle()
            }) {
                Image(systemName: self.isSecured ? "eye" : "eye.slash")
                    .accentColor(.lightPurple)
            }
        }.padding()
            .background(Color.textFieldBG)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke( lineWidth: 1).foregroundColor(.lightPurple))
            Text("Password".capitalized).font(.system(size: 12)).foregroundColor(.lightText).background(.white).padding(.top, -8.5).padding(.leading, 19)
        }
    }
}


