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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button {
                Task {
                    await BookInformationNetworkService.getBookInformation(forBookNamed: "Dracula")
                }
            } label: {
                Text("Get Book Info")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
