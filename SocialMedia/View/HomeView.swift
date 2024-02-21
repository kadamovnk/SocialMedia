//
//  HomeView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 2/21/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("There will be your feed...")
                    .overlay {
                        RoundedRectangle(cornerRadius: 25.0)
                            .stroke(lineWidth: 8)
                            .frame(width: 300, height: 400)
                        Image(systemName: "heart.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.red)
                            .frame(height: 30)
                            .offset(x: -115, y: 165)
                        Image(systemName: "bubble.left.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .offset(x: -70, y: 165)
                        Image(systemName: "paperplane")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .offset(x: -25, y: 165)
                    }
                    .navigationTitle("Home")
                ProgressView()
            }
        }
    }
}

#Preview {
        HomeView()
}
