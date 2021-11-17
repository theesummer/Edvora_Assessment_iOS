//
//  ContentView.swift
//  Edvora_Login_Test
//
//  Created by Swaroop Kurra on 17/11/21.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        GeometryReader { metrics in
            VStack(alignment: .center){
                Image(uiImage: UIImage(named: "logo")!).frame(width: metrics.size.width * 0.416, height: metrics.size.height * 0.058).padding(.top, metrics.size.height * 0.169)
                VStack(alignment: .trailing) {
                    RightIconTextField(textField: TextField("", text: $username), imageName: "username", title: "Username").textCase(.lowercase).padding(EdgeInsets(top: 0, leading: metrics.size.width * 0.096, bottom: metrics.size.height * 0.023, trailing: metrics.size.width * 0.096))
                    PasswordTextField("", text: $password).padding(EdgeInsets(top: 0, leading: metrics.size.width * 0.096, bottom: metrics.size.height * 0.035, trailing: metrics.size.width * 0.096))
                    Text("Forgot Password?").foregroundColor(.lightPurple).font(.system(size: 15)).padding(.trailing, metrics.size.width * 0.096).onTapGesture {
                        print("Forgot Password Clicked")
                    }
                }.padding(.top, metrics.size.height * 0.149)
                VStack {
                    LoginButton(text: "LOGIN").frame(width: metrics.size.width * 0.805, height: metrics.size.height * 0.077)
                    HStack {
                        Text("Don’t have an account?")
                        Text("Sign up").bold()
                    }.font(.system(size: 15)).foregroundColor(.lightPurple)
                        .padding(.top, metrics.size.height * 0.0599)
                        
                }.padding(.top, metrics.size.height * 0.130).padding(.bottom, metrics.size.height * 0.061)
                            
            }.frame(width: metrics.size.width, height: metrics.size.height, alignment: .center)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
