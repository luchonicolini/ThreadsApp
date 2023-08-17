//
//  ProfileFilter.swift
//  Threads
//
//  Created by Luciano Nicolini on 16/08/2023.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    case likes
    
    var title: String {
        switch self {
        case .threads: return "threads"
        case .replies: return "replies"
        case .likes: return "likes"
        }
    }
    var id: Int { return self.rawValue }
}
