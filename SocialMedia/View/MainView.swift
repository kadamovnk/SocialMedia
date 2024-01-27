//
//  MainView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/26/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<50) { index in
                    Text("hello")
                        .frame(maxWidth: .infinity)
                }
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
        .overlay(alignment: .bottom) {
            TabBarView()
                .frame(width: UIScreen.main.bounds.width)
        }
    }
}

#Preview {
    NavigationStack {
        MainView()
    }
}
