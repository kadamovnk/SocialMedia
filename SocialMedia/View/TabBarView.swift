//
//  MainView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/26/24.
//

import SwiftUI

struct TabBarView: View {
    @Binding var showSignInView: Bool
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
            SearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass.circle") }
            CreateView()
                .tabItem { Label("Post", systemImage: "plus.circle") }
            MessagesView()
                .tabItem { Label("Messages", systemImage: "message") }
            SettingsView(showSignInView: $showSignInView)
                .tabItem { Label("Profile", systemImage: "person.crop.circle")}
        }
    }
}

#Preview {
    TabBarView(showSignInView: .constant(false))
}
