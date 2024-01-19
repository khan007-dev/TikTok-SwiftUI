//
//  PostGrideView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 19.01.2024.
//

import SwiftUI

struct PostGrideView: View {
    
    private let item = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible())
    ]
    
    private let width = (UIScreen.main.bounds.width / 3) - 2
    var body: some View {
  
        LazyVGrid(columns: item, spacing: 2) {
            
            ForEach ( 0 ..< 15) { data in
            
                Rectangle()
                    .frame(width: width, height: 160)
            }
        }
        
    }
}

#Preview {
    PostGrideView()
}
