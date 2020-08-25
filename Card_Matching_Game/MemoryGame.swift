//
//  MemoryGame.swift
//  Card_Matching_Game
//
//  Created by Raza Shareef on 8/25/20.
//  Copyright © 2020 raza_s. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = Array<Card>()
            for pairIndex in 0..<numberOfPairsOfCards {
                let content = cardContentFactory(pairIndex)
                cards.append(Card(isFaceUp: false, isMatched: false, content: content))
                cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            }
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
    
}
