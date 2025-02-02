//
//  ProfileViewModel.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 2.02.2025.
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
        UserService.shared.$currentUser.sink { [weak self] receivedUser in
            self?.currentUser = receivedUser
        }
        .store(in: &cancellables)
    }

}
