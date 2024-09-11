//
//  SwiftUIView.swift
//  Memorize
//
//  Created by jatin foujdar on 11/09/24.
//

import SwiftUI

struct SwiftUIView: View {
let emojis = ["🐙","🐵","🐒","🦍","🦧","🐶","🐕"]
    var body: some View {
        VStack{
            
            HStack{
                ForEach(0..<emojis.count, id: \.self){
                    index in CardView(content: emojis[index])
                }
            }
          
        }
        
    }
}

#Preview {
    SwiftUIView()
}

struct CardViews: View {
    let content: String
    var body: some View {
        let base = RoundedRectangle(cornerRadius: 10)
        
        base
            .fill(Color.orange)
            .overlay(
                base
                    .strokeBorder(Color.black, lineWidth: 2)
            )
            .overlay(
                Text(content)
                    .foregroundColor(.white) // Optional: Set text color
            )
            .frame(width: 100,height:100)
            .padding() // Optional: Add some padding around the card
    }
}

