//
//  AppleButton.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/11/24.
//

import SwiftUI

struct AppleButton: View {
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: "apple.logo")
                Text("Buy on Apple Books")
            }
        }
        .frame(width: 200)
        .padding(.vertical, 20)
        .padding(.horizontal, 15)
        .background(.black)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .padding(.bottom, 15)
    }
}

#Preview {
    AppleButton()
}
