//
//  Firesstore+Constants.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 28.01.2024.
//

import Foundation
import FirebaseFirestore

struct FirestoreConstants {
    static let Root = Firestore.firestore()
    
    static let UserCollection = Root.collection("users")
}
