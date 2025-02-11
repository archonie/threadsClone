//
//  CreateThreadViewModel.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 9.02.2025.
//

import Foundation
import Firebase
import FirebaseAuth

class CreateThreadViewModel: ObservableObject {    
    func uploadThread(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let thread = Thread(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
    
}
