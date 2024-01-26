//
//  ContentView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 14.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel(authService: AuthService())
    var body: some View {
     
        Group {
            if viewModel.userSession == nil {
                MainTabView()
               
            } else  {
                LoginView()
            }
        }
        
    }
}

#Preview {
    MainTabView()
}
