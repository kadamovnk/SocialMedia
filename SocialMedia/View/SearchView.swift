//
//  SearchView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 2/21/24.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Searching...")
                    .searchable(text: .constant("Search..."))
                ProgressView()
            }
            .navigationTitle("Search")
        }
    }
}

#Preview {
    SearchView()
}
