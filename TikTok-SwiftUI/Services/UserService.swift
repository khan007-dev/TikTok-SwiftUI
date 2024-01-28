//
//  UserService.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 27.01.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import FirebaseFirestore


protocol UserServiceProtocol {
    func fetchUsers() async throws -> [User]
}
struct UserService: UserServiceProtocol {
    
    func fetchCurrentUser() async throws -> User? {
        
        guard let currentid = Auth.auth().currentUser?.uid else { return nil }
        
        let currentUser = try await FirestoreConstants.UserCollection.document(currentid).getDocument(as: User.self)
        
        print("Current User \(currentUser)")
        
        return currentUser
    }
    func uploadUserData(_ user: User) async throws {
        
        do {
            let userData = try Firestore.Encoder().encode(user)
            try await FirestoreConstants.UserCollection.document(user.id)
                .setData(userData)
        }
        catch {
            throw error
        }
    }
    
    
    func fetchUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self)})
    }
    
}


struct MockUserService: UserServiceProtocol {
    
    func fetchUsers() async throws -> [User] {
        return DeveloperPreview.users
    }
}
