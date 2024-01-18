//
//  UserCell.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 18.01.2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack {
                Text("Test User")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Test Name")
                    .font(.footnote)
            }
            
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
