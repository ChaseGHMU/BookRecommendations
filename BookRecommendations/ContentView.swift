//
//  ContentView.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("dracula", bundle: nil)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 200)
                .padding(.vertical, 20)
                .background(.gray.opacity(0.4))
            Text("Dracula")
                .font(.title2)
                .underline()
            Text("Author: Bram Stoker")
            VStack(alignment: .leading) {
                Text("This is a description of the book that tells you that it's spooky and about a vampire and some other stuff I have never actually read it whoops")
                    .padding()
            }
            Spacer()
            ButtonStackView()

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle("Book of the Day")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    ContentView()
}
