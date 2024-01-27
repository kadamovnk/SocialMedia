//
//  MainView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/26/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("hello")
                .frame(maxWidth: .infinity)
                .tabItem {
                    Image(systemName: "house.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                    Text("Home")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        
                    } label: {
                        Text("Edit")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        HStack(spacing: 16) {
                            Button {
                                
                            } label: {
                                Image(systemName: "plus.circle")
                            }
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "square.and.pencil")
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        MainView()
    }
}

extension MainView {
    private var toolBarItems: some View {
        Text("hi")
    }
}
