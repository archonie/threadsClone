//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 24.01.2025.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                ProfileHeaderView(user: user)
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                //user content list view
                UserContentListView()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
    }
    
}

#Preview {
    ProfileView(user: DeveloperPreview.shared.user)
}
