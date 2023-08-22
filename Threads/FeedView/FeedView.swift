//
//  FeedView.swift
//  Threads
//
//  Created by Luciano Nicolini on 16/08/2023.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(viewModel.threads) { index in
                        ThreadCell(thread: index)
                        
                    }
                }
            }
            .refreshable {
                Task { try await viewModel.fechThreads() }
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "arrow.counterclockwise")
                            .foregroundColor(.black)
                    })
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
