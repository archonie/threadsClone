//
//  LoginViewModel.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 1.02.2025.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func loginUser() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
