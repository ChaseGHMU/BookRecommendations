//
//  CounterView.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/8/24.
//

import SwiftUI

struct CounterView: View {
    @Binding var counter: Int
    
    var body: some View {
        let _ = Self._printChanges()
        Button {
            counter += 1
        } label: {
            Text("Tap Me")
        }
        
        Text("\(counter)")
    }
}

#Preview {
    CounterView(counter: .constant(0))
}
