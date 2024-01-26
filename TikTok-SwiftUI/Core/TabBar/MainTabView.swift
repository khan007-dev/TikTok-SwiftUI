//
//  MainTabView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 15.01.2024.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab = 0
    private let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
    }
    var body: some View {
        TabView (selection: $selectedTab) {
            
            
            FeedView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 0 ? "house.fill": "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                .onAppear() { selectedTab = 0}
                .tag(0)
            
            ExplorerView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 1 ?  "person.2.fill" : "person.2")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear() { selectedTab = 1}
                .tag(1)
            
            Text("Feed")
                .tabItem {
                    VStack{
                        Image(systemName: "plus.app.fill")
                            .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                        
                    }
                }.onAppear() { selectedTab = 2}
                .tag(2)
            
         NotificationView()
                .tabItem {
                    VStack{
                        Image(systemName: "heart")
                        
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("inbox")
                    }
                }.onAppear() { selectedTab = 3}
                .tag(3)
            
            
            CurrentUserProfileView(authService: authService)
                .tabItem {
                    VStack{
                        Image(systemName: "person")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        Text("Profile")
                    }
                }.onAppear() { selectedTab = 4}
                .tag(4)
        }.tint(.black)
    }
}

#Preview {
    MainTabView(authService: AuthService())
}
