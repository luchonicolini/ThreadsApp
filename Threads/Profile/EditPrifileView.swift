//
//  EditPrifileView.swift
//  Threads
//
//  Created by Luciano Nicolini on 16/08/2023.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray.opacity(0.2)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .font(.headline)
                                .fontWeight(.semibold)
                            Text("Lionel Messi")
                                .font(.subheadline)
                        }
                        Spacer()
                        
                        Image("Messi")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        
                    }
                    Divider()
                    VStack {
                        Text("Bio")
                            .fontWeight(.semibold)
                        TextField("informacion", text: $bio )
                    }
                    .font(.footnote)
                    Divider()
                    
                    VStack {
                        Text("Link")
                            .fontWeight(.semibold)
                        TextField("informacion", text: $link )
                    }
                    .font(.footnote)
                    Divider()
                        
                    Toggle("Private profile",isOn: $isPrivateProfile)
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        // Acción al presionar Cancel
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        // Acción al presionar Save
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}


struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
