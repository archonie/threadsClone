//
//  EditProfileView.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 27.01.2025.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            Text("Charles Leclerc")
                        }
                        Spacer()
                        CircularProfileImageView(imageName: "max-verstappen")
                    }
                    Divider()
                    
                    //bio field
                    VStack(alignment: .leading) {
                        Text("Bio")
                        TextField("Enter your bio...", text: $bio, axis: .vertical)
                    }
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Link")
                        TextField("Add link...", text: $link)
                    }
                    
                    Divider()
                    
                    Toggle("Private Profile", isOn: $isPrivateProfile)
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
