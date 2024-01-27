//
//  SocialMediaViewModel.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/27/24.
//

import Foundation

class SocialMediaViewModel: ObservableObject {
    @Published var isLoggedIn: Bool = false
    @Published var email = ""
    @Published var password = ""
    
    
    func signUp() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found")
            return
        }
        
        try await AuthenticationManager.shared.createUser(email: email, password: password)
    }
    
    func signIn() async throws {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found")
            return
        }
        
        try await AuthenticationManager.shared.signInUser(email: email, password: password)
    }
}
