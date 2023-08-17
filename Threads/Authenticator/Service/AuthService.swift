//
//  AuthService.swift
//  Threads
//
//  Created by Luciano Nicolini on 17/08/2023.
//

import Firebase
import FirebaseAuth

class AuthService {
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("Debug: INICIO DE SECCION EXITOSO \(result.user.uid)")
        } catch {
            print("Debug: ERROR AL INTENTAR INICIAR SECCION - USUARIO \(error.localizedDescription)")
        }
    }
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("Debug: CREACION DE USUARIO EXITOSO \(result.user.uid)")
        } catch {
            print("Debug: ERROR AL INTENTAR CREAR EL USUARIO  - SERIE DE REGISTRO \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
