//
//  AuthService.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 31.01.2025.
//

import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("Failed to login user")
        }
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullName: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("Created user \(result.user.uid)")
        } catch {
            print("Failed to create user")
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
