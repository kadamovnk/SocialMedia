//
//  TempView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 2/21/24.
//

import SwiftUI

struct TempView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "play.house") }
            SearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
        }
    }
}

#Preview {
    TempView()
}
