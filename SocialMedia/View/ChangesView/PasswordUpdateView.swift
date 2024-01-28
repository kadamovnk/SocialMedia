//
//  PasswordUpdateView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/28/24.
//

import SwiftUI

struct PasswordUpdateView: View {
    
    @State private var password: String = ""
    @Binding var updatePasswordCover: Bool
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Enter your new password:")
                SecureField("Password: ", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.4))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .autocapitalization(.none)
                
                Spacer()
                
                Button {
                    Task {
                        do {
                            try await AuthenticationManager.shared.updatePassword(password: password)
                            print("Password successfully updated")
                            updatePasswordCover = false
                        } catch {
                            print("Can't update password")
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
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
            }
            .padding()
            .navigationBarTitle("Update your Password", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Back") {
                        updatePasswordCover = false
                    }
                }
            }
        }
    }
}

#Preview {
    PasswordUpdateView(updatePasswordCover: .constant(true))
}
