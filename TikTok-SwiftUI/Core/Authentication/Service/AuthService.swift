//
//  AuthService.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 25.01.2024.
//

import Foundation
import Firebase

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    func updateUserSession() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        print("Login with Email")
    }
    
    func createUser(withEmail email: String,
                    password: String,
                    username: String,
                    fullname: String) async throws {
        
      
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: User is \(result.user.uid)")
        } catch {
            print("DEBUG Faild to create user with error \(error.localizedDescription)")
            throw error
        }
        
        
    }
    
    func signout() {
        
    }
    
}
