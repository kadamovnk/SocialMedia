//
//  MainView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/26/24.
//

import SwiftUI

struct MainView: View {
    @Binding var showSignInView: Bool
    
    var body: some View {
        TabView {
            NavigationStack { HomeView() }
                .tabItem { Label("Home", systemImage: "house") }
            NavigationStack { SearchView() }
                .tabItem { Label("Search", systemImage: "magnifyingglass.circle") }
            NavigationStack { SearchView() }
                .tabItem { Label("Post", systemImage: "plus.circle") }
            NavigationStack { MessagesView() }
                .tabItem { Label("Messages", systemImage: "message") }
            NavigationStack { SettingsView(showSignInView: $showSignInView) }
                .tabItem { Label("Profile", systemImage: "person.crop.circle")}
        }
    }
}

#Preview {
    NavigationStack {
        MainView(showSignInView: .constant(false))
    }
}

extension MainView {
    private var toolBarItems: some View {
        Text("hi")
    }
}
