//
//  PictureUpdateView.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/28/24.
//

import SwiftUI

struct PictureUpdateView: View {
    
    @Binding var updatePictureCover: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Text("We are working on this!")
                ProgressView()
            }
            .padding()
            .navigationBarTitle("Update your Picture", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Back") {
                        updatePictureCover = false
                    }
                }
            }
        }
    }
}

#Preview {
    PictureUpdateView(updatePictureCover: .constant(true))
}
