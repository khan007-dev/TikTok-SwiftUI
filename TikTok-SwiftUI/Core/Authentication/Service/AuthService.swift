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
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            
            print("DEBUG: User is \(result.user.uid)")
        } catch {
            print("DEBUG Faild to login user with error \(error.localizedDescription)")
            throw error
        }
    }
    
    func createUser(withEmail email: String,
                    password: String,
                    username: String,
                    fullname: String) async throws {
        
      
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("DEBUG Faild to create user with error \(error.localizedDescription)")
            throw error
        }
        
        
    }
    
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
}