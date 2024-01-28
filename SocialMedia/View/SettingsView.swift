//
//  SettingsView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/27/24.
//

import SwiftUI

@MainActor
final class SettingsViewModel:ObservableObject {
    func signOut() throws {
        try AuthenticationManager.shared.signOut()
    }
    func resetPassword() async throws {
        let authUser = try AuthenticationManager.shared.getAuthenticatedUser()
        guard let email = authUser.email else {
            throw URLError(.fileDoesNotExist)
        }
        try await AuthenticationManager.shared.resetPassword(email: email)
    }
    func updateEmail() async throws {
        let email = "hello123@testing.com"
        try await AuthenticationManager.shared.updateEmail(email: email)
    }
    func updatePassword() async throws {
        let password = "12345678"
        try await AuthenticationManager.shared.updatePassword(password: password)
    }
    func deleteAccount() async throws {
        try await AuthenticationManager.shared.deleteAccount()
    }
}

struct SettingsView: View {
    
    @State private var userEmail: String = "No user signed in"
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showSignInView: Bool
    @State private var updateNameCover: Bool = false
    @State private var email: String = ""
    @State private var name: String = ""
    
    var body: some View {
        NavigationView {
            List {
                profileSection
                emailSection
                accountSection
            }
            .sheet(isPresented: $updateNameCover, onDismiss: .some({
                name = AuthenticationManager.shared.fetchUserName()
            }), content: {
                NameUpdateView(updateNameCover: $updateNameCover)
            })
            .navigationTitle("Profile")
            .onAppear {
                email = AuthenticationManager.shared.fetchUserEmail()
                name = AuthenticationManager.shared.fetchUserName()
            }
        }
    }
}

#Preview {
    SettingsView(showSignInView: .constant(false))
}

extension SettingsView {
    
    private var profileSection: some View {
        HStack(spacing: 15) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                Text("\(name)")
                    .font(.title2)
                // MARK: need to implement async throws
                Text("\(email)")
                    .font(.subheadline)
            }
        }
    }
    
    private var accountSection: some View {
        Section {
            Button {
                updateNameCover.toggle()
            } label: {
                Text("Update your name")
            }
            Button {
                Task {
                    do {
                        try viewModel.signOut()
                        showSignInView = true
                        print("User signed out")
                    } catch {
                        print(error)
                    }
                }
            } label: {
                Text("Log out")
            }
            
            Button {
                Task {
                    do {
                        try await viewModel.deleteAccount()
                        showSignInView = true
                        print("Account deleted")
                    } catch {
                        print(error)
                    }
                }
            } label: {
                Text("Delete account")
                    .foregroundStyle(.red)
            }
        } header: {
            Text("Account")
        }
    }
    
    private var emailSection: some View {
        
        Section {
            Button {
                Task {
                    do {
                        try await viewModel.resetPassword()
                        print("Password reset")
                    } catch {
                        print(error)
                    }
                }
            } label: {
                Text("Reset Password")
            }
            
            Button {
                Task {
                    do {
                        try await viewModel.updateEmail()
                        print("Email updated!")
                    } catch {
                        print(error)
                    }
                }
            } label: {
                Text("Update Email")
            }
            
            Button {
                Task {
                    do {
                        try await viewModel.updatePassword()
                        print("Password updated!")
                    } catch {
                        print(error)
                    }
                }
            } label: {
                Text("Update Password")
            }
        } header: {
            Text("Email functions")
        }
        
    }
}
