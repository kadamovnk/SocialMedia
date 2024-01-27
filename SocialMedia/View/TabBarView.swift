//
//  TabBarView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/27/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        HStack(spacing: 35) {
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "house.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("Home")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
            }
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "magnifyingglass.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("Search")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
            }
            VStack {
                Image(systemName: "plus.app.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                Text("Post")
                    .font(.caption)
                    .fontWeight(.semibold)
            }
            VStack {
                Image(systemName: "message.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                Text("Messages")
                    .font(.caption)
                    .fontWeight(.semibold)
            }
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                Text("Profile")
                    .font(.caption)
                    .fontWeight(.semibold)
            }
        }
        .foregroundStyle(.blue)
        .frame(maxWidth: .infinity)
        .frame(height: 80)
        .background(Material.ultraThin)
    }
}

#Preview {
    TabBarView()
}
