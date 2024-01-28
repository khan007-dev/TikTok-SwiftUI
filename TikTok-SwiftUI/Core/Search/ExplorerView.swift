//
//  ExplorerView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 18.01.2024.
//

import SwiftUI

struct ExplorerView: View {
    
    @StateObject var viewModel = ExplorerViewModel(userService: UserService())
    var body: some View {
       
        NavigationStack {
            ScrollView {
              
                LazyVStack (spacing: 16) {
                    ForEach(viewModel.users) { user in
                    
                        NavigationLink(value: user) {
                        UserCell(user: user)
                                .padding(.horizontal)
                        }
                           
                    }
                }
            }.navigationDestination(for: User.self, destination: {user in
             UserProfileView(user: user)
            })
            .navigationTitle("Explore View")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.top)
        }
    }
}

#Preview {
    ExplorerView()
}
