//
//  AuthService.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 31.01.2025.
//

import FirebaseAuth

class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullName: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("Created user \(result.user.uid)")
        } catch {
            print("Failed to create user")
        }
    }
}
