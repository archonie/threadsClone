//
//  Thread.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 9.02.2025.
//

import Firebase
import FirebaseFirestore

struct Thread: Identifiable, Codable {
    @DocumentID var threadId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    var id: String {
        return threadId ?? NSUUID().uuidString
    }
    var user: User?
}
