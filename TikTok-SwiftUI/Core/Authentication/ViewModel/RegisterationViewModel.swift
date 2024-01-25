//
//  RegisterationViewModel.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 25.01.2024.
//

import Foundation



class RegisterationViewModel: ObservableObject {
    
    private let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
    }
    
    func createUser(withEmail email: String, password: String, username: String, fullname: String) async {
        do {
            try await authService.createUser(withEmail: email, password: password, username: username, fullname: fullname)
        }
        catch {
            print("Error \(error.localizedDescription)")
        }
    }
}
