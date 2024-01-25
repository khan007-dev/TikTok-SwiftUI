//
//  LoginViewModel.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 25.01.2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    private let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
    }
    
    func login(withEmail email: String, password: String) async {
        do {
            try await authService.login(withEmail: email, password: password)
        }
        catch {
            print("Error \(error.localizedDescription)")
        }
    }
}
