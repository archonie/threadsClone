//
//  User.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 2.02.2025.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullName: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
