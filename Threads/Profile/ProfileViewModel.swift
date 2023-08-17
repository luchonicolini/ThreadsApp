//
//  ProfileViewModel.swift
//  Threads
//
//  Created by Luciano Nicolini on 17/08/2023.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
  
    init() {
        setupSubscribers()
    }
 
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("")
        }.store(in: &cancellables)
    }
}
