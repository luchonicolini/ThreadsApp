//
//  ProfileHeaderView.swift
//  Threads
//
//  Created by Luciano Nicolini on 18/08/2023.
//

import SwiftUI

struct ProfileHeaderView: View {
   var user: User?
    
    init(user: User?) {
        self.user = user
    }
  
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(user?.fullname ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(user?.username ?? "")
                        .font(.subheadline)
                }
                
                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text("2 Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            Image("Messi")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: dev.user)
    }
}
