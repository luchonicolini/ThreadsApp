//
//  ThreadCell.swift
//  Threads
//
//  Created by Luciano Nicolini on 16/08/2023.
//

import SwiftUI

struct ThreadCell: View {
    let thread: Thread
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 12) {
                CircularProfileImageView(user: thread.user, size: .small)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(thread.user?.username ?? "")
                            .font(.footnote)
                            .fontWeight(.medium)
                        Spacer()
                        Text(thread.timestamp.timestampString())
                            .font(.caption)
                            .foregroundColor(Color(.systemGray4))
                        
                        Button(action: {
                            // Acción del botón de opciones
                        }, label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        })
                    }
                    
                    Text(thread.caption)
                        .font(.footnote)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16) {
                        Button(action: {
                            // Acción del botón de "Me gusta"
                        }) {
                            Image(systemName: "heart")
                        }
                        
                        Button(action: {
                            // Acción del botón de "Comentar"
                        }) {
                            Image(systemName: "message")
                        }
                        
                        Button(action: {
                            // Acción del botón de "Enviar"
                        }) {
                            Image(systemName: "paperplane")
                        }
                        
                        Button(action: {
                            // Acción del botón de "Guardar"
                        }) {
                            Image(systemName: "bookmark")
                        }
                    }
                }
            }
            .padding(.vertical, 8)
            .foregroundColor(.black)
            Divider()
        }
        .padding()
    }
}


struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell(thread: dev.thread)
    }
}
