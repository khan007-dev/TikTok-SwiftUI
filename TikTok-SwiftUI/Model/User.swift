//
//  User.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 27.01.2024.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let username: String
    let email: String
    let fullname: String
    var bio:String?
    var profileImageUrl: String?
    
}
