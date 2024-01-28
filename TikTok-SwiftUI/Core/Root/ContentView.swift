//
//  ContentView.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 14.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel : ContentViewModel
    private let authService: AuthService
    private let userService: UserService
    
    init(authService: AuthService, userService: UserService) {
        self.authService = authService
        self.userService = userService
        let vm = ContentViewModel(authService: authService, userService: userService)
        self._viewModel = StateObject(wrappedValue: vm)
    }
    var body: some View {
     
        Group {
            if viewModel.userSession != nil {
                if let user = viewModel.currrentUser {
                    MainTabView(authService: authService, user: user)
                }
               
               
            } else  {
                LoginView(authService: authService)
            }
        }
        
    }
}

#Preview {
    ContentView(authService: AuthService(), userService: UserService())
}
