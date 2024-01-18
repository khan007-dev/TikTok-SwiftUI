//
//  ExplorerView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 18.01.2024.
//

import SwiftUI

struct ExplorerView: View {
    var body: some View {
       
        NavigationStack {
            ScrollView {
              
                LazyVStack (spacing: 16) {
                    ForEach(0 ..< 20) { data in
                    
                        UserCell()
                            .padding(.horizontal)
                    }
                }
            }.navigationTitle("Explore View")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.top)
        }
    }
}

#Preview {
    ExplorerView()
}
