//
//  ContentViewModel.swift
//  TikTok-SwiftUI
//
//  Created by Khan on 26.01.2024.
//

import Foundation
import FirebaseAuth
import Combine

@MainActor
class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currrentUser: User?
    
    private let authService: AuthService
    private let userService: UserService
    private var cancellables = Set<AnyCancellable>()
    init(authService: AuthService, userService: UserService)
    {
        
        self.authService = authService
        self.userService = userService
        setupSubscriber()
        authService.updateUserSession()
    }
    
    private func setupSubscriber() {
        authService.$userSession.sink { [weak self] user in
            self?.userSession = user
            self?.fetchCurrentUser()
            
        }.store(in: &cancellables)
    }
    
    
    func fetchCurrentUser() {
        
        guard userSession != nil else { return }
        
        Task {
            self.currrentUser = try await userService.fetchCurrentUser()
        }
    }
}
