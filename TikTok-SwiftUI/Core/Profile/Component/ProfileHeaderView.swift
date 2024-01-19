//
//  ProfileHeaderView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 19.01.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
       
        VStack (spacing: 16) {
            
            VStack (spacing: 8) {
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                Text("@Ab.Waris")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            // status View
            
            HStack (spacing: 16) {
                
                SubHeadline(value: 14, title: "Following")
                SubHeadline(value: 42, title: "Follower")
                SubHeadline(value: 24, title: "Likes")
            }
        }
    }
}

#Preview {
    ProfileHeaderView()
}

struct SubHeadline: View {
    let value: Int
    let title: String
    var body: some View {
    
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text("\(title)")
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment: .center)
    }
}
