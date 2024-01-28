//
//  UserCell.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 18.01.2024.
//

import SwiftUI

struct UserCell: View {
    let user: User
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack {
                Text(user.username)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text(user.fullname)
                    .font(.footnote)
            }
            .foregroundStyle(Color.black)
            
            Spacer()
        }
    }
}

#Preview {
    UserCell(user: DeveloperPreview.user)
}
