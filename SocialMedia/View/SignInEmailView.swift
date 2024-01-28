//
//  SignInEmailView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/27/24.
//

import SwiftUI

struct SignInEmailView: View {
    
    @EnvironmentObject private var viewModel: SocialMediaViewModel
    @Binding var showSignInView: Bool
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Enter your Email:")
            TextField("Email: ", text: $viewModel.email)
                .padding()
                .background(Color.gray.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .autocapitalization(.none)
            
            Text("Enter your password:")
            SecureField("Password: ", text: $viewModel.password)
                .padding()
                .background(Color.gray.opacity(0.4))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button {
                
            } label: {
                Text("Forgot your password?")
                    .font(.headline)
                    .padding(.vertical)
                    
                    
            }
            
            Spacer()
            
            Button {
                Task {
                    do {
                        try await viewModel.signUp()
                        showSignInView = false
                        print("Signed Up")
                        return
                    } catch {
                        print(error)
                    }
                    
                    do {
                        try await viewModel.signIn()
                        showSignInView = false
                        print("Signed In")
                        return
                    } catch {
                        print(error)
                    }
                }
            } label: {
                Text("Sign in")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
        }
        .padding()
        .navigationTitle("Sign in with Email")
    }
}

#Preview {
    NavigationStack {
        SignInEmailView(showSignInView: .constant(false))
            .environmentObject(SocialMediaViewModel())
    }
}
