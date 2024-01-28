//
//  UpdateEmailView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/28/24.
//

import SwiftUI

struct EmailUpdateView: View {
    
    @Binding var updateEmailCover: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Text("We are working on this!")
                ProgressView()
            }
            .padding()
            .navigationBarTitle("Update your Password", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Back") {
                        updateEmailCover = false
                    }
                }
            }
        }
    }
}

#Preview {
    EmailUpdateView(updateEmailCover: .constant(true))
}
