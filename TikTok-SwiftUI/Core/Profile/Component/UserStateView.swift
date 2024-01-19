//
//  UserStateView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 19.01.2024.
//

import SwiftUI

struct UserStateView: View {
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

#Preview {
    UserStateView(value: 2, title: "Follower")
}
