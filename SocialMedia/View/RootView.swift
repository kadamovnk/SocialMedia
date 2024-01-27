//
//  RootView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/27/24.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject private var viewModel: SocialMediaViewModel
    @State var showSignInView: Bool = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                SettingsView(showSignInView: $showSignInView)
            }
        }
        .onAppear {
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack {
                AuthentificationView()
                    .environmentObject(SocialMediaViewModel())
            }
        }
    }
}

#Preview {
    RootView()
}
