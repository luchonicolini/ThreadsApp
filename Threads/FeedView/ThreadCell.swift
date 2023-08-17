//
//  ThreadCell.swift
//  Threads
//
//  Created by Luciano Nicolini on 16/08/2023.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 12) {
                Image("Messi")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Lionel Messi")
                            .font(.footnote)
                            .fontWeight(.medium)
                        Spacer()
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray4))
                        
                        Button(action: {
                            // Acción del botón de opciones
                        }, label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        })
                    }
                    
                    Text("Jugador Profesional")
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
        ThreadCell()
    }
}
