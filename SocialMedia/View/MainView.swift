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
            NavigationView {
                VStack {
                    Text("There will be your feed...")
                        .overlay {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
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
            .tabItem {
                    Image(systemName: "house")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("Home")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
            NavigationView {
                VStack {
                    Text("Searching...")
                        .searchable(text: .constant("Search..."))
                        .navigationTitle("Search")
                    ProgressView()
                }
            }
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("Search")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
            NavigationView {
                Text("Create your post here...")
                    .navigationTitle("Create a post")
            }
                .tabItem {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("Post")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
            MessagesView()
                .tabItem {
                    Image(systemName: "message.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("Messages")
                        .font(.caption)
                        .fontWeight(.semibold)

                }
            SettingsView(showSignInView: $showSignInView)
                .tabItem {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("Profile")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                
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
