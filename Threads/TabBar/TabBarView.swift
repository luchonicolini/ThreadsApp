//
//  TabBarView.swift
//  Threads
//
//  Created by Luciano Nicolini on 16/08/2023.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0
    @State private var showCreateThreadView = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
                .tag(0)
            
            // Agrega más vistas para otros tabs aquí si es necesario
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            Text("")
                .tabItem {
                    Image(systemName: "plus.circle")
                }
                .tag(2)
            
            ActivityView()
                .tabItem {
                    Image(systemName: "bell")
                }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
                .tag(4)
        }
        .onChange(of: selectedTab, perform: { newvalue in
            showCreateThreadView = selectedTab == 2
            
        })
        .sheet(isPresented: $showCreateThreadView, onDismiss:  {
            selectedTab = 0
        }, content: {
            CreateThreadView()
        })
        .tint(.black)
    }
}



struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
