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
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found")
            return
        }
        
        Task {
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success: ")
                print(returnedUserData)
            } catch {
                print("Error: \(error)")
            }
        }
    }
}
