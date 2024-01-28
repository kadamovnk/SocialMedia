//
//  AuthentificationView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/26/24.
//

import SwiftUI

struct AuthentificationView: View {
    
    @EnvironmentObject private var viewModel: SocialMediaViewModel
    @Binding var showSignInView: Bool
    
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()

                VStack {
                    Image(systemName: "figure.socialdance")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 80)
                    Text("Social Media App")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(30)
                    Text("First Sign Up to Get Started")
                        .font(.headline)
                    
                    NavigationLink {
                        SignInEmailView(showSignInView: $showSignInView)
                            .environmentObject(SocialMediaViewModel())
                    } label: {
                        Text("Sign up with Email")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 15)
                        
                    }
                }
                
                Spacer()
                
                VStack(spacing: 16) {
                    Text("Already Signed Up?")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    
                    NavigationLink {
                        SignInEmailView(showSignInView: $showSignInView)
                            .environmentObject(SocialMediaViewModel())
                    } label: {
                        Text("Sign in with Email")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .padding()
                            .frame(height: 55)
                            //.frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 15)
                    }
                }
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Welcome")
    }
}

#Preview {
    NavigationStack {
        AuthentificationView(showSignInView: .constant(false))
            .environmentObject(SocialMediaViewModel())
    }
}
