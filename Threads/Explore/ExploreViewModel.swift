//
//  ExploreViewModel.swift
//  Threads
//
//  Created by Luciano Nicolini on 18/08/2023.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
   
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
