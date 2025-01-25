//
//  CircularProfileImageView.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 25.01.2025.
//

import SwiftUI

struct CircularProfileImageView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView(imageName: "max-verstappen")
}
