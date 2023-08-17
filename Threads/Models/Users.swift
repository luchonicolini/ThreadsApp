//
//  Users.swift
//  Threads
//
//  Created by Luciano Nicolini on 17/08/2023.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    //let profileImageUrl: String?
   // let bio: String?
}
