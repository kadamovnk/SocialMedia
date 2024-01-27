//
//  CustomCell.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/27/24.
//

import SwiftUI

struct CustomCell: View {
    var body: some View {
        HStack{
            Image(systemName: "person.crop.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text("Nodirbek Kadamov")
                Text("A new message to you")
                    .foregroundStyle(.secondary)
            }
            Spacer()
            VStack {
                Text("5:55 PM")
                Spacer()
            }
        }
        .frame(maxHeight: 70)
    }
}

#Preview {
    CustomCell()
}
