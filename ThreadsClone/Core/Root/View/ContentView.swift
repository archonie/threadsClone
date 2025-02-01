//
//  ContentView.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 21.01.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                ThreadsTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
