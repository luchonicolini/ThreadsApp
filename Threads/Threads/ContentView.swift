//
//  ContentView.swift
//  Threads
//
//  Created by Luciano Nicolini on 15/08/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewMode()
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                TabBarView()
            } else {
                LoginView()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button(action: {
//    // Perform login action here
//}) {
//    Text("Login")
//        .font(.subheadline)
//        .fontWeight(.semibold)
//        .foregroundColor(.white)
//        .frame(width: 352, height: 44)
//        .background(Color.black)
//        .cornerRadius(8)
//}

