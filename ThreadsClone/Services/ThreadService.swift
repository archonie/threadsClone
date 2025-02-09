//
//  ThreadService.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 9.02.2025.
//

import Foundation
import Firebase
import FirebaseFirestore

struct ThreadService {
    static func uploadThread(_ thread: Thread) async throws {
        guard let threadData = try? Firestore.Encoder().encode(thread) else { return }
        try await Firestore.firestore().collection("threads").addDocument(data: threadData)
    }
}
