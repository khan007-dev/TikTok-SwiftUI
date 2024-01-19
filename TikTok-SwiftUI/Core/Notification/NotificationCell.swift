//
//  NotificationCell.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 19.01.2024.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        
        HStack {
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 28, height: 28)
                .foregroundStyle(Color(.gray))
            
            HStack {
                Text("ab.waris")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("liked one of your posts")
                    .font(.footnote)
                
                Text("4d")
                    .font(.caption)
                    .foregroundStyle(.gray)
                Spacer()
                
            }
            
            RoundedRectangle(cornerRadius: 6)
                .frame(width: 48, height: 48)
        }.padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
