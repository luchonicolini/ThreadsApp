//
//  FeedViewModel.swift
//  Threads
//
//  Created by Luciano Nicolini on 22/08/2023.
//

import Foundation

@MainActor
class FeedViewModel: ObservableObject {
    @Published var threads = [Thread]()
    
    init() {
        Task { try await fechThreads() }
    }
  
    @MainActor
    func fechThreads() async throws {
        self.threads = try await ThreadService.fetchThreads()
        try await fetchUserDataForThreds()
    }
    
    private func fetchUserDataForThreds() async throws {
        for i in 0 ..< threads.count {
            let thread = threads[i]
            let ownerUid = thread.ownerUid
            let threadUser = try await UserService.fetchUser(withUi: ownerUid)
            
            threads[i].user = threadUser
        }
    }
}
