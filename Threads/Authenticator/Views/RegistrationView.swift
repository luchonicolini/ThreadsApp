//
//  RegistrationView.swift
//  Threads
//
//  Created by Luciano Nicolini on 16/08/2023.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            Image("logo2")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack(spacing: 16) {
                TextField("Email", text: $viewModel.email)
                    .modifier(ThredsTextFieldModifier())
                
                SecureField("Password", text: $viewModel.password)
                    .modifier(ThredsTextFieldModifier())
                
                TextField("Full Name", text: $viewModel.fullname)
                    .modifier(ThredsTextFieldModifier())
                
                TextField("Username", text: $viewModel.username)
                    .modifier(ThredsTextFieldModifier())
            }
            
            
            
            Button(action: {
                Task { try await viewModel.createUser() }
            }) {
                Text("Sign Up")
                    .padding(.vertical, 8)
                    .frame(maxWidth: .infinity)
            }
            .foregroundColor(.white)
            .tint(.black)
            .buttonStyle(.borderedProminent)
            .padding()
            
            Spacer()
            
            Divider()
            
            Button(action: {
                dismiss()
            }, label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    Text("Log In")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.primary)
                .font(.footnote)
            })
            .padding(.vertical, 16)
        }
    }
}



struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
