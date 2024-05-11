//
//  OpenLibraryButton.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/11/24.
//

import SwiftUI

struct OpenLibraryButton: View {
    var body: some View {
        Button {
            print("Go to Open Library")
        } label: {
            HStack {
                Image("openlibrary-logo")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 20)
        }
        .frame(width: 250, height: 60)
        .foregroundColor(.white)
    }
}

#Preview {
    OpenLibraryButton()
}
