//
//  ExplorerViewModel.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 28.01.2024.
//

import Foundation

@MainActor
class ExplorerViewModel: ObservableObject {
    
    @Published var users = [User] ()
    private let userService: UserServiceProtocol
    init(userService: UserServiceProtocol) {
        self.userService = userService
        Task {
           await fetchUsers()
        }
    }
    
    func fetchUsers() async {
       
        do {
            self.users = try await userService.fetchUsers()
        }
        catch {
            print("DEBUG: failed to fetch users with error: \(error.localizedDescription)")
        }
    }
}
