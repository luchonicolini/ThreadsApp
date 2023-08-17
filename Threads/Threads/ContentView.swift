//
//  ContentView.swift
//  Threads
//
//  Created by Luciano Nicolini on 15/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("logo2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack(spacing: 16) {
                    TextField("Email", text: $email)
                        .autocapitalization(.none)
                        .modifier(ThredsTextFieldModifier())
                    
                    SecureField("Password", text: $password)
                        .modifier(ThredsTextFieldModifier())
                }
                
                
                NavigationLink(destination: Text("Reset Password")) {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 28)
                }
                
                
                Button(action: {
                    //..
                }) {
                    HStack {
                        Text("Login")
                    }
                    .padding(.vertical, 8)
                    .frame(maxWidth: .infinity)
                }
                .foregroundColor(.white)
                .tint(.black)
                .buttonStyle(.borderedProminent)
                .padding()
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .foregroundColor(.primary)
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.primary)
                    .font(.footnote)
                }
                .padding(.vertical,16)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button(action: {
//    // Perform login action here
//}) {
//    Text("Login")
//        .font(.subheadline)
//        .fontWeight(.semibold)
//        .foregroundColor(.white)
//        .frame(width: 352, height: 44)
//        .background(Color.black)
//        .cornerRadius(8)
//}

