//
//  ImageUploader.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 7.02.2025.
//

import Foundation
import FirebaseStorage
import Firebase

struct ImageUploader {
    static func uploadImage(_ image: UIImage) async throws -> String? {
        guard let imageData = image.jpegData(compressionQuality: 0.25) else { return nil }
        let filename = NSUUID().uuidString
        let storageRef = Storage.storage().reference(withPath: "/profile_images/\(filename)")
        do {
            let _ = try await storageRef.putDataAsync(imageData)
            let url = try await storageRef.downloadURL()
            return url.absoluteString
        } catch {
            print("Failed to upload image. ")
            return nil
        }
    }
}
