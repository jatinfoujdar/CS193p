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
    @State var isFaceup = false
   
    var body: some View {
        let base  =  RoundedRectangle(cornerRadius: 10)
        ZStack {
            if isFaceup{
                base.fill(.white)
                    .strokeBorder(lineWidth: 2)
                Image(systemName: "globe")
                    .foregroundStyle(.tint)
            }
            else
            {
                base.fill(.orange)
            }
            
        }
        .onTapGesture {
            isFaceup.toggle()
        }
    }
}
