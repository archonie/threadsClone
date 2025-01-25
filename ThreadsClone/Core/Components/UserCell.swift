//
//  UserCell.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 25.01.2025.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView(imageName: "max-verstappen")
            VStack(alignment: .leading) {
                Text("maxverstappen1")
                    .fontWeight(.semibold)
                Text("Max Verstappen")
            }
            .font(.footnote)
            Spacer()
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
