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
                    
                        UserCell(user: user)
                            .padding(.horizontal)
                    }
                }
            }.navigationTitle("Explore View")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.top)
        }
    }
}

#Preview {
    ExplorerView()
}
