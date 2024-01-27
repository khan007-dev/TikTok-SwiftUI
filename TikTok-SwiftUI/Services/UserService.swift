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
struct UserService {
    
    
    func uploadUserData(_ user: User) async throws {
        
        do {
            let userData = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.id)
                .setData(userData)
        }
        catch {
            throw error
        }
    }
    
    
}
