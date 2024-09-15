//
//  MemorizeGameModel.swift
//  Memorize
//
//  Created by jatin foujdar on 13/09/24.
//

import Foundation

struct MemorizeGameModel<CardContent> {
    private(set) var cards: Array<Card>
    
    // The initializer now accepts an array of card contents.
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        
        // For each pair, generate two cards with the same content.
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex) // Generate content for the pair
            cards.append(Card( content: content))
            cards.append(Card( content: content))
        }
    }
    
    func choose(_ card: Card) {
        // Logic for selecting a card will go here.
    }
    
    struct Card {
        var isFaceUp =  false
        var isMatched =  false
        var content: CardContent
    }
}
