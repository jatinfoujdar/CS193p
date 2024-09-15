//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by jatin foujdar on 14/09/24.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemorizeGameModel<String> = SwiftUIView<String>(numberOfPairsOfCards: 4)
    
    var cards: Array<MemorizeGameModel<String>.Card>{
        return model.cards
    }
    func choose(_ card: MemorizeGameModel<String>.Card){
        model.choose( card)
    }
}
