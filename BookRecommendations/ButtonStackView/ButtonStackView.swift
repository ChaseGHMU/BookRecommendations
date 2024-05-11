//
//  ButtonStackView.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/11/24.
//

import SwiftUI

struct ButtonStackView: View {
    var body: some View {
        VStack(spacing: 20) {
            AppleButton()
            AmazonButton()
            OpenLibraryButton()
        }
    }
}

#Preview {
    ButtonStackView()
}
