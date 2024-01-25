//
//  AuthService.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 25.01.2024.
//

import Foundation
import Firebase

class AuthService {
    
    func login(withEmail email: String, password: String) async throws {
        print("Login with Email")
    }
    
    func createUser(withEmail email: String,
                    password: String,
                    username: String,
                    fullname: String) async throws {
        
        print("DEBUG: User info \(email) \(fullname)")
    }
    
    func signout() {
        
    }
    
}
