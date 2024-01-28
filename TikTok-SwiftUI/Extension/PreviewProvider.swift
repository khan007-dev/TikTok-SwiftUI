//
//  PreviewProvider.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 28.01.2024.
//

import Foundation

struct DeveloperPreview {
    
    
    static var user = User(id: NSUUID().uuidString, username: "khan@AB", email: "khan@gmail.com", fullname: "Khan AB")
    
    static var users: [User] = [
    
        .init(id: NSUUID().uuidString, username: "Hi", email: "hi@gmail.com", fullname: "Hello"),
        .init(id: NSUUID().uuidString, username: "Hi", email: "hi@gmail.com", fullname: "Hello"),
        .init(id: NSUUID().uuidString, username: "Hi", email: "hi@gmail.com", fullname: "Hello")
    ]
}
