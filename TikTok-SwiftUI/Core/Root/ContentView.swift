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
    
    init(authService: AuthService) {
        self.authService = authService
        let vm = ContentViewModel(authService: authService)
        self._viewModel = StateObject(wrappedValue: vm)
    }
    var body: some View {
     
        Group {
            if viewModel.userSession != nil {
                MainTabView(authService: authService)
               
            } else  {
                LoginView(authService: authService)
            }
        }
        
    }
}

#Preview {
    MainTabView(authService: AuthService())
}
