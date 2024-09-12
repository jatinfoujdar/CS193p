//
//  MemorizeGameModel.swift
//  Memorize
//
//  Created by jatin foujdar on 13/09/24.
//

import Foundation

struct MemorizeGameModel<CardContent>{
    var cards : Array<Card>
    func choose(card: Card){
        
    }
    struct Card{
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        
    }
}
