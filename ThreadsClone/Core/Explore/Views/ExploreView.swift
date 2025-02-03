//
//  ExploreView.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 24.01.2025.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel = ExploreViewModel()
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.users) { user in
                        VStack {
                            UserCell(user: user)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
            .refreshable {
                print("")
            }
        }
    }
}

#Preview {
    ExploreView()
}
