//
//  ContentViewModel.swift
//  Threads
//
//  Created by Luciano Nicolini on 17/08/2023.
//

import Foundation
import Combine
import Firebase

class ContentViewMode: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellable = Set<AnyCancellable>()
    init() {
        setupSubscribers()
    }
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellable)
    }
}
