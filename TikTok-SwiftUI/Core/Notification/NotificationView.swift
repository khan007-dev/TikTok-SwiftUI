//
//  NotificationView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 19.01.2024.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        
        NavigationStack {
            ScrollView {
                
                LazyVStack {
                    
                    ForEach( 0 ..< 10) { notification in
                        
                        NotificationCell()
                    }
                }
            }.navigationTitle("Notifications")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.top)
        }
        
    }
}

#Preview {
    NotificationView()
}
