//
//  RegistrationView.swift
//  Threads
//
//  Created by Luciano Nicolini on 16/08/2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
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
                TextField("Email", text: $email)
                    .modifier(ThredsTextFieldModifier())
                
                SecureField("Password", text: $password)
                    .modifier(ThredsTextFieldModifier())
                
                TextField("Full Name", text: $fullname)
                    .modifier(ThredsTextFieldModifier())
                
                TextField("Username", text: $username)
                    .modifier(ThredsTextFieldModifier())
            }
            
            
            
            Button(action: {
                //..
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
