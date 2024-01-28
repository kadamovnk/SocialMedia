//
//  nameAfterSignUpView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/28/24.
//

import SwiftUI

struct NameUpdateView: View {
    
    @State private var name: String = ""
    @Binding var updateNameCover: Bool
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Enter your name:")
                TextField("Name: ", text: $name)
                    .padding()
                    .background(Color.gray.opacity(0.4))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .autocapitalization(.none)
                
                Spacer()
                
                Button {
                    Task {
                        do {
                            try await AuthenticationManager.shared.setUserName(displayName: name)
                            print("Name successfully updated")
                            updateNameCover = false
                        } catch {
                            print("Can't update name")
                        }
                        
                    }
                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
            }
            .padding()
            .navigationBarTitle("Update your name", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Back") {
                        updateNameCover = false
                    }
                }
            }
        }
    }
}

#Preview {
    NameUpdateView(updateNameCover: .constant(true))
}
