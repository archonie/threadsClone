//
//  PreviewProvider.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 3.02.2025.
//

import SwiftUI

class DeveloperPreview {
    static let shared = DeveloperPreview()
    let user = User(id: NSUUID().uuidString, fullName: "Max Verstappen", email: "max@gmail.com", username: "maxverstappen1")
}
