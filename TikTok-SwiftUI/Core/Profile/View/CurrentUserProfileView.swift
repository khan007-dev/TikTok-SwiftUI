//
//  CurrentUserProfileView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 19.01.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
     let authService: AuthService
    let user: User
    var body: some View {
       
        NavigationStack {
            
            ScrollView {
                VStack (spacing: 2) {
                    // profile header
                    ProfileHeaderView(user:user)
                    
                    // profile grid view
                    PostGrideView()
                    
                }.padding(.top)
            }.navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Sign Out") {
                            authService.signout()
                        }
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    }
                }
        }
    }
}

#Preview {
    CurrentUserProfileView(authService: AuthService(), user: DeveloperPreview.user)
}
