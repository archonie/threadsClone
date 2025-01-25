//
//  ProfileThreadFilter.swift
//  ThreadsClone
//
//  Created by Doğan Ensar Papuçcuoğlu on 26.01.2025.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads:
            return "Threads"
        case .replies:
            return "Replies"
        }
    }
    
    var id: Int { return self.rawValue }
}
    
