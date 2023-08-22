//
//  UserContentViewModel.swift
//  Threads
//
//  Created by Luciano Nicolini on 22/08/2023.
//

import Foundation
import Firebase

class UserContentViewModel: ObservableObject {
    @Published var threads = [Thread]()
    
    let user: User
    
    init(user: User) {
        self.user = user
        Task { try await fetchUserThreads() }
    }
    
    @MainActor
    func fetchUserThreads() async throws {
        var threads = try await ThreadService.fetchUserThreads(uid: user.id)
     
        for i in 0 ..< threads.count {
            threads[i].user = self.user
        }
        self.threads = threads
    }
}


extension Timestamp {
    func timestampString() -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second, .minute,.hour, .day,.weekOfMonth]
        formatter.maximumUnitCount = 1
        formatter.unitsStyle = .abbreviated
        return formatter.string(from: self.dateValue(), to: Date()) ?? ""
    }
}
