//
//  MessagesView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/27/24.
//

import SwiftUI

struct MessagesView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<20, id: \.self) { index in
                    CustomCell()
                }
            }
            .navigationTitle("Messages")
            
            .searchable(text: $searchText)
            
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
    MessagesView()
}
