//
//  UserCell.swift
//  Threads
//
//  Created by Luciano Nicolini on 18/08/2023.
//

import SwiftUI
import Firebase

struct UserCell: View {
    let user: User
   
    var body: some View {
        HStack {
            CircularProfileImageView(user: nil, size: .small)
            VStack(alignment: .leading, spacing: 2) {
                Text(user.username)
                    .fontWeight(.semibold)
                Text(user.fullname)
            }
            .font(.footnote)
            Spacer()
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
            
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(user: dev.user)
    }
}


extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    let user = User(id: NSUUID().uuidString, fullname: "Lionel Messi", email: "Messi@gmail.com", username: "LeoMessi_1", bio: "")
    let thread = Thread(ownerUid: "123", caption: "Hola Mundo", timestamp: Timestamp(), likes: 0)
}
