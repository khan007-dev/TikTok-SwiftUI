//
//  FeedView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 17.01.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(0..<10) {
                    post in
                    Rectangle()
                        .fill(.pink)
                        .containerRelativeFrame([.horizontal, .vertical])
                        .overlay {
                            Text("POST \(post)")
                                .foregroundStyle(.white)
                        }
                }
            }
            .scrollTargetLayout()
        }.scrollTargetBehavior(.paging)
    }
}

#Preview {
    FeedView()
}
