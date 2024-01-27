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
}

struct SettingsView: View {
    
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View {
        List {
            Button {
                Task {
                    do {
                        try viewModel.signOut()
                        showSignInView = true
                    } catch {
                        print(error)
                    }
                }
            } label: {
                Text("Log out")
            }
        }
    }
}

#Preview {
    NavigationStack {
        SettingsView(showSignInView: .constant(false))
    }
}
