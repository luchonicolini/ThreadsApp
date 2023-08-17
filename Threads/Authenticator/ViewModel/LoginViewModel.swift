//
//  LoginViewModel.swift
//  Threads
//
//  Created by Luciano Nicolini on 17/08/2023.
//

import Foundation

class LoginViewModel: ObservableObject {
   
    @Published  var email = ""
    @Published  var password = ""
   
   
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
   
    }
}
