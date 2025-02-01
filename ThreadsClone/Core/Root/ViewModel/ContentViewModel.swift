//
//  ContentViewModel.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 1.02.2025.
//

import Foundation
import Combine
import FirebaseAuth

class ContentViewModel: ObservableObject {

    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
    }
    
}
