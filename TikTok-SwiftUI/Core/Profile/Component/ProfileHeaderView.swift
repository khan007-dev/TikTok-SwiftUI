//
//  ProfileHeaderView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 19.01.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    var body: some View {
       
        VStack (spacing: 16) {
            
            VStack (spacing: 8) {
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                Text("\(user.username)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            // status View
            
            HStack (spacing: 16) {
                
                UserStateView(value: 14, title: "Following")
                UserStateView(value: 42, title: "Follower")
                UserStateView(value: 24, title: "Likes")
            }
            
            Button(action: {}, label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView(user: DeveloperPreview.user)
}


