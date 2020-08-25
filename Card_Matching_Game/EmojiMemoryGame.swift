//
//  EmojiMemoryGame.swift
//  Card_Matching_Game
//
//  Created by Raza Shareef on 8/25/20.
//  Copyright © 2020 raza_s. All rights reserved.
//

import SwiftUI

//func createCardContent(pairIndex: Int) -> String {
//    return "📕"
//}


// Doorway for model with our view

class EmojiMemoryGame {
//    its a class because it is easy to share. However this can be bad because any view can use the models, "private set"
//    solves that problem that only EmojiMemoryGame can play with the model.
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        
        let emojis: Array<String> = ["😈","👻","👹"]
        return MemoryGame<String>(numberOfPairsOfCards:2)  {pairIndex in
        return emojis[pairIndex]
            
        }}
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
//    allows views to access outside world
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}

