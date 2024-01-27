//
//  AuthService.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 25.01.2024.
//

import Foundation
import Firebase
@MainActor
class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    private let userService = UserService()
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
            try await uploadUserData(withEmail: email, id: result.user.uid, password: password, username: username, fullname: fullname)
        } catch {
            print("DEBUG Faild to create user with error \(error.localizedDescription)")
            throw error
        }
        
        
    }
    
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    private func uploadUserData(withEmail email: String,
                                id: String,
                                password: String,
                                username: String,
                                fullname: String) async throws{
        
        let user = User(id: id, username: username, email: email, fullname: fullname)
        try await userService.uploadUserData(user)
    }
}
