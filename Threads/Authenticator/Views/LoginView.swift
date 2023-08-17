//
//  LoginView.swift
//  Threads
//
//  Created by Luciano Nicolini on 17/08/2023.
//

import SwiftUI

struct LoginView: View {

    @StateObject var viewModel = LoginViewModel()
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
                    TextField("Email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(ThredsTextFieldModifier())
                    
                    SecureField("Password", text: $viewModel.password)
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
                    Task { try await viewModel.login() }
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
