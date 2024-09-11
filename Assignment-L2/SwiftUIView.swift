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
        ZStack{
            Text("Memorize!")
                .font(.largeTitle)
            .fontWeight(.bold)
            .frame(maxHeight: .infinity, alignment: .top)
            HStack{
                ForEach(0..<emojis.count, id: \.self){
                    index in CardViews(content: emojis[index])
                }
        }
           
        }
        HStack{
            Text("sd")
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
                    .foregroundColor(.black)
            )
            .frame(width: 60,height:60)// Optional: Add some padding around the card
    }
}

