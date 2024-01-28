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
            NavigationView {
                MainView(showSignInView: $showSignInView)
            }
        }
        .onAppear {
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showSignInView, onDismiss: {
            // need to refresh main screen
        }) {
            NavigationStack {
                AuthentificationView(showSignInView: $showSignInView)
                    .environmentObject(SocialMediaViewModel())
            }
        }
    }
}

#Preview {
    RootView()
}
