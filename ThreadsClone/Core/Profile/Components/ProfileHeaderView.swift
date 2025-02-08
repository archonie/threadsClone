//
//  ProfileHeaderView.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 4.02.2025.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User?
    init(user: User?) {
        self.user = user
    }
    var body: some View {
        HStack(alignment: .top) {
            //bio and stats
            VStack(alignment: .leading, spacing: 12) {
                //full name and username
                VStack(alignment: .leading, spacing: 4) {
                    Text(user?.fullName ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(user?.username ?? "")
                        .font(.subheadline)
                }
                
                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text("2 followers")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            CircularProfileImageView(user: user, size: .medium)
        }
    }
}

#Preview {
    ProfileHeaderView(user: DeveloperPreview.shared.user)
}
