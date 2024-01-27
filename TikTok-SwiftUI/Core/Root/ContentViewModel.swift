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
    private let authService: AuthService
    private var cancellables = Set<AnyCancellable>()
    init(authService: AuthService)
    {
        self.authService = authService
        setupSubscriber()
        authService.updateUserSession()
    }
    
    private func setupSubscriber() {
        authService.$userSession.sink { [weak self] user in
            self?.userSession = user
            
        }.store(in: &cancellables)
    }
}
