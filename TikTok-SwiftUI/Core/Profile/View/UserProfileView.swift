//
//  UserProfileView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 28.01.2024.
//

import SwiftUI

struct UserProfileView: View {
    let user: User
    var body: some View {
        
        ScrollView {
            VStack (spacing: 2) {
                // profile header
                ProfileHeaderView(user: DeveloperPreview.user)
                
                // profile grid view
                PostGrideView()
                
            }.padding(.top)
        }
    }
}

#Preview {
    UserProfileView(user: DeveloperPreview.user)
}
