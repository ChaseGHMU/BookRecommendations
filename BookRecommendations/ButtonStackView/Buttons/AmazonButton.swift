//
//  AmazonButton.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/11/24.
//

import SwiftUI

struct AmazonButton: View {
    var body: some View {
        Button {
            print("Go to amazon")
        } label: {
            HStack {
                Image("Amazon_logo")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 20)
        }
        .frame(width: 250, height: 60)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}

#Preview {
    AmazonButton()
}
