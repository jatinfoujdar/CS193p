//
//  ContentView.swift
//  Memorize
//
//  Created by jatin foujdar on 09/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            cardView(isFaceup: true)
            cardView()
            cardView()
            }
        
        .padding()
        .imageScale(.large)
    }
}

#Preview {
    ContentView()
}

struct cardView : View {
    var isFaceup : Bool = false
    var body: some View {
        ZStack {
            if isFaceup{
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(lineWidth: 2)
                Image(systemName: "circle")
                    .foregroundStyle(.tint)
            }
            else
            {
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}
