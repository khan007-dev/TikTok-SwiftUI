//
//  CurrentUserProfileView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 19.01.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
       
        NavigationStack {
            
            ScrollView {
                VStack (spacing: 2) {
                    // profile header
                    ProfileHeaderView()
                    
                    // profile grid view
                    PostGrideView()
                    
                }.padding(.top)
            }.navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
